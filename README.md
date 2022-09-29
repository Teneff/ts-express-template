# Microservice template

Template for microservice using:
- Express
- TypeScript
- eslint + prettier + jest + ts-jest


## Usage

### Scripts
- start
    > Runs the application with [nodemon][nodemon] from source. Meant to be used during development.
- prod
    > Runs the application from built js files. Meant to be used within the container in Prod-like environments.
- build
    > Builds the application. Outputting in `dist/`
- clean
    > 
- lint
    > 
- test
    > 



### Docker

#### `builder.Dockerfile`

The purpose of having a spearate Dockerfile is to have a separate image where different commands could be executed using `docker exec`

#### `runner.Dockerfile`


### Debugging

There are three predefined launch configurations for VSCode

- **Launch via Yarn**
  
    > Laucnhes the application using `yarn start` on the default port

- **Debug Jest Tests**

    > Launches all of the tests

- **Debug Current Test**

    > Launches only the opened test file