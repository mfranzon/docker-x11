# Use an official Ubuntu base image
FROM ubuntu:24.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    x11-apps \
    xauth \
    x11-xserver-utils \
    libgtk-3-0 \
    libx11-dev \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Copy the application files to the container
# COPY app.py .

# Install application-specific dependencies
# For example, if your application requires Python packages:
# RUN apt update 
# RUN apt install -y python3.10 

# Set environment variables to allow GUI forwarding
ENV DISPLAY=:0
ENV XAUTHORITY=/root/.Xauthority

# Expose any necessary ports
# EXPOSE 8080

# Run the GUI application
# Replace with the command to start your application
# ENTRYPOINT ["python3", "app.py"]