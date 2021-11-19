FROM openjdk:11/alpine:latest
RUN npm install
COPY . /app.jar
RUN npm run build:dev
ENTRYPOINT ["java","-jar","/app.jar"]
