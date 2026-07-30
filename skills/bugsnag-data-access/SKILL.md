---
name: bugsnag-data-access
description: BugsnagのデータアクセスAPIを使ってエラー情報を取得する
---

# APIの基本アクセス方法

```
curl -H "Authorization: token $BUGSNAG_PERSONAL_AUTH_TOKEN" -H "Accept: application/json; version=2" https://api.bugsnag.com
```

BUGSNAG_PERSONAL_AUTH_TOKEN は環境変数、.env、mise.toml 等に設定されていると想定していいが、もし空の場合はユーザに聞く。

プロジェクトIDも同様に BUGSNAG_PROJECT_ID があれば使うが、空の場合はAPIからプロジェクト一覧を取得して妥当なものを選択する。

また、ユーザが
https://app.bugsnag.com/qitar-llc/minna-rakuda/errors/6a4b7e5190a602cb08c9b89d
のようなURLを貼り付けていれば、そこから下記のパターンで情報を抽出できる。
https://app.bugsnag.com/ORG_NAME/PROJECT_NAME/errors/ERROR_ID


# よく使うエンドポイント

- List organizations: `GET /user/organizations/`
- List projects in organization: `GET /organizations/{organization_id}/projects/`
- List errors in project: `GET /projects/{project_id}/errors/`
- View an error: `GET /projects/{project_id}/errors/{error_id}/`
- List events on an error: `GET /projects/{project_id}/errors/{error_id}/events/`
- View an event: `GET /projects/{project_id}/events/{event_id}/`

# その他のエンドポイント詳細

https://developer.smartbear.com/bugsnag/docs/bugsnag-data-access-api
