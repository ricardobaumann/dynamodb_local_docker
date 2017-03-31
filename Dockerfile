FROM openjdk:8-jre
COPY /Dynamo Dynamo/
RUN chmod -R +x DynamoDBLocal_lib/
EXPOSE 8000 
WORKDIR Dynamo
CMD java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
