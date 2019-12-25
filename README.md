# elixir-korea.github.io

Elixir Korea의 블로그입니다.

이 블로그를 통해 한국어로 된 Elixir 자료들을 보급하는 것을 목표로 하고 있습니다. Elixir 자료 한국어 번역, Seoul Elixir Meetup 자료 정리, 자체 자료 생산 등을 합니다.

Elixir Korea는 아래와 같은 채널들에서 활동하고 있습니다.

- Elixir Korea Facebook Group (https://www.facebook.com/groups/elixir.korea/)
- Seoul Elixir Meetup (https://www.meetup.com/ko-KR/Seoul-Elixir-Meetup/)
- Elixir Slack #korea channel (https://elixir-lang.slack.com/)

## How to Run

이 블로그는 Elixir 기반의 static site generator인 [Serum](https://github.com/Dalgona/Serum)을 이용해 만들어졌습니다. Special Thanks to [@Dalgona](https://github.com/Dalgona).

### Prerequisites

Required
- Elixir ~> 1.8.0

Optional
- automatic rebuild를 위해서 아래와 같은 설치가 필요합니다.
  - macOS: `fsevent_watch`
  - Linux-based OS: `inotify-tools`
  - 자세한 사항은 [Serum official website](https://dalgona.github.io/Serum/getting-started.html)를 참고해주세요.

### Build

```
$ mix deps.get
$ mix compile
```

### Run

```
$ mix serum.server [--port <PORT>]
```

기본 port는 `8080` 입니다.

## Contirubuting

Elixir Korea는 모든 분들의 참여를 환영합니다!

### 직접적인 기여

위에 언급된 채널들을 통해 [Elixir Korea GitHub organization](https://github.com/elixir-korea)에 등록을 요청해주세요. 이후 자유롭게 일원으로써 참여하실 수 있습니다.

- `source` branch로부터 새로운 branch를 생성해서 작업하고 PR을 올려주세요.
- 1인 이상의 `approve`를 받고 나면 직접 `merge`합니다.
- `merge`하면 바로 `GitHub Action`을 통해 배포됩니다. 작업하신 내용이 제대로 적용되었는지 확인해주세요.

### 간접적인 기여

이 repo를 fork 해서 PR 부탁드립니다.
