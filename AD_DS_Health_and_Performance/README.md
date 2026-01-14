# Changelog 
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