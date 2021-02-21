ADD HelloWorld.class HelloWorld.class
RUN sudo apt install openjdk-8-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
