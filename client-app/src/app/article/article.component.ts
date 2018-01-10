import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-article',
  templateUrl: './article.component.html',
  styleUrls: ['./article.component.css']
})
export class ArticleComponent implements OnInit {
  @Input() article: {title: string, author: string, subject: string, text: string};

  constructor() { }

  ngOnInit() {
  }

}
