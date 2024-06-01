#Base Image as NODE JS
FROM node:14
#Set working directory
WORKDIR /app

# Copy package.json
COPY package*.json ./

#Install the dependencies
RUN npm install

#copy the rest of the application
COPY . .

#specify the port
EXPOSE 3000

#Select the specific command
CMD ["npm", "start"]
