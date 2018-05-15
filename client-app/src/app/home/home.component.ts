import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, ParamMap, Router} from "@angular/router";
import {AuthenticationService} from "../services/authentication.service";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  user: any;
  userId: any;

  constructor(private route: ActivatedRoute, private router: Router, private auth: AuthenticationService, private http: HttpClient) { }

  ngOnInit() {
    this.userId = this.route.paramMap.destination._value.id;
    console.log("USER ID!!>>>", this.userId);
    let user = JSON.parse(localStorage.getItem('user'));
    this.user = user;
    if (user.user_id == this.userId) {
      this.user = user;
    } else {
      this.http.post('http://127.0.0.1:3000/get-user', { user_id: this.userId})
        .subscribe(data => {
          if (data['err']) {
            this.router.navigate(['/account', user.user_id])
          } else {
            this.user = data;
          }
        });
      // console.log(this.user);
    }
  }

}
