#=====================================Chart Generator=============================================
$PingTemplateWindowsWithDate=@"
{TimeStamp*:17.05.2017-14:49:49}> Reply from {Target:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:6}ms TTL={TTL:57}
{TimeStamp*:17.05.2017-14:49:50}> Reply from {Target:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:7}ms TTL={TTL:57}
{TimeStamp*:17.05.2017-14:49:51}> Reply from {Target:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:7}ms TTL={TTL:57}
{TimeStamp*:17.05.2017-14:49:52}> Reply from {Target:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:7}ms TTL={TTL:57}
{TimeStamp*:17.05.2017-15:30:20}> General failure.
{TimeStamp*:17.05.2017-15:30:21}> General failure.
{TimeStamp*:17.05.2017-15:30:22}> General failure.
{TimeStamp*:17.05.2017-15:31:12}> Request timed out.
{TimeStamp*:05.07.2017-10:13:16}> Reply from {Target:192.168.2.213}: Destination host unreachable.
{TimeStamp*:17.05.2017-15:48:56}> Reply from {Target:192.168.0.1}: bytes={PackageSize:32} time<{RespondTime:1}ms TTL={TTL:64}
{TimeStamp*:05.07.2017-10:16:56}>
{TimeStamp*:05.07.2017-10:16:56}> Ping statistics for 82.195.132.92:
{TimeStamp*:05.07.2017-10:16:56}>     Packets: Sent = 150, Received = 144, Lost = 6 (4% loss),
{TimeStamp*:05.07.2017-10:16:56}> Approximate round trip times in milli-seconds:
{TimeStamp*:05.07.2017-10:16:56}>     Minimum = 24ms, Maximum = 240ms, Average = 49ms
"@

$PingTemplateWindows=@"
Reply from {Target*:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:6}ms TTL={TTL:57}
Reply from {Target*:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:7}ms TTL={TTL:57}
Reply from {Target*:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:7}ms TTL={TTL:57}
Reply from {Target*:8.8.8.8}: bytes={PackageSize:32} time={RespondTime:7}ms TTL={TTL:57}
General failure.
General failure.
General failure.
Request timed out.
Reply from {Target*:192.168.2.213}: Destination host unreachable.
Reply from {Target*:192.168.0.1}: bytes={PackageSize:32} time<{RespondTime:1}ms TTL={TTL:64}

Ping statistics for 82.195.132.92:
    Packets: Sent = 150, Received = 144, Lost = 6 (4% loss),
Approximate round trip times in milli-seconds:
    Minimum = 24ms, Maximum = 240ms, Average = 49ms
"@

$PingTemplateLinux=@"
--- {Target*:8.8.8.8} ping statistics ---
421 packets transmitted, 421 received, 0% packet loss, time 448507ms
rtt min/avg/max/mdev = 5.976/7.380/13.072/0.791 ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:25} ttl=113 time={RespondTime:23.2} ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:26} ttl=113 time={RespondTime:24.1} ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:27} ttl=113 time={RespondTime:23.7} ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:38} ttl=113 time={RespondTime:25.3} ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:39} ttl=113 time={RespondTime:23.2} ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:40} ttl=113 time={RespondTime:24.4} ms
64 bytes from rookie-92.fusio.net ({Target*:82.195.132.92}): icmp_seq={Sequence:41} ttl=113 time={RespondTime:24.0} ms
64 bytes from {Target*:8.8.8.8}: icmp_seq={Sequence:1} ttl=57 time={RespondTime:8.05} ms
64 bytes from {Target*:8.8.8.8}: icmp_seq={Sequence:2} ttl=57 time={RespondTime:7.84} ms
From {Target*:192.168.0.31} icmp_seq={Sequence:1} Destination Host Unreachable

"@

$IperfTemplate=@"
[160]  {CurrentTime*:1}.0- 2.0 sec  9.02 MBytes  {CurrentSpeed:75.7} Mbits/sec
[160]  {CurrentTime*:2}.0- 3.0 sec  8.98 MBytes  {CurrentSpeed:75.4} Mbits/sec
[160]  {CurrentTime*:3}.0- 4.0 sec  9.03 MBytes  {CurrentSpeed:75.8} Mbits/sec
[160]  {CurrentTime*:4}.0- 5.0 sec  9.05 MBytes  {CurrentSpeed:75.9} Mbits/sec
[160]  {CurrentTime*:5}.0- 6.0 sec  9.02 MBytes  {CurrentSpeed:75.7} Mbits/sec
[160]  {CurrentTime*:6}.0- 7.0 sec  9.00 MBytes  {CurrentSpeed:75.5} Mbits/sec
[160]  {CurrentTime*:7}.0- 8.0 sec  9.04 MBytes  {CurrentSpeed:75.8} Mbits/sec 
[  5]   {CurrentTime*:0}.00-1.00   sec  16.7 MBytes   {CurrentSpeed:140} Mbits/sec                  
[  5]   {CurrentTime*:1}.00-2.00   sec  16.1 MBytes   {CurrentSpeed:135} Mbits/sec                  
[  5]   {CurrentTime*:2}.00-3.00   sec  16.1 MBytes   {CurrentSpeed:135} Mbits/sec                  
[  5]   {CurrentTime*:3}.00-4.00   sec  15.7 MBytes   {CurrentSpeed:132} Mbits/sec                  
[  5]   {CurrentTime*:4}.00-5.00   sec  16.0 MBytes   {CurrentSpeed:134} Mbits/sec                  
[  5]   {CurrentTime*:5}.00-6.00   sec  15.8 MBytes   {CurrentSpeed:133} Mbits/sec                  
[  5]   {CurrentTime*:6}.00-7.00   sec  15.9 MBytes   {CurrentSpeed:134} Mbits/sec                  
[  5]   {CurrentTime*:7}.00-8.00   sec  16.0 MBytes   {CurrentSpeed:134} Mbits/sec
[  5]   {CurrentTime*:8}.00-9.00   sec  17.1 MBytes   {CurrentSpeed:144} Mbits/sec                  
[  5]   {CurrentTime*:9}.00-10.00  sec  17.2 MBytes   {CurrentSpeed:145} Mbits/sec                  
[  5]  {CurrentTime*:10}.00-11.00  sec  17.0 MBytes   {CurrentSpeed:142} Mbits/sec                  
[  5]  {CurrentTime*:11}.00-12.00  sec  17.4 MBytes   {CurrentSpeed:146} Mbits/sec                  
[  5]  {CurrentTime*:12}.00-13.00  sec  17.5 MBytes   {CurrentSpeed:147} Mbits/sec                  
[  5]  {CurrentTime*:13}.00-14.00  sec  17.2 MBytes   {CurrentSpeed:145} Mbits/sec                  
[  5]  {CurrentTime*:14}.00-15.00  sec  17.0 MBytes   {CurrentSpeed:143} Mbits/sec                  
[  5]  {CurrentTime*:15}.00-16.00  sec  17.1 MBytes   {CurrentSpeed:144} Mbits/sec                  
[  5]  {CurrentTime*:16}.00-17.00  sec  17.5 MBytes   {CurrentSpeed:147} Mbits/sec                  
[  5]  {CurrentTime*:17}.00-18.00  sec  17.2 MBytes   {CurrentSpeed:145} Mbits/sec                  
[  5]  {CurrentTime*:18}.00-19.00  sec  17.2 MBytes   {CurrentSpeed:145} Mbits/sec                  
[  5]  {CurrentTime*:19}.00-20.00  sec  17.4 MBytes   {CurrentSpeed:146} Mbits/sec      

[  5] {LocalString*:local 192.168.0.16} port 63867 connected to 192.168.0.15 port 5001
[  5]   {CurrentTime*:1}.00-2.00   sec  11.9 MBytes  {CurrentSpeed:99.7} Mbits/sec  1519  
[  5]   {CurrentTime*:2}.00-3.00   sec  11.7 MBytes  {CurrentSpeed:98.4} Mbits/sec  1502  
[  5]   {CurrentTime*:3}.00-4.00   sec  12.1 MBytes   {CurrentSpeed:101} Mbits/sec  1544  
[  5]   {CurrentTime*:4}.00-5.00   sec  10.8 MBytes  {CurrentSpeed:90.9} Mbits/sec  1388  
[  5]   {CurrentTime*:5}.00-6.00   sec  11.9 MBytes   {CurrentSpeed:100} Mbits/sec  1529  
[  5]   {CurrentTime*:6}.00-7.00   sec  11.9 MBytes   {CurrentSpeed:100} Mbits/sec  1528  
[  5]   {CurrentTime*:7}.00-8.00   sec  12.0 MBytes   {CurrentSpeed:101} Mbits/sec  1537  
[  5]  {CurrentTime*:36}.00-37.00  sec  11.5 MBytes  {CurrentSpeed:96.5} Mbits/sec  0.286 ms  56/1529 (3.7%)  
[  5]  {CurrentTime*:37}.00-38.00  sec  11.9 MBytes   {CurrentSpeed:100} Mbits/sec  0.226 ms  25/1551 (1.6%)  
[  5]  {CurrentTime*:38}.00-39.00  sec  11.3 MBytes  {CurrentSpeed:95.1} Mbits/sec  0.131 ms  0/1451 (0%)  
[  5]  {CurrentTime*:39}.00-40.00  sec  12.0 MBytes   {CurrentSpeed:100} Mbits/sec  0.195 ms  73/1604 (4.6%)  
[  5]  {CurrentTime*:40}.00-41.00  sec  11.2 MBytes  {CurrentSpeed:94.3} Mbits/sec  0.323 ms  56/1495 (3.7%)  
iperf3: OUT OF ORDER - incoming packet = 2729 and received packet = 63601 AND SP = 5
iperf3: OUT OF ORDER - incoming packet = 3035 and received packet = 63897 AND SP = 5
[  5]  {CurrentTime*:41}.00-42.00  sec  11.8 MBytes  {CurrentSpeed:98.5} Mbits/sec  0.207 ms  48/1550 (3.1%)  
iperf3: OUT OF ORDER - incoming packet = 3340 and received packet = 64212 AND SP = 5
iperf3: OUT OF ORDER - incoming packet = 3492 and received packet = 64350 AND SP = 5
iperf3: OUT OF ORDER - incoming packet = 3644 and received packet = 64492 AND SP = 5

"@



function Extract-PingLogData()
{

#This function will collect required information from ping long.
#Will return a list of object that contain Time and Respondtime



    param($PingLog, $PingTemplate,
        [ValidateSet('Windows','WindowsWithDate','Linux','Iperf')]
        [Parameter(Mandatory=$false, HelpMessage="Option to choose between Log types.")]
        [string]$LogType="Windows"
    )

    if($LogType -eq "WindowsWithDate")
    {
        $PingLog | ConvertFrom-String -TemplateContent $PingTemplate | 
        %{
            if($_.RespondTime -ne $null)
            {
                [pscustomobject]@{
                Time=$_.TimeStamp
                RespondTime=$_.RespondTime
                }
            }
            else
            {
                [pscustomobject]@{
                Time=$_.TimeStamp
                RespondTime=0
                }
            }
        }
     }
    if($LogType -eq "Windows")
    {
        $PingLog | ConvertFrom-String -TemplateContent $PingTemplate | 
        %{
            if($_.RespondTime -ne $null)
            {
                [pscustomobject]@{RespondTime=$_.RespondTime}
            }
            else
            {
                [pscustomobject]@{RespondTime=0}
            }
        } 
     }
    if($LogType -eq "Linux")
    {
        $PingLog | ConvertFrom-String -TemplateContent $PingTemplate | 
        %{
            if($_.RespondTime -ne $null -and $_.Sequence -ne $null)
            {
                [pscustomobject]@{Sequence=$_.Sequence; RespondTime=$_.RespondTime}
            }
        } 
    }
    if($LogType -eq "Iperf")
    {
        $PingLog | ConvertFrom-String -TemplateContent $PingTemplate | 
        %{
            if($_.CurrentTime -ne $null -and $_.CurrentSpeed -ne $null)
            {
                [pscustomobject]@{CurrentTime=$_.CurrentTime; CurrentSpeed=$_.CurrentSpeed}
            }
        } 
    }     
     
}



function Convert-ToChartData()
{
    param($rawData, $ChartIndex,
        [ValidateSet('Windows','WindowsWithDate','Linux','Iperf')]
        [Parameter(Mandatory=$false, HelpMessage="Option to choose between Log types.")]
        [string]$LogType="Windows"
    )

#This function will convert raw object to format that was required by chart.
#output example:
#data2.addRow([new Date(2017, 05, 18, 09, 30, 05, 00),0]);  data2.addRow([new Date(2017, 05, 18, 09, 30, 05, 00),0]);  data2.addRow([new Date(2017, 05, 18, 09, 30, 05, 00),7]);



    #[new Date(2017, 05, 17, 15, 48, 45,  00), 1, 7]); 
    #$var2=[datetime]::ParseExact($var,"dd.MM.yyyy-HH:mm:ss",$null)
    #data0.addRow([new Date(2017, 05, 17, 15, 48, 45,  00), 1, 7]); 
    #get-date $var2 -format "yyyy, MM, dd, HH, mm, ss"
    if($LogType -eq "WindowsWithDate")
    {
        foreach ($nextPingInfo in $rawData)
        {
            $nextDate=[datetime]::ParseExact($nextPingInfo.Time,"dd.MM.yyyy-HH:mm:ss",$null)
            $newFormatNextDate=get-date $nextDate -format "yyyy, MM, dd, HH, mm, ss"
        
            "data{2}.addRow([new Date({0}, 00),{1}]); " -f $newFormatNextDate,$nextPingInfo.RespondTime, $ChartIndex
        }
    }
    if($LogType -eq "Windows")
    {
        $Counter=0
        foreach ($nextPingInfo in $rawData)
        {
            "data{2}.addRow([{0},{1}]); " -f $Counter,$nextPingInfo.RespondTime, $ChartIndex
            $Counter++
        }
    }
    if($LogType -eq "Linux")
    {
        foreach ($nextPingInfo in $rawData)
        {
            "data{2}.addRow([{0},{1}]); " -f $nextPingInfo.Sequence,$nextPingInfo.RespondTime, $ChartIndex
        }
    }
    if($LogType -eq "Iperf")
    {
        foreach ($nextPingInfo in $rawData)
        {
            "data{2}.addRow([{0},{1}]); " -f $nextPingInfo.CurrentTime,$nextPingInfo.CurrentSpeed, $ChartIndex
        }
    }
    
}

function Generate-DataWithDefinition()
{
#This function will call Convert-ToChartData function on all ping log files and build up proper data  for chart
#Output example:
#
#var data0 = new google.visualization.DataTable();
#data0.addColumn('date', 'time');
#data0.addColumn('number', 'Ping result');
#data0.addRow([new Date(2017, 05, 18, 09, 30, 05, 00),0]);  data0.addRow([new Date(2017, 05, 18, 09, 30, 05, 00),0]);  data0.addRow([new Date(2017, 05, 18, 09, 30, 05, 00),8]); 
#var graph0 = new links.Graph(document.getElementById('mygraph0'));



    param($listOfName,
        [ValidateSet('Windows','WindowsWithDate','Linux','Iperf')]
        [Parameter(Mandatory=$false, HelpMessage="Option to choose between Log types.")]
        [string]$LogType="Windows",
        $ChartIndex
    )

    $Output=""
    if($ChartIndex -ne $null)
    {
        $counter=$ChartIndex

    }
    else
    {    
        $counter=0
    }
    
    
    #Set correct ping template
    if($LogType -eq "Windows")
    {
        $Template=$PingTemplateWindows
    }elseif($LogType -eq "WindowsWithDate")
    {
        $Template=$PingTemplateWindowsWithDate
    }
    elseif($LogType -eq "Linux")
    {
        $Template=$PingTemplateLinux
    }
    elseif($LogType -eq "Iperf")
    {
        $Template=$IperfTemplate
    }


    foreach ($nextName in $listOfName)
    {
        try
        {
            if($LogType -eq "Iperf")
            {
                $rawData=Extract-PingLogData $(Get-Content $nextName | select -Skip 4 | select -SkipLast 6) -PingTemplate $Template -LogType $LogType
            }
            else
            {
                $rawData=Extract-PingLogData $(Get-Content $nextName) -PingTemplate $Template -LogType $LogType
            }
        }catch
        {
            Write-Host "An issue occured during log processing of $nextName, please check did you set the correct logtype." -ForegroundColor DarkYellow
        }
        $ChartData=Convert-ToChartData $rawData $counter -LogType $LogType
        

        $BaseGraphType="number"
        if($LogType -eq "WindowsWithDate"){$BaseGraphType="date"}

        $HeaderName="Ping Result"
        if($LogType -eq "Iperf"){$HeaderName="Speed Result"}


        $Output+=@"
var data$counter = new google.visualization.DataTable();
data$counter.addColumn('$BaseGraphType', 'time');
data$counter.addColumn('number', '$HeaderName');
$ChartData
var graph$counter = new links.Graph(document.getElementById('mygraph$counter'));


"@
        $counter++
    }


    return $Output

}


function Generate-Target()
{

    param($listOfName, $index)
    $Output=""
    if($index -ne $null)
    {
        $counter=$index
    }
    else
    {
        $counter=0
    }


    foreach ($nextName in $listOfName)
    {
        $Output+=@"
<div class="col-sm-12 box-header">
	<span>$($nextName.Name)</span>
</div>
<div class="box-body inner">
	
	<div id="mygraph$counter" class="span9"></div>
</div>




"@
        $counter++
    }


    return $Output


}


function Generate-HTMLChartInitiator()
{
#This function will generate the Graph java script initiator
#ouput example:
#
#graph0.draw(data0, options);graph1.draw(data1, options);



    param($listOfName, $ChartIndex)
    $Output=""
    if($ChartIndex -ne $null)
    {
        $counter=$ChartIndex
    }
    else
    {
        $counter=0
    }
    foreach ($nextName in $listOfName)
    {
        $Output+=@"
graph$counter.draw(data$counter, options);
"@
        $counter++
    }


    return $Output
}

function Generate-HtmlChart()
{
#This function will inject generated data to html frame
    param($DataLines,$TargetDiv,$GraphInitiater)



    $template=@"
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		body{
			background-color: #EEEEEE;	
		}
		.margin-top-25{
			margin-top:25px;
		}
		.tablinks:hover{
			background-color: #2F3640!important;
		}
		.widget i{
			margin-bottom: 5px;
		}
		.widget{
			height: 74px;
			width: calc( (100% / 5) - 3.3px);
			display: inline-block;
			text-align: center;
			color:#fff;
			padding-top:12.5px;
			font-size: 14px;
			font-weight: lighter;
		}
		.widget.summary{
			background-color: #28b779;
		}
		.widget.list{
			background-color: #27a9e3;
		}
		.widget.chart{
			background-color: #da542e;
		}
		.widget.file{
			background-color: #2255a4;
		}
		.widget.all{
			background-color: #da542e;
		}
		.widgets{
			padding-bottom: 10px;
			border-bottom: solid 1px #ddd;
			margin-bottom: 50px
		}
		.tcontent{
			display:none;
			padding: 0px;
			font-family: 'Open Sans',sans-serif;
		}
		.modal-content{
			box-shadow: none;
			border-radius: 0px;
		}
		.box-header{
			border:solid 1px #cdcdcd;
			height: 36px;
			padding:0px;
			color: #666;
			font-size: 12px;
			line-height: 36px;
			font-weight: bold;
			background-color: #eee;
		}
		.box-header span{
			margin-left:10px;
		}
		.box-header i{
			display: inline;
			padding: 11px 12px;	
			height: 100%;
			border-right: solid 1px #cdcdcd;
		}
		.box-body{
			border:solid 1px #cdcdcd;
			background-color: #fff;
			padding:30px 15px;
		}
		.outer, .inner{
			padding: 60px 15px 30px 15px;
		}
		.inner{
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
<div class="container-fluid col-sm-8 col-sm-offset-2 margin-top-25" >

	<div id="summary" class="tcontent row" style="display:block">
		<div class="col-sm-12 box-header">
			<i class="fa fa-inbox " aria-hidden="true"></i>
			<span>Summary</span>
		</div>
		<div class="box-body outer">
				
				
				
				
				
$TargetDiv	
				
				
				
				
		</div>
	</div>

	
</div>


  
  <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript" src="http://almende.github.io/chap-links-library/js/graph/graph.js"></script>
	
	
    <link rel="stylesheet" type="text/css" href="http://almende.github.io/chap-links-library/js/graph/graph.css"> 
	

    <script type="text/javascript">
		
      google.load("visualization", "1");

      // Set callback to run when API is loaded
      google.setOnLoadCallback(drawVisualization);
		
      // Called when the Visualization API is loaded.
      function drawVisualization() {

    
$DataLines


		// specify options
        var options = {
          "width":  "100%",
          "height": "500px",
		  "visible": "true"
		  
        };

       

        // Draw our graph with the created data and options
		//#menu3.toggle(function () {
		
         $GraphInitiater
        
		
		
		
      }

   </script>


</body>
</html>
"@

    return $template
}

function Convert-Log2Chart
{
<#
   
.DESCRIPTION
   This module give tools to generate html based log report from iperf or ping logs.

   Following log types can be converted to html based log report:
   Iperf:
        [  5]   7.00-8.00   sec  7.47 MBytes  62.6 Mbits/sec                  
        [  5]   8.00-9.00   sec  7.17 MBytes  60.2 Mbits/sec  
    Linux:
        64 bytes from 8.8.8.8: icmp_seq=1 ttl=56 time=16.0 ms
        64 bytes from 8.8.8.8: icmp_seq=2 ttl=56 time=14.8 ms
    Windows:
        Reply from 8.8.8.8: bytes=32 time=48ms TTL=45
        Reply from 8.8.8.8: bytes=32 time=47ms TTL=45
    WindowsWithDate:
        07.07.2017-15:16:57> Reply from 8.8.8.8: bytes=32 time=48ms TTL=45
        07.07.2017-15:16:58> Reply from 8.8.8.8: bytes=32 time=47ms TTL=45

.PARAMETER FileTemplate 
   Files that match on this wildcard pattern will be included in generated report.

.PARAMETER ReportName  
    Name of the generated report.

.PARAMETER LogType
    Four type of log can be accapted: Iperf, Linux, Windows and WindowsWithDate


.EXAMPLE
    Convert-Log2Chart -FileTemplate Test*ping.txt -ReportName OutPutReportName -LogType WindowsWithDate


#>
    param($FileTemplate, $ListOfFiles, $ReportName,
        [ValidateSet('Windows','WindowsWithDate','Linux', 'Iperf')]
        [Parameter(Mandatory=$true, HelpMessage="Option to choose between Log types.")]
        [string]$LogType="Windows"
    )
    

    #Collect all ping log files
    if($ListOfFiles -eq $null)
    {
        $ListOfFiles = ls $FileTemplate
    }

    if($ListOfFiles.Count -eq 0)
    {
        Write-Output "No file selected."
        return
    }
    
    #set output file name
    if($ReportName -eq $null)
    {
        $ReportName="Report.html"        
    }
    else
    {
        if($ReportName -notlike "*.html")
        {
            $ReportName=$ReportName+".html"
        }
    }

    #Generate html div that will mark the location of the graphs
    $divTarget=Generate-Target $ListOFFiles

    #Generate data from ping logs
    $Data=Generate-DataWithDefinition $ListOFFiles -LogType $LogType

    
    $Initiator=Generate-HTMLChartInitiator $ListOFFiles
    $GeneratedHtml=Generate-HtmlChart -DataLines $Data -TargetDiv $divTarget -GraphInitiater $Initiator
    $GeneratedHtml | Out-File $ReportName -Encoding utf8
}

function Convert-Log2ConverterObject
{
    <#
   
.DESCRIPTION
   This module give tools to generate a raw object that can be used by external modules to help generate html based report.

   Following log types can be converted to html based log report:
   Iperf:
        [  5]   7.00-8.00   sec  7.47 MBytes  62.6 Mbits/sec                  
        [  5]   8.00-9.00   sec  7.17 MBytes  60.2 Mbits/sec  
    Linux:
        64 bytes from 8.8.8.8: icmp_seq=1 ttl=56 time=16.0 ms
        64 bytes from 8.8.8.8: icmp_seq=2 ttl=56 time=14.8 ms
    Windows:
        Reply from 8.8.8.8: bytes=32 time=48ms TTL=45
        Reply from 8.8.8.8: bytes=32 time=47ms TTL=45
    WindowsWithDate:
        07.07.2017-15:16:57> Reply from 8.8.8.8: bytes=32 time=48ms TTL=45
        07.07.2017-15:16:58> Reply from 8.8.8.8: bytes=32 time=47ms TTL=45

.PARAMETER LogFile 
   Defines the input log file

.PARAMETER ChartIndex  
    Defines the ChartIndex in case if more than one chart will be generated.

.PARAMETER LogType
    Four type of log can be accapted: Iperf, Linux, Windows and WindowsWithDate


.EXAMPLE
    Convert-Log2ConverterObject -LogFile $file -ChartIndex 1 -LogType Linux


#>
    param($LogFile,$ChartIndex,
        [ValidateSet('Windows','WindowsWithDate','Linux', 'Iperf')]
        [Parameter(Mandatory=$true, HelpMessage="Option to choose between Log types.")]
        [string]$LogType="Windows"
    )
        
    $divTarget=Generate-Target -listOfName $LogFile -index $ChartIndex
    $Data=Generate-DataWithDefinition -listOfName $LogFile -LogType $LogType -ChartIndex $ChartIndex
    $Initiator=Generate-HTMLChartInitiator $LogFile -ChartIndex $ChartIndex
    
    [pscustomobject]@{ChartTarget=$divTarget; ChartData=$Data;Initiator=$Initiator}
    
}




