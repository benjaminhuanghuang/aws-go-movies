## Angular setup


## Bootstrap
```
  npm install bootstrap
```
import the Bootstrap CSS classes in the **angular.json** file in order to make the CSS directives available in all components of the application:
```
  "styles": [
    "styles.css",
    "../node_modules/bootstrap/dist/css/bootstrap.min.css"
  ]
```
## create component

ng generate component components/navbar
ng generate component components/movie-item
ng generate component components/list-movies

## Create services
ng generate service services/moviesApi

## Environments
The service will use environment object to read the values from **environment.ts** if ng build or ng serve are executed,  and read the values from **environment.prod.ts**  if you build your application for production mode with the ng build --prod command.


## Deploy to S3
```
ng build --prod

aws s3 mb s3://serverlessmovies.com

aws s3 cp --recursive dist/ s3://serverlessmovies.com/
```