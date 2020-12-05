# MovieSearch
### Movie search app

This Rails API services the front end for the movie search app that can be found [here](https://github.com/dannyflatiron/movie-search). API writes new movie objects to a postgresql database and has two endpoints to view data. After installing API, you can view data structure with http://localhost:3000/movies or http://localhost:3000/movies/id. API employs serializing features provided by the jsonapi-serializer gem and logic to handle incoming voting data.

Some of the features of this app include:

* Ruby version: '2.6.1'
* Rails version: '~> 6.0.3', '>= 6.0.3.4'
* Serializer: jsonapi-serializer
* Database: postgresql

## Running it locally
- run `bundle install` 
- navigate to `http://localhost:3000` or `http://localhost:3001`
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)