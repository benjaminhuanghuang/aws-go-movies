## Setup



## Bootstrap

npm install bootstrap

import the Bootstrap CSS classes in the .angular.json file in order to make the CSS directives available in all components of the application:

"styles": [
"styles.css",
"../node_modules/bootstrap/dist/css/bootstrap.min.css"
]

## create component

ng generate component components/navbar
ng generate component components/movie-item
ng generate component components/list-movies

