# Use a base image that has Java installed.
FROM openjdk:8-jre

# Set a working directory for the Minecraft server.
WORKDIR /minecraft

# Copy the Minecraft server jar file into the container.
COPY minecraft_server.jar .

# Accept the Minecraft EULA (End User License Agreement) by setting this environment variable.
ENV EULA=true

# Expose the necessary port for Minecraft clients to connect to the server.
EXPOSE 25565

# Command to run the Minecraft server.
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "minecraft_server.jar", "nogui"]