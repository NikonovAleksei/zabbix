﻿function convertto-encoding ([string]$from, [string]$to){
	begin{
		$encfrom = [system.text.encoding]::getencoding($from)
		$encto = [system.text.encoding]::getencoding($to)
	}
	process{
		$bytes = $encto.getbytes($_)
		$bytes = [system.text.encoding]::convert($encfrom, $encto, $bytes)
		$encto.getstring($bytes)
	}
}

#Задаем переменные для подключение к MSSQL. $uid и $pwd нужны для проверки подлинности windows / We define the variables for connecting to MS SQL. $uid и $pwd need to authenticate windows
$SQLServer = "localhost\MSSQL2017" #use Server\Instance for named SQL instances!
#$uid = "user" 
#$pwd = "password"

#Создаем подключение к MSSQL / Create a connection to MSSQL

#Если проверка подлинности windows / If windows authentication
#$connectionString = "Server = $SQLServer; User ID = $uid; Password = $pwd;"

#Если Интегрированная проверка подлинности / If integrated authentication
$connectionString = "Server = $SQLServer; Integrated Security = True;"

$connection = New-Object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString
$connection.Open()

#Создаем запрос непосредственно к MSSQL / Create a request directly to MSSQL
$SqlCmd = New-Object System.Data.SqlClient.SqlCommand  
$SqlCmd.CommandText = "SELECT name FROM  sysdatabases"
$SqlCmd.Connection = $Connection
$SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
$SqlAdapter.SelectCommand = $SqlCmd
$DataSet = New-Object System.Data.DataSet
$SqlAdapter.Fill($DataSet) > $null
$Connection.Close()

#Получили список баз. Записываем в переменную. / We get a list of databases. Write to the variable.
$basename = $DataSet.Tables[0]


$idx = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($name in $basename)
{
    if ($idx -lt $basename.Rows.Count)
        {
            $line= "{ `"{#DBS}`" : `"" + $name.name + "`" }," | convertto-encoding "cp866" "utf-8"
            write-host $line
        }
    elseif ($idx -ge $basename.Rows.Count)
        {
            $line= "{ `"{#DBS}`" : `"" + $name.name + "`" }" | convertto-encoding "cp866" "utf-8"
            write-host $line
        }
    $idx++;
}

 write-host
write-host " ]"
write-host "}"