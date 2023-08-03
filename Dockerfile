# Set the base image to use for your server.
FROM openjdk:20-jdk

# Create a directory to store the server files.
WORKDIR /minecraft_server

# Copy the existing Minecraft server jar from the local directory to the container.
COPY . .

# Accept the Minecraft EULA.
RUN echo "eula=true" > eula.txt

# Expose the default Minecraft port.
EXPOSE 25565

# Start the Minecraft server.
CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "server.jar"]

