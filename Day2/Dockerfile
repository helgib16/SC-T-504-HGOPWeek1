# Specification of the base image from which is being built
FROM node:carbon
# Set the working directory to /code
WORKDIR /code
# Creating build context from file package.json
COPY package.json package.json
# Creating build context from file app.js
COPY app.js app.js
# Running npm install on a new layer ontop of the current image
RUN npm install
# Setting app.js as a default entrypoint for image
CMD node app.js