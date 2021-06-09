# rask

## 概要
GTDを基にしたTodo管理アプリケーション

## 機能
Project と Todo の作成，編集，削除

## Docker によるセットアップ

### Docker Image の作成
 ```
 $ docker build -t rask_image .
 ```
 
 ### Rask の起動
 ```
 $ docker run -td --name rask -p 3000:3000 rask_image bash
 $ docker exec rask rails s -b 0.0.0.0 -p 3000
 ```
 
