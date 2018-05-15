import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map'
import {Router} from "@angular/router";

@Injectable()
export class AuthenticationService {
  constructor(private http: HttpClient, private router: Router) { }

  login(username: string, password: string) {
    this.http.post('http://127.0.0.1:3000/login', { username: username, password: password })
      .subscribe(data => {
        console.log("USER>>>", data);
        localStorage.setItem('user', JSON.stringify(data));
        let path = "/account/" + data['user_id'];
        this.router.navigate([path]);
      // this.articles = adaptData(data);
      });
      // .map(user => {
      //   console.log("User>>>", user);
      //   // login successful if there's a jwt token in the response
      //   if (user && user.token) {
      //     // store user details and jwt token in local storage to keep user logged in between page refreshes
      //     localStorage.setItem('user', JSON.stringify(user));
      //   }
      //
      //   return user;
      // });
  }

  logout() {
    // remove user from local storage to log user out
    localStorage.removeItem('user');
    this.router.navigate(["/login"]);
  }

  register(username: string, name: string, surname: string, email: string, password: string) {
    this.http.post('http://127.0.0.1:3000/register', { username: username, name: name, surname: surname, email: email, password: password })
      .subscribe(data => {
        console.log("USER>>>", data);
        localStorage.setItem('user', JSON.stringify(data));
        this.router.navigate(["/account", data['user_id']]);
        // this.articles = adaptData(data);
      });
  }

  // getUser(userId: any) {
  //   this.http.post('http://127.0.0.1:3000/get-user', { user_id: userId})
  //     .subscribe(data => {
  //       console.log("USER>>>", data);
  //       return data;
  //       // this.articles = adaptData(data);
  //     });
  // }
}
