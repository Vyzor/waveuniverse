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
  posts: any;
  onCreatePost: boolean = false;
  onWriteMessage: boolean = false;
  postText: string;
  messageText: string;
  isGuest: boolean;
  private sub: any;

  constructor(private route: ActivatedRoute, private router: Router, private auth: AuthenticationService, private http: HttpClient) { }

  ngOnInit() {
    this.sub = this.route.params.subscribe(params => {
      this.userId = params['id'];
      console.log("USER ID!!>>>", this.userId);
      let user = JSON.parse(localStorage.getItem('user'));
      this.user = user;
      if (user.user_id == this.userId) {
        this.user = user;
        this.isGuest = false;
        this.http.post('http://127.0.0.1:3000/get-posts', { user_id: this.userId})
          .subscribe(data => {
            if (data) {
              console.log("POSTS>>", data);
              this.posts = data;
            }
          })
      } else {
        this.http.post('http://127.0.0.1:3000/get-user', { user_id: this.userId})
          .subscribe(data => {
            if (data['err']) {
              this.router.navigate(['/account', user.user_id])
            } else {
              this.user = data;
              this.isGuest = true;
              this.http.post('http://127.0.0.1:3000/get-posts', { user_id: this.userId})
                .subscribe(data => {
                  if (data) {
                    console.log("POSTS>>", data);
                    this.posts = data;
                  }
                })
            }
          });
        // console.log(this.user);
      }
    });
  };

  ngOnDestroy() {
    this.sub.unsubscribe();
  }

  openTextBlock(option: string) {
    if (option === 'post') {
      this.onWriteMessage = false;
      this.onCreatePost = !this.onCreatePost;
    } else {
      this.onCreatePost = false;
      this.onWriteMessage = !this.onWriteMessage;
    }
  }

  createPost() {
    this.onCreatePost = false;
    console.log(this.postText);
    this.auth.createPost(+this.userId, this.postText);
    this.postText = '';
  }

  like(index: number) {
    this.posts[index].likes += 1;
    this.auth.like(this.posts[index].post_id);
  }

  comment(index: number) {
    this.posts[index].comments += 1;
    this.auth.comment(this.posts[index].post_id);
  }

  sendMessage() {
    this.onWriteMessage = false;
    console.log(this.messageText);
    let user = JSON.parse(localStorage.getItem('user'));
    this.auth.sendMessage(user.user_id, +this.userId, this.messageText);
    this.messageText = '';
  }

}
