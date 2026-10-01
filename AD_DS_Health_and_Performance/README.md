# Changelog

## 2.13

Changes apply to the Zabbix 7.0 template.

### Added

- Kerberos Port 88: monitors the local TCP listener using `net.tcp.listen[88]`.
- Average-severity port availability alerts for Kerberos (88 and 464), LDAP (389), LDAPS (636), Global Catalog (3268), and Global Catalog SSL (3269). Each trigger checks whether the third most recent listener value is `0` using `last(...,#3)=0`.
- LDAP Search Load: collects `\NTDS\DS Search sub-operations/sec`.
- An Average-severity LDAP Client Sessions alert when the 15-minute average exceeds 2 times the baseline.
- NTDS Log Path and NTDS DB Path: active agent items that read the database log directory and database file path from the Windows registry every 12 hours, with 7 days of history.

### Changed

- DNS Total Query Received/sec, DS Directory Searches/sec, and LDAP Client Sessions baselines now use the 7-day average instead of 1.1 times the 7-day maximum.
- DNS Total Query Received/sec and DS Directory Searches/sec anomaly alerts now use a 15-minute average exceeding 1.95 times the baseline, replacing the maximum of the last three values compared directly with the baseline.
- The Warning-severity LDAP Client Sessions anomaly alert now uses a 15-minute average exceeding 1.5 times the baseline and depends on the new Average-severity alert.
- Added dependencies from the LDAP Bind Time > 20ms alert to the > 30ms alert, and from the Warning-severity ATQ Thread Exhaustion alert to its Average-severity counterpart.
- Renamed `LDAPS Port 636` to `LDAP SSL Port 636` and `Global Catalog Port 3269` to `Global Catalog SSL Port 3269`.
- Changed the template group from `My Templates` to `Templates`.

### Fixed

- Corrected the Duplicate DNS zones trigger to match DNS event ID 4515 instead of excluding it.

## 2.12

### Added
- Baseline - DS Directory Searches/sec (baseline-dependent)
- DS Directory Searches/sec
- DRA Pending Replication Operations
- DNS Dynamic update timeouts
- DNS Recursive Query Failure/sec
- DNS Rejected dynamic updates
- LSASS Memory
- Netlogon Last Authentication Time

### Changed
- LSASS Processor Time
- Baseline - DNS Total Query Received/sec (baseline-dependent)
- Baseline - LDAP Client Sessions (baseline-dependent)
- *DFS Replication Connections (Bytes Received Per Second)

### Operational note:
Allow 24–48 hours after deployment for baseline values to stabilize before evaluating anomalies or alerts.

## 2.11
Updated:

### Items
- Baseline - DNS Total Query Received/sec
- Baseline - LDAP Client Sessions


## 2.10
Added \ Updated:

### Items
- ATQ Threads Max
- ATQ Outstanding queued requests total
- ATQ Threads total
- Baseline - DNS Total Query Received/sec
- Baseline - LDAP Client Sessions
- Windows Time Computed Time Offset
- Descriptions

### Trigers

- The kerberos client received a KRB_AP_ERR_MODIFIED error
- Time Offset from Source is > 1 minute
- ATQ Thread Exhaustion
- DNS Total Query Received/sec is anomalously high
- LDAP Client Sessions more than baseline
