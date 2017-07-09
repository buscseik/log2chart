# log2chart
This module gives tools to generate html based log report from iperf or ping logs.


### Installation
```
Install-Module Log2chart
```
### Usage example
```
Convert-Log2Chart -FileTemplate Test*ping.txt -ReportName OutPutReportName -LogType WindowsWithDate
```

### Suppported input format
* Iperf
```
[  5]   7.00-8.00   sec  7.47 MBytes  62.6 Mbits/sec                  
[  5]   8.00-9.00   sec  7.17 MBytes  60.2 Mbits/sec  
```
* Linux
```
64 bytes from 8.8.8.8: icmp_seq=1 ttl=56 time=16.0 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=56 time=14.8 ms
```

* Windows
```
Reply from 8.8.8.8: bytes=32 time=48ms TTL=45
Reply from 8.8.8.8: bytes=32 time=47ms TTL=45
```
* WindowsWithDate:
```
07.07.2017-15:16:57> Reply from 8.8.8.8: bytes=32 time=48ms TTL=45
07.07.2017-15:16:58> Reply from 8.8.8.8: bytes=32 time=47ms TTL=45
```
### Parameters
* FileTemplate:
Files that matching on defined wildcard will be included in report. 
E.g.: Test*.PingLog.txt
* ListOfFiles:
List of file object.
E.g.: $(ls | Where-Object {$_.Name -like "log*.pinglog.txt"} )
* ReportName:
Defines the name of the generated report.
* Logtype:
There are four options to choose from: Iperf, Linux, Windows and WindowsWithDate.
Make sure to select the corresponding option.
