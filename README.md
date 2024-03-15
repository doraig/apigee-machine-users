# Docker file for running creating apigee machine users.

- This project basically helps any one run the docker image to create the apigee machine user
- You will need to be authenticated to apigee in order to create the user.
- The person runing this docker image needs to have a admin apigee account.

# Run

```
$ docker build -t doraig/apigee-machine-user:1.0.0 .
```

```
$ docker run --platform=linux/amd64 -it doraig/apigee-machine-user:1.0.0 bash
```
The above command will open  tty bash console to the container

```
/app$ ./usermgmt_linux_amd64 
```
After the above command provide your existing apigee admin credentials and MFA is MFA is setup.

```
/app$ ./usermgmt_linux_amd64 create -z <zonename> -u <user name to create> -p <password for the user>
```
The above command will create a new machine user. You can using -h flag to get the different option which are part of the usermgmt_linux_amd64 utility.

## !!! THATS ALL FOLKS !!!

### Note: Does not support srm architecture. Please user docker platform param to run the docker image

# Reference Apigee Docs:

https://docs.apigee.com/api-platform/system-administration/automating-tasks

