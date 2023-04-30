# iis2019-hello
This dockerfile creates an IIS on Windows Server 2019 image with a custom site (hello).
The iis is binded to the port 1254 instead of the standard 80.

## Pre-requisites
- Use Windows containers  

**Note: Right click on docker desktop icon and select _"Switch to Windows Containers"_.  

## Usage
Build Image
```cmd
docker build -t hurban/hello-iis .
```

Run as follows
```cmd
docker run -d -p 1254:1254 hurban/hello-iis
```

Now you can access via browser or curl command to
http://localhost:1254/index.html  
http://localhost:1254/healthz/index.html  
