import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { environment } from '../../environments/environment';
//
import { Movie } from '../models/movie';

@Injectable()
export class MoviesApiService {
  constructor(private http: Http) { }
  findAll() {
    return this.http.get(environment.api).pipe(map(result => { return result.json()}))
  }

  insert(movie: Movie){
    return this.http.post(environment.api, JSON.stringify(movie))
    .pipe(map(res => {
    return res
    }))
  }
}