# discordでSplatoonのリグマ誰が出るか決めるやつ

## about

splatoonのリーグマッチで誰が出るかを決めるやつ．

## usage

1. discordでbotを作成して，client\_idとtokenを獲得する．
2. dockerかrubyかが動くサーバ上でこのリポジトリをクローンする．
3. プロジェクトルートに後述する形式で `.env` を作成する．
4. `docker-compose up -d` or `bundle && bundle exec ruby bot.rb`
5. discord上で `/who_to_fight 人数 名前 名前 名前……` と入力するといい感じに返してくれる

## config

```.env
TOKEN="your_token"
CLIENT_ID="your_client_id"
```


## example

```
/who_to_fight 2 ゆい りつ みお むぎ あずさ
りつ むぎ
```
