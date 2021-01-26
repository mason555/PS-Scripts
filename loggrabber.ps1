$filename = $env:COMPUTERNAME

$files = @('CAS.log', 'LocationServices.log', 'AppDiscovery.log', 'CCMExec.log')

foreach ($file in $files) {
    Get-ChildItem -Path "C:\Windows\CCM\Logs" -Include $file -Recurse | 
        Copy-Item -Destination "\\REMOTECOMPUTERNAME\c$\RemoteLogStore"

}