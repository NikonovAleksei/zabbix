zabbix_export:
  version: '6.0'
  date: '2023-04-18T05:52:32Z'
  groups:
    -
      uuid: b9390195ecad4986968746a2a9b56354
      name: 'My Templates'
  templates:
    -
      uuid: 01548d1b601f4732b8b26c229305e5bf
      template: 'AD DS Health and Performance'
      name: 'AD DS Health and Performance'
      description: |
        Template tooling version used: 2.02
        
        https://github.com/NikonovAleksei/zabbix/
        
        https://t.me/ad_zabbix_templates
      groups:
        -
          name: 'My Templates'
      items:
        -
          uuid: 510bed9780f54dbc94521c1afbd668b0
          name: 'Active Directory Web Services Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[Active Directory Web Services,,"Warning|Error|Critical"]'
          delay: 5m
          history: 1w
          trends: '0'
          value_type: LOG
          tags:
            -
              tag: Application
              value: 'AD DS Events'
          triggers:
            -
              uuid: 09121ac7fa8a4b64b8b6f45acdd64b4d
              expression: 'logseverity(/AD DS Health and Performance/eventlog[Active Directory Web Services,,"Warning|Error|Critical"])>1 and nodata(/AD DS Health and Performance/eventlog[Active Directory Web Services,,"Warning|Error|Critical"],1800s)=0'
              name: 'Active Directory Web Services Error on {HOST.NAME}'
        -
          uuid: 6e038f783e4b44dc81038d0e3c3c7baf
          name: 'DFS Replication Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[DFS Replication,,"Warning|Error|Critical"]'
          delay: 5m
          history: 1w
          trends: '0'
          value_type: LOG
          tags:
            -
              tag: Application
              value: 'AD DS Events'
          triggers:
            -
              uuid: bf64470533d0470895cdebd814a37dc2
              expression: 'logseverity(/AD DS Health and Performance/eventlog[DFS Replication,,"Warning|Error|Critical"])>1 and nodata(/AD DS Health and Performance/eventlog[DFS Replication,,"Warning|Error|Critical"],1800s)=0'
              name: 'DFS Replication Events Error on {HOST.NAME}'
        -
          uuid: 3bc63708ad4340b08d7d50f3d7af7129
          name: 'Directory Service Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[Directory Service,,"Warning|Error|Critical"]'
          delay: 5m
          history: 1w
          trends: '0'
          value_type: LOG
          tags:
            -
              tag: Application
              value: 'AD DS Events'
          triggers:
            -
              uuid: f9e5c67afe0f4aa880c6ca2e11fec90c
              expression: 'logseverity(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"])>1 and nodata(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"],1800s)=0 and logeventid(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"],,"467")=1'
              name: 'AD database corrupted on {HOST.NAME}'
              priority: AVERAGE
            -
              uuid: 79e002ed7b0c4bff92ca5461083c0ba0
              expression: 'logseverity(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"])>1 and nodata(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"],1800s)=0'
              name: 'Directory Service Events Error on {HOST.NAME}'
            -
              uuid: 2a91cf8e09c24cc1a5aea2d19bb1b85d
              expression: 'logseverity(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"])>1 and nodata(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"],1800s)=0 and logeventid(/AD DS Health and Performance/eventlog[Directory Service,,"Warning|Error|Critical"],,"2042")=1'
              recovery_mode: NONE
              name: 'It has been too long since {HOST.NAME} replicated'
              url: 'https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-replication-event-id-2042'
              priority: HIGH
              description: 'If a domain controller has not replicated with its partner for longer than a tombstone lifetime, it is possible that a lingering object problem exists on one or both domain controllers. The tombstone lifetime in an Active Directory forest determines how long a deleted object (called a "tombstone") is retained in Active Directory Domain Services (AD DS). The tombstone lifetime is determined by the value of the tombstoneLifetime attribute on the Directory Service object in the configuration directory partition.'
              manual_close: 'YES'
        -
          uuid: 318dcb7c692947e08f126e056f77827f
          name: 'DNS Server Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[DNS Server,,"Warning|Error|Critical"]'
          delay: 5m
          history: 1w
          trends: '0'
          value_type: LOG
          tags:
            -
              tag: Application
              value: 'AD DS Events'
          triggers:
            -
              uuid: a600b41075964c11a5ddccd0989e3192
              expression: 'logseverity(/AD DS Health and Performance/eventlog[DNS Server,,"Warning|Error|Critical"])>1 and nodata(/AD DS Health and Performance/eventlog[DNS Server,,"Warning|Error|Critical"],1800s)=0'
              name: 'DNS Server Events Error on {HOST.NAME}'
        -
          uuid: 1de63c44a0be46ef92569993c7720515
          name: 'Microsoft-Windows-Backup Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[Microsoft-Windows-Backup,,"Information|Error"]'
          delay: 5m
          trends: '0'
          value_type: LOG
          triggers:
            -
              uuid: a06a5f794847445fbb107e3dd62d3950
              expression: 'logseverity(/AD DS Health and Performance/eventlog[Microsoft-Windows-Backup,,"Information|Error"])>1 and nodata(/AD DS Health and Performance/eventlog[Microsoft-Windows-Backup,,"Information|Error"],1800s)=0 and logeventid(/AD DS Health and Performance/eventlog[Microsoft-Windows-Backup,,"Information|Error"],,"5")=1'
              recovery_mode: NONE
              name: 'The backup operation has failed on {HOST.NAME}'
              priority: HIGH
              manual_close: 'YES'
            -
              uuid: d5af6011bbc545858e93c48aaff3d606
              expression: 'logseverity(/AD DS Health and Performance/eventlog[Microsoft-Windows-Backup,,"Information|Error"])>1 and nodata(/AD DS Health and Performance/eventlog[Microsoft-Windows-Backup,,"Information|Error"],1800s)=0 and logeventid(/AD DS Health and Performance/eventlog[Microsoft-Windows-Backup,,"Information|Error"],,"4")=1'
              name: 'The backup operation has finished successfully on {HOST.NAME}'
              priority: INFO
        -
          uuid: a29d587fe5554b9cbb40f7e693dc44e4
          name: 'Windows Time Service Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[System,"Time-Service","Warning|Error|Critical"]'
          delay: 5m
          history: 1w
          trends: '0'
          value_type: LOG
          tags:
            -
              tag: Application
              value: 'AD DS Events'
        -
          uuid: 1bc801ab1b39417ea4bafcc00291991d
          name: 'NETLOGON Events'
          type: ZABBIX_ACTIVE
          key: 'eventlog[System,,"Error","NETLOGON",^5723$]'
          delay: 5m
          history: 1w
          trends: '0'
          value_type: LOG
          tags:
            -
              tag: Application
              value: 'AD DS Events'
          triggers:
            -
              uuid: 63a97106a4334ac4b4bbc99c86b1dea6
              expression: 'logseverity(/AD DS Health and Performance/eventlog[System,,"Error","NETLOGON",^5723$])>1 and nodata(/AD DS Health and Performance/eventlog[System,,"Error","NETLOGON",^5723$],1800s)=0'
              name: 'Netlogon Error on {HOST.NAME}'
        -
          uuid: 24fd27b171794bc79fdad0e79109f335
          name: 'LogFile (Netlogon)'
          type: ZABBIX_ACTIVE
          key: 'log[c:\windows\debug\netlogon.log,"NO_CLIENT_SITE",,,skip,,,]'
          delay: 5m
          trends: '0'
          value_type: LOG
          logtimefmt: 'MM/ddphh:mm:ss'
          tags:
            -
              tag: Application
              value: 'AD DS Events'
          triggers:
            -
              uuid: 8362ec36534c4256a1b16f35e7bf62a3
              expression: 'nodata(/AD DS Health and Performance/log[c:\windows\debug\netlogon.log,"NO_CLIENT_SITE",,,skip,,,],3600)=0'
              name: 'Active Directory Missing IP Range < - > Site Allocations'
              priority: WARNING
              manual_close: 'YES'
        -
          uuid: 9a9fe288a0fc45f9aef947c52336bb08
          name: MaxConcurrentApi
          type: CALCULATED
          key: MaxConcurrentApi
          delay: 5m
          history: 1w
          value_type: FLOAT
          params: '(last(//perf_counter_en[\Netlogon(_Total)\Semaphore Acquires])+last(//perf_counter_en[\Netlogon(_Total)\Semaphore Timeouts]))*last(//perf_counter_en[\Netlogon(_Total)\Average Semaphore Hold Time])/90'
          description: 'https://learn.microsoft.com/en-us/troubleshoot/windows-server/windows-security/performance-tuning-ntlm-authentication-maxconcurrentapi'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 91dc10e30b9244cc8584124a159d303c
          name: 'LDAP Port is running'
          type: SIMPLE
          key: 'net.tcp.service[ldap]'
          history: 1w
          valuemap:
            name: 'Service state'
          tags:
            -
              tag: Application
              value: 'AD DS Network ports'
          triggers:
            -
              uuid: 261faef601b54be4acc42985f5f3d88f
              expression: 'max(/AD DS Health and Performance/net.tcp.service[ldap],#3)=0'
              name: 'LDAP service is down on {HOST.NAME}'
              priority: AVERAGE
        -
          uuid: 3db6e037983940d9be2c778c5d4bfade
          name: 'I/O Database Reads/sec'
          key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads/sec]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
          triggers:
            -
              uuid: 71807bb6e6d0416fbaa68fb74833be03
              expression: 'min(/AD DS Health and Performance/perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads/sec],5m)>10'
              name: 'I/O Database Reads/sec > 10 on {HOST.NAME}'
              priority: WARNING
        -
          uuid: 7c33e63e882a48148348477a866a7545
          name: 'I/O Database Reads Average Latency'
          key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads Average Latency]'
          history: 1w
          value_type: FLOAT
          units: ms
          description: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads Average Latency]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
          triggers:
            -
              uuid: 4ba50e9ab3c548ed9f7670aaf2d9fc64
              expression: 'min(/AD DS Health and Performance/perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads Average Latency],5m)>15'
              name: 'I/O Database Reads Average Latency > 15ms on {HOST.NAME}'
              priority: WARNING
        -
          uuid: a0714f8bb24a482481d5c84f77962b80
          name: 'I/O Log Writes/sec'
          key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes/sec]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: e95e676378d24f9cb5cfe58da9e24218
          name: 'I/O Log Writes Average Latency'
          key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes Average Latency]'
          history: 1w
          value_type: FLOAT
          units: ms
          description: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes Average Latency]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
          triggers:
            -
              uuid: 611b5fa4963348ac8e79dae0bce0233f
              expression: 'min(/AD DS Health and Performance/perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes Average Latency],5m)>10'
              name: 'I/O Log Writes Average Latency > 10ms on {HOST.NAME}'
              priority: WARNING
        -
          uuid: ccb11bf658ec46b49f8e21d8c7d70862
          name: 'DFS Replicated Folders (Conflict Space In Use)'
          key: 'perf_counter_en[\DFS Replicated Folders(*)\Conflict Space In Use]'
          delay: 5m
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 166510803335410991d6ce07001613af
          name: 'DFS Replicated Folders (RDC Bytes Received)'
          key: 'perf_counter_en[\DFS Replicated Folders(*)\RDC Bytes Received]'
          delay: 5m
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 5830f88357dd402dbb0fc569c2583e89
          name: 'DFS Replicated Folders (Size of Files Received)'
          key: 'perf_counter_en[\DFS Replicated Folders(*)\Size of Files Received]'
          delay: 5m
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 751a5e1b5a304c96a0061c6c7c6540b9
          name: 'DFS Replicated Folders (Total Files Received)'
          key: 'perf_counter_en[\DFS Replicated Folders(*)\Total Files Received]'
          delay: 5m
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: fd3c312d6c944f4c8455a258dbb0ecd5
          name: 'DNS Total Query Received/sec'
          key: 'perf_counter_en[\DNS\Total Query Received/sec]'
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
          triggers:
            -
              uuid: 917b85b5c5434af8b566f192e919aa41
              expression: 'max(/AD DS Health and Performance/perf_counter_en[\DNS\Total Query Received/sec],#3)>5000'
              name: 'DNS Total Query Received/sec >5000'
              opdata: 'Current value: {ITEM.LASTVALUE1}'
              priority: WARNING
            -
              uuid: 26fe1eb903814ec7b226df239ee0f949
              expression: 'max(/AD DS Health and Performance/perf_counter_en[\DNS\Total Query Received/sec],#3)>{$DNS.TOTAL.RECEIVED.MAX.WARN}'
              name: 'DNS Total Query Received/sec is too high'
              opdata: 'Current value: {ITEM.LASTVALUE1}'
              priority: AVERAGE
        -
          uuid: ee208fb7ec8741a4a9ed0dda0c06759d
          name: 'DNS Total Response Sent/sec'
          key: 'perf_counter_en[\DNS\Total Response Sent/sec]'
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: bc2630cd94024fefa3bfefc9b3050606
          name: 'DNS UDP Query Received/sec'
          key: 'perf_counter_en[\DNS\UDP Query Received/sec]'
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 7df8baf26b5448dd810f00bee13eebe0
          name: 'DNS UDP Response Sent/sec'
          key: 'perf_counter_en[\DNS\UDP Response Sent/sec]'
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: eef53313a77a4640a2c6aca1d295ddc1
          name: 'Netlogon Average Semaphore Hold Time'
          key: 'perf_counter_en[\Netlogon(_Total)\Average Semaphore Hold Time]'
          history: 1w
          value_type: FLOAT
          units: s
          description: 'perf_counter_en[\Netlogon(*)\Average Semaphore Hold Time]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
          triggers:
            -
              uuid: d1840f027bc44b2ab786f67dd25e81b5
              expression: 'min(/AD DS Health and Performance/perf_counter_en[\Netlogon(_Total)\Average Semaphore Hold Time],15m)>1'
              name: 'Average Semaphore Hold Time > 1s on {HOST.NAME}'
              priority: WARNING
        -
          uuid: 322ffe2dae1d4a7b8d0c96b435e332f4
          name: 'Netlogon Semaphore Acquires'
          key: 'perf_counter_en[\Netlogon(_Total)\Semaphore Acquires]'
          history: 1w
          value_type: FLOAT
          description: 'perf_counter_en[\Netlogon()\Semaphore Acquires]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 87fc179f037c4983a7e34f3c30d061d3
          name: 'Netlogon Semaphore Timeouts'
          key: 'perf_counter_en[\Netlogon(_Total)\Semaphore Timeouts]'
          history: 1w
          value_type: FLOAT
          description: 'perf_counter_en[\Netlogon()\Semaphore Timeouts]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: e3063ed6bcb242d6ba43b4f3ca117ced
          name: 'DRA Inbound Bytes Total/sec'
          key: 'perf_counter_en[\NTDS\DRA Inbound Bytes Total/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter_en[\NTDA\DRA Inbound Bytes Total/sec]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: edd8fbbf1dd449d495c03a6c895cbdb9
          name: 'DRA Inbound Object Updates Remaining in Packet'
          key: 'perf_counter_en[\NTDS\DRA Inbound Object Updates Remaining in Packet]'
          history: 1w
          value_type: FLOAT
          description: 'perf_counter_en[\NTDA\DRA Inbound Object Updates Remaining in Packet]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: c372fa1cf8404fff9ffcdf1c86497171
          name: 'DRA Outbound Bytes Total/sec'
          key: 'perf_counter_en[\NTDS\DRA Outbound Bytes Total/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter_en[\NTDA\DRA Outbound Bytes Total/sec]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: ec722579ddf44498ae228a54231f0c5f
          name: 'DRA Pending Replication Synchronizations'
          key: 'perf_counter_en[\NTDS\DRA Pending Replication Synchronizations]'
          history: 1w
          value_type: FLOAT
          description: 'perf_counter_en[\NTDA\DRA Pending Replication Synchronizations]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: fe58cbd89ba94e34a70e09603bfda810
          name: 'LDAP Active Threads'
          key: 'perf_counter_en[\NTDS\LDAP Active Threads]'
          history: 1w
          value_type: FLOAT
          description: 'perf_counter_en[\NTDS\LDAP Active Threads]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 27650f6d58c64c0bb07354ec74d636e9
          name: 'LDAP Client Sessions'
          key: 'perf_counter_en[\NTDS\LDAP Client Sessions]'
          history: 1w
          value_type: FLOAT
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 6a7ff5ef860a490b8b1bfd4b3a4cc0a2
          name: 'LDAP New Connections/sec'
          key: 'perf_counter_en[\NTDS\LDAP New Connections/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 2126892ecadd4995aef19854dec4a912
          name: 'LDAP New SSL Connections/sec'
          key: 'perf_counter_en[\NTDS\LDAP New SSL Connections/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 0a0508bd91f146669482a2bdc45749a7
          name: 'LDAP Searches/sec'
          key: 'perf_counter_en[\NTDS\LDAP Searches/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter_en[\NTDS\LDAP Searches/sec]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: fb193d229d3b4757b289c8ad40f09b1a
          name: 'LDAP Writes/sec'
          key: 'perf_counter_en[\NTDS\LDAP Writes/sec]'
          history: 1w
          value_type: FLOAT
          units: /s
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 74f30bad16e44877a869105e6f8bcc52
          name: 'LSASS Processor Time'
          key: 'perf_counter_en[\Process(lsass)\% Processor Time]'
          history: 1w
          value_type: FLOAT
          units: '%'
          description: |
            Metric Process % Processor Time of LSASS
            perf_counter_en[\Process(lsass)\% Processor Time]
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 398955ae5e6745ba84b275862bca1031
          name: 'Kerberos Authentications'
          key: 'perf_counter_en[\Security system-wide statistics\Kerberos Authentications]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter[\Security system-wide statistics\Kerberos Authentications]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: 23535be77abd4eb5a262f9953978cf80
          name: 'NTLM Authentications'
          key: 'perf_counter_en[\Security system-wide statistics\NTLM Authentications]'
          history: 1w
          value_type: FLOAT
          units: /s
          description: 'perf_counter_en[\Security system-wide statistics\NTLM Authentications]'
          tags:
            -
              tag: Application
              value: 'AD DS Performance'
        -
          uuid: e007b544233a44be9ed85e44dfac372e
          name: 'State of service "ADWS" (Active Directory Web Services)'
          key: 'service.info[ADWS,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: a8a2eee271e44c719df1c8d72cc134ca
              expression: 'min(/AD DS Health and Performance/service.info[ADWS,state],#3)<>0'
              name: '"ADWS" (Active Directory Web Services) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: f3ecb9e253c6461ea76380065038691a
          name: 'State of service "DFSR" (DFS Replication)'
          key: 'service.info[DFSR,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: 371ead681bae4929b73b4d65226bc082
              expression: 'min(/AD DS Health and Performance/service.info[DFSR,state],#3)<>0'
              name: '"DFSR" (DFS Replication) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: d24b0eacadee48d489d32a01f17dd08f
          name: 'State of service "DNS" (DNS Server)'
          key: 'service.info[DNS,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: 9097e62875fb45a7bf1b9f79d5156239
              expression: 'min(/AD DS Health and Performance/service.info[DNS,state],#3)<>0'
              name: '"DNS" (DNS Server) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 4e64610f63084ea4848725a0dbad3e1c
          name: 'State of service "Dnscache" (DNS Client)'
          key: 'service.info[Dnscache,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: 5a10432749cd4a7ab6f8d192bb5bd222
              expression: 'min(/AD DS Health and Performance/service.info[Dnscache,state],#3)<>0'
              name: '"Dnscache" (DNS Client) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 3b2c1878d0d0457cacd23e66bb03372f
          name: 'State of service "IsmServ" (Intersite Messaging)'
          key: 'service.info[IsmServ,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: ce2622fb36554d82b66e0c46c4b6fbd1
              expression: 'min(/AD DS Health and Performance/service.info[IsmServ,state],#3)<>0'
              name: '"IsmServ" (Intersite Messaging) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 471d8f66c77440c688130a9bdda37237
          name: 'State of service "Kdc" (Kerberos Key Distribution Center)'
          key: 'service.info[Kdc,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: 895be104e2f14c9e98c6690a751de807
              expression: 'min(/AD DS Health and Performance/service.info[Kdc,state],#3)<>0'
              name: '"Kdc" (Kerberos Key Distribution Center) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: abe4419278df46919650a2c7fb2529dc
          name: 'State of service "LanmanServer" (Server)'
          key: 'service.info[LanmanServer,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: 0afc16b4bfed4c4ebb2aa6834b531c41
              expression: 'min(/AD DS Health and Performance/service.info[LanmanServer,state],#3)<>0'
              name: '"LanmanServer" (Server) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: d7703e9177ed4bb3b39a26ffd4a05d01
          name: 'State of service "LanmanWorkstation" (Workstation)'
          key: 'service.info[LanmanWorkstation,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: bb91058e225146e9a9e4e9766c5b1b06
              expression: 'min(/AD DS Health and Performance/service.info[LanmanWorkstation,state],#3)<>0'
              name: '"LanmanWorkstation" (Workstation) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: b4211d9f04584ecd82347bd0d6b2f8a2
          name: 'State of service "Netlogon" (Netlogon)'
          key: 'service.info[Netlogon,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: f1895bf3a38e4c048b80ebdd913f4770
              expression: 'min(/AD DS Health and Performance/service.info[Netlogon,state],#3)<>0'
              name: '"Netlogon" (Netlogon) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 0fcaf720a8db467192cbec1f5563ed58
          name: 'State of service "NTDS" (Active Directory Domain Services)'
          key: 'service.info[NTDS,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: b42db952b21e4019a09f5fca8d6be49d
              expression: 'min(/AD DS Health and Performance/service.info[NTDS,state],#3)<>0'
              name: '"NTDS" (Active Directory Domain Services) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 8117eba15a204854b3ac605add3ee3ec
          name: 'State of service "RpcSs" (Remote Procedure Call (RPC))'
          key: 'service.info[RpcSs,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: db76b01249334eb4911984f9ae4c52dc
              expression: 'min(/AD DS Health and Performance/service.info[RpcSs,state],#3)<>0'
              name: '"RpcSs" (Remote Procedure Call (RPC)) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 05f4a569578c407cb0b23e52eba2f866
          name: 'State of service "SamSs" (Security Accounts Manager)'
          key: 'service.info[SamSs,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: 82bbbb1b26ae43a1b5e26d5d0079c7b1
              expression: 'min(/AD DS Health and Performance/service.info[SamSs,state],#3)<>0'
              name: '"SamSs" (Security Accounts Manager) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: bd16befae95d43e88908648d833e1b83
          name: 'State of service "W32Time" (Windows Time)'
          key: 'service.info[W32Time,state]'
          history: 1d
          valuemap:
            name: 'Windows service state'
          tags:
            -
              tag: Application
              value: 'AD DS Services'
          triggers:
            -
              uuid: cde0194677d94601a9a15d7bf5a62cb4
              expression: 'min(/AD DS Health and Performance/service.info[W32Time,state],#3)<>0'
              name: '"W32Time" (Windows Time) is not running'
              priority: AVERAGE
              description: 'The service has a state other than "Running" for the last three times.'
        -
          uuid: 470f2bbce13b45bba53e816e843af348
          name: 'SYSVOL Size'
          key: 'vfs.dir.size["{$ADSYSVOL_PATH}"]'
          delay: 12h
          history: 1w
          units: Bytes
          tags:
            -
              tag: Application
              value: 'AD DS Storage'
        -
          uuid: ba3ea33ddbe0483aa1dd88c68b1e517b
          name: 'Database Size'
          key: 'vfs.file.size["{$ADDB_PATH}"]'
          delay: 1h
          history: 1w
          units: Bytes
          tags:
            -
              tag: Application
              value: 'AD DS Storage'
        -
          uuid: dc3cc0c66aa145c1bceab822e32c6556
          name: 'Log File Size'
          key: 'vfs.file.size["{$ADLOG_PATH}"]'
          delay: 1h
          history: 1w
          units: Bytes
          tags:
            -
              tag: Application
              value: 'AD DS Storage'
      macros:
        -
          macro: '{$ADDB_PATH}'
          value: 'c:\windows\ntds\ntds.dit'
        -
          macro: '{$ADLOG_PATH}'
          value: 'c:\windows\ntds\edb.log'
        -
          macro: '{$ADSYSVOL_PATH}'
          value: 'c:\windows\SYSVOL'
        -
          macro: '{$DNS.TOTAL.RECEIVED.MAX.WARN}'
          value: '1000'
          description: baseline
      dashboards:
        -
          uuid: 4a4228994faa45e986d06e13aa970d5d
          name: 'AD DS Health and Performance'
          pages:
            -
              name: Main
              widgets:
                -
                  type: GRAPH_CLASSIC
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'AD DS DB and Log Size'
                -
                  type: GRAPH_CLASSIC
                  x: '12'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'LSASS Processor Time'
                -
                  type: GRAPH_CLASSIC
                  'y': '5'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'AD DS Authentications'
                -
                  type: GRAPH_CLASSIC
                  x: '12'
                  'y': '5'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'LDAP Statistics'
                -
                  type: GRAPH_CLASSIC
                  'y': '15'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'Database ==> Instances Statistics'
                -
                  type: GRAPH_CLASSIC
                  x: '12'
                  'y': '10'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'DRA Statistics'
                -
                  type: GRAPH_CLASSIC
                  'y': '10'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'DNS Statistics'
            -
              name: 'LDAP Statistics'
              display_period: '60'
              widgets:
                -
                  type: GRAPH_CLASSIC
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'LDAP Statistics'
                -
                  type: GRAPH_CLASSIC
                  x: '12'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'LDAP Statistics of Connections Type'
            -
              name: NetLogon
              widgets:
                -
                  type: GRAPH_CLASSIC
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: NetLogon
                -
                  type: GRAPH_CLASSIC
                  x: '12'
                  width: '12'
                  height: '5'
                  fields:
                    -
                      type: GRAPH
                      name: graphid
                      value:
                        host: 'AD DS Health and Performance'
                        name: 'AD DS Authentications'
            -
              name: DFSR
      valuemaps:
        -
          uuid: 7d7a9ff770b0415781bbc49c400a60ed
          name: 'Service state'
          mappings:
            -
              value: '0'
              newvalue: Down
            -
              value: '1'
              newvalue: Up
        -
          uuid: 533232df55a847d4861fd1dd95d73baa
          name: 'Windows service state'
          mappings:
            -
              value: '0'
              newvalue: Running
            -
              value: '1'
              newvalue: Paused
            -
              value: '2'
              newvalue: 'Start pending'
            -
              value: '3'
              newvalue: 'Pause pending'
            -
              value: '4'
              newvalue: 'Continue pending'
            -
              value: '5'
              newvalue: 'Stop pending'
            -
              value: '6'
              newvalue: Stopped
            -
              value: '7'
              newvalue: Unknown
            -
              value: '255'
              newvalue: 'No such service'
  graphs:
    -
      uuid: e0e4a9ff9ece4fa6b353ea55412f6763
      name: 'AD DS Authentications'
      ymin_type_1: FIXED
      graph_items:
        -
          color: 1A7C11
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Security system-wide statistics\Kerberos Authentications]'
        -
          sortorder: '1'
          color: F63100
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Security system-wide statistics\NTLM Authentications]'
    -
      uuid: bc99aef7310540cfa51279096b10d1ec
      name: 'AD DS DB and Log Size'
      ymin_type_1: FIXED
      graph_items:
        -
          color: 1A7C11
          item:
            host: 'AD DS Health and Performance'
            key: 'vfs.file.size["{$ADDB_PATH}"]'
        -
          sortorder: '1'
          color: F63100
          item:
            host: 'AD DS Health and Performance'
            key: 'vfs.file.size["{$ADLOG_PATH}"]'
    -
      uuid: d2bf271b0e4d4a33af6ffb19f8e289f2
      name: 'Database ==> Instances Statistics'
      ymin_type_1: FIXED
      graph_items:
        -
          color: 1A7C11
          yaxisside: RIGHT
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads/sec]'
        -
          sortorder: '1'
          color: F63100
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Database Reads Average Latency]'
        -
          sortorder: '2'
          color: 2774A4
          yaxisside: RIGHT
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes/sec]'
        -
          sortorder: '3'
          color: A54F10
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Database ==> Instances(lsass/NTDSA)\I/O Log Writes Average Latency]'
    -
      uuid: c82983dceaa142ba9a9307cd0963f2ce
      name: 'DNS Statistics'
      ymin_type_1: FIXED
      graph_items:
        -
          color: 00FF00
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\DNS\Total Query Received/sec]'
        -
          sortorder: '1'
          color: FF4000
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\DNS\Total Response Sent/sec]'
        -
          sortorder: '2'
          color: 81C784
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\DNS\UDP Query Received/sec]'
        -
          sortorder: '3'
          color: FFAB91
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\DNS\UDP Response Sent/sec]'
    -
      uuid: 8abeb5f241e14635a3ba13d12fed6b07
      name: 'DRA Statistics'
      ymin_type_1: FIXED
      graph_items:
        -
          color: 1A7C11
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\DRA Inbound Object Updates Remaining in Packet]'
        -
          sortorder: '1'
          color: F63100
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\DRA Pending Replication Synchronizations]'
        -
          sortorder: '2'
          color: 2774A4
          yaxisside: RIGHT
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\DRA Inbound Bytes Total/sec]'
        -
          sortorder: '3'
          color: A54F10
          yaxisside: RIGHT
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\DRA Outbound Bytes Total/sec]'
    -
      uuid: 2833f9419ee542f794a3d78a22761661
      name: 'LDAP Statistics'
      ymin_type_1: FIXED
      graph_items:
        -
          color: 1A7C11
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\LDAP Client Sessions]'
        -
          sortorder: '1'
          color: F63100
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\LDAP Searches/sec]'
        -
          sortorder: '2'
          color: 2774A4
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\LDAP Writes/sec]'
    -
      uuid: 91df9727746a42ec867177f5314aabf5
      name: 'LDAP Statistics of Connections Type'
      ymin_type_1: FIXED
      graph_items:
        -
          color: FF0000
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\LDAP New Connections/sec]'
        -
          sortorder: '1'
          color: 00FF00
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\NTDS\LDAP New SSL Connections/sec]'
    -
      uuid: 884320ad4d09490bafa58242da0fdc9a
      name: 'LSASS Processor Time'
      show_work_period: 'NO'
      show_triggers: 'NO'
      show_legend: 'NO'
      ymin_type_1: FIXED
      ymax_type_1: FIXED
      graph_items:
        -
          drawtype: FILLED_REGION
          color: 1A7C11
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Process(lsass)\% Processor Time]'
    -
      uuid: e18badff90144a639a25836bfa0f78d2
      name: NetLogon
      ymin_type_1: FIXED
      graph_items:
        -
          color: 199C0D
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Netlogon(_Total)\Average Semaphore Hold Time]'
        -
          sortorder: '1'
          color: F63100
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Netlogon(_Total)\Semaphore Acquires]'
        -
          sortorder: '2'
          color: 2774A4
          yaxisside: RIGHT
          calc_fnc: ALL
          item:
            host: 'AD DS Health and Performance'
            key: 'perf_counter_en[\Netlogon(_Total)\Semaphore Timeouts]'
