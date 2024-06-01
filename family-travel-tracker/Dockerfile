#Base Images as Node JS from docker hub
FROM node:14

#Set the working directory in containers

WORKDIR  /app

# Copy the package.json and package-lock.json files into the container

COPY  package*.json ./

# Install the dependencies

RUN npm install

# Copy the rest of the application files into the container

COPY . .

# Specify the port the app runs on

EXPOSE 3000

# Specify the command to run the application


CMD [ "npm", "start" ]

