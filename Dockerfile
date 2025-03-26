
# Use an official image as a base
FROM node:21-alpine

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any dependencies
RUN npm install 

COPY . .

# Expose a port (optional, if your app uses a specific port)
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]

# ## Steps to Build and Run

# 1. Save the above content in a file named `Dockerfile` in your `/c:/Users/akash/Downloads/final/learn_docker/Docker` directory.
# 2. Open a terminal and navigate to the directory:
#     ```bash
#     cd /c:/Users/akash/Downloads/final/learn_docker/Docker
#     ```
# 3. Build the Docker image:
#     ```bash
#     docker build -t my-docker-app .
#     ```
# 4. Run the Docker container:
#     ```bash
#     docker run -p 5000:5000 my-docker-app
#     ```

# Replace `app.py` and `requirements.txt` with your actual application files.
# ```
