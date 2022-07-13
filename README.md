# Architecture 

![image](https://user-images.githubusercontent.com/23658028/178774801-05aca771-4135-4297-8f28-80d6199485d2.png)

# java-servlet-hello
Hello world web application with Maven + Java + Servlets + Tomcat

## Compile app 
```
mvn clean install
```
The compiled file will been stored in `target` folder as `hello.war`

## Run app 
```
mvn tomcat7:run
```
The servlet can be executed in browser by path `http://localhost:8081/hello`

## Run in docker
After compile app just run next
```
docker run -i --rm --name hello-app -p 8081:8080 \
  -v ${PWD}/target/hello.war:/usr/local/tomcat/webapps/hello.war \
  tomcat:9.0-jre8-alpine
```
And for opening the Servlet run in browser `http://localhost:8081/hello/hello`



