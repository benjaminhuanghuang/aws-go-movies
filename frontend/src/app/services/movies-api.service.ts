import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { environment } from '../../environments/environment';

@Injectable()
export class MoviesApiService {
  constructor(private http: Http) { }
  findAll() {
    return this.http.get(environment.api).pipe(map(result => { return result.json()}))
  }
}