import { Component, OnInit } from '@angular/core';

import { ArticlesService } from "../services/articles.service";

@Component({
  selector: 'app-articles',
  templateUrl: './articles.component.html',
  styleUrls: ['./articles.component.css'],
  providers: [ArticlesService]
})
export class ArticlesComponent implements OnInit {
  articles: {id: number, title: string, author: string, subject: string, text: string}[] = [];

  constructor(private articlesService: ArticlesService) {}

  ngOnInit() {
    this.articles = this.articlesService.articles;
  }

}
