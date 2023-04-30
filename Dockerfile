FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

RUN powershell -NoProfile -Command Set-WebBinding -Name 'Default Web Site' -BindingInformation "*:80:" -PropertyName Port -Value 1254

WORKDIR /inetpub/wwwroot

RUN mkdir -p healthz

COPY . .
