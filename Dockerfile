# Using jdk as base image
FROM adoptopenjdk/openjdk11:alpine

# Copy the whole directory of activemq into the image
COPY /root/activemq/apache-activemq-5.17.0 /opt/apache-activemq-5.17.0

# Set the working directory to the bin folder 
WORKDIR /opt/apache-activemq-5.17.0/bin

# Start up the activemq server
ENTRYPOINT ["./activemq","console"]
