# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# yt-bbs

## Renderでのデプロイ手順

1. GitHubにプッシュ済みのこのリポジトリをRender.comに連携
2. New Web Service → リポジトリ選択
3. Build Command: `./bin/render-build.sh`
4. Start Command: `bundle exec puma -C config/puma.rb`
5. 環境変数 `RAILS_MASTER_KEY` を `config/master.key` の内容で追加
6. PostgreSQLデータベースをRenderで作成し、`DATABASE_URL`を自動連携
7. デプロイボタンを押すだけでOK

詳しくは `render.yaml` も参照してください。
