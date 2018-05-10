import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.css']
})
export class LoginFormComponent implements OnInit {
  showTab: string;

  constructor() {
  }

  ngOnInit() {
    this.showTab = 'login';
  }

  switchTo(tab: string): void {
    this.showTab = tab;
  }

}
