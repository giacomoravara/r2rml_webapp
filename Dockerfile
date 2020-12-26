FROM openjdk:11-jdk
COPY ./target/r2rml-1.2.2.jar r2rml-1.2.2.jar
COPY ./src/main/resources/r2rml.rdf src/main/resources/r2rml.rdf
COPY ./src/main/resources/application.properties src/main/resources/application.properties
COPY ./src/main/resources src/main/resources
COPY ./src/main/resources/schema.sql src/main/resources/schema.sql
ENTRYPOINT [ "java","-jar","r2rml-1.2.2.jar" ]
