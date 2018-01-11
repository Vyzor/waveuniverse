import { Component, OnInit } from '@angular/core';

import { ArticlesService } from "../services/articles.service";
import { HttpClient } from "@angular/common/http";

@Component({
  selector: 'app-articles',
  templateUrl: './articles.component.html',
  styleUrls: ['./articles.component.css'],
  providers: [ArticlesService]
})
export class ArticlesComponent implements OnInit {
  articles: any;

  constructor(
    private articlesService: ArticlesService,
    private http: HttpClient
  ) {}

  ngOnInit() {
    // this.articlesService.getArticles();
    this.articles = this.articlesService.articles;
    this.http.get(`http://127.0.0.1:3000/articles`).subscribe(data => {
      console.log(data);
      this.articles = data;
      this.articles = setRotation(this.articles);
      this.articles = moveArticle(this.articles);
      // this.articles = dateTransform(this.articles);
    });
  }
}

function setRotation(articles) {
  for (let i in articles) {
    let val = Math.random() * 14 - 7;
    articles[i].rotation = 'rotate(' + val + 'deg)'
  }
  return articles
}

function moveArticle(articles) {
  for (let i in articles) {
    let horizontal = Math.random() * 80 - 40,
        vertical = Math.random() * 60 - 30;
    articles[i].horizontal = horizontal + 'px';
    articles[i].vertical = vertical + 'px';
  }
  return articles
}

// function dateTransform(articles) {
//   for (let i in articles) {
//     articles[i].creation_date = 'rotate('  + 'deg)'
//   }
//   return articles
// }
