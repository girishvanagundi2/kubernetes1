#FROM openjdk:8
FROM openjdk:21-jdk
COPY target/postgres-demo-0.0.1-SNAPSHOT.jar /app.jar
EXPOSE 8080/tcp
#ENTRYPOINT ["java", "-jar", "/app.jar"]
#ENTRYPOINT ["java",
#"-Dsun.misc.URLClassPath.disableJarChecking=true" ,"--add-opens jdk.naming.rmi/com.sun.jndi.rmi.registry=ALL-UNNAMED",
#"--add-opens java.base/java.lang=ALL-UNNAMED","--add-opens java.base/sun.security.action=ALL-UNNAMED",
#"--add-opens java.base/sun.net=ALL-UNNAMED",
#"-jar", "/app.jar"]
ENTRYPOINT ["java", "--add-opens","jdk.naming.rmi/com.sun.jndi.rmi.registry=ALL-UNNAMED", "--add-opens","java.base/java.lang=ALL-UNNAMED","--add-opens","java.base/sun.security.action=ALL-UNNAMED","--add-opens","java.base/sun.net=ALL-UNNAMED","-jar", "/app.jar"]


