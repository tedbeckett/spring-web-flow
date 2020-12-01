cmd.exe /C "mvn clean install -DskipTests"
Set-Location -Path C:\tools\apache-tomcat-8.5.59\bin
cmd.exe /C "C:\tools\apache-tomcat-8.5.59\bin\catalina.bat stop"
Remove-Item -LiteralPath "C:\tools\apache-tomcat-8.5.59\webapps\SpringWebFlowExample.war"
Remove-Item -LiteralPath "C:\tools\apache-tomcat-8.5.59\work\Catalina\localhost\SpringWebFlowExample" -Force -Recurse
Copy-Item "C:\workspace\SpringWebFlowExample\target\SpringWebFlowExample.war" "C:\tools\apache-tomcat-8.5.59\webapps"
cmd.exe /C "C:\tools\apache-tomcat-8.5.59\bin\catalina.bat start"
Set-Location -Path C:\workspace\SpringWebFlowExample