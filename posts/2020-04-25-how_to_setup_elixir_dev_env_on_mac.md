---
title: Elixir 개발 환경을 설정해봅시다 (Mac)
date: 2020-04-25
tags: elixir, setup, vscode
---

안녕하세요. Json 입니다. Mac 에서 Elixir 로 개발할 때 일반적으로 사용되는 개발 환경 설정 방법을 알아보겠습니다.

## asdf

**asdf** 는 요즘 대세가 되어가고 있는 runtime version manager 입니다.  
[asdf - Manage multiple runtime versions with a single CLI tool](https://asdf-vm.com/)

이전에는 각각 이런 툴이 있었는데 (nvm, rbenv, pyenv, sdkman, ...),
이제는 거의 asdf 로 통일되는 분위기 입니다.  
현존하는 대부분의 대상을 지원합니다.  
[asdf - Plugins](https://github.com/asdf-community/)

### asdf 설치

[asdf - Getting Started](https://asdf-vm.com/guide/getting-started.html) 문서를 참고해주세요.

저는 brew 로 설치해보았습니다.

```bash
$ brew install asdf
```

## Elixir

elixir 는 erlang 을 기반으로 하는 언어라서 erlang, elixir 둘 다 설치가 필요합니다.

### asdf 에서 erlang 설치

[asdf-erlang Install](https://github.com/asdf-vm/asdf-erlang#install) 문서를 참고해주세요.

```bash
# erlang 설치 전 autoconf, wxmac 설치
$ brew install autoconf
$ brew install wxmac

# asdf erlang plugin 설치
$ asdf plugin add erlang

# erlang version 확인
$ asdf list-all erlang
...
22.3.1
22.3.2
23.0-rc1

# 위 목록에서 가장 최신인 22.3.2 를 설치해봅시다
$ asdf install erlang 22.3.2
```

### asdf 에서 elixir 설치

erlang 설치 방법과 비슷합니다. [asdf-elixir Install](https://github.com/asdf-vm/asdf-elixir#install) 문서를 참고해주세요.

```bash
# asdf elixir plugin 설치
$ asdf plugin add elixir

# elixir version 확인
$ asdf list-all elixir
...
1.10.1
1.10.1-otp-21
1.10.1-otp-22
1.10.2
1.10.2-otp-21
1.10.2-otp-22
master
master-otp-21
master-otp-22

# 위 목록에서 가장 최신인 1.10.2 를 설치해봅시다
$ asdf install elixir 1.10.2
```

### asdf 에서 erlang, elixir global 버전 설정

asdf 에서는 local 버전이 설정되어있지 않을 때 공통적으로 적용되는 global 버전을 설정할 수 있습니다.  
어떤 버전을 설치한다고 global 버전이 자동으로 설정되지 않기 때문에 직접 설정해주어야 합니다.

```bash
$ asdf global erlang 22.3.2
$ asdf global elixir 1.10.2
```

### asdf 에서 erlang, elixir local 버전 설정

위에 언급했던 local 버전은 현재 path 와 그 하위 path 를 포함해 적용됩니다.  
설정하면 자동으로 `.tool_versions` 파일이 생성되어 그 안에 기록됩니다. `.tool_versions` 파일을 직접 수정해도 똑같이 적용됩니다.

```bash
$ asdf local erlang 22.3.2
$ asdf local elixir 1.10.2
```

```
# .tool_versions

erlang 22.3.2
elixir 1.10.2
```

## VSCode

Elixir 를 개발하기에 VSCode 는 매우 좋은 IDE 입니다.

[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)

### 설치

는 알아서 'ㅁ'

### extension 설치

- ElixirLS Fork

    [ElixirLS: Elixir support and debugger](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls)

    VSCode 에서 Elixir 를 지원하도록 해주는 extension 입니다.

- Dash

    [Dash extension](https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-dash)

    Dash 는 language, framework 등의 문서를 통째로 다운받아 매우 빠르고 편하게 볼 수 있도록 해주는 프로그램입니다. Elixir 는 압도적으로 문서화가 잘 되어있기 때문에 Dash 를 이용하면 개발에 매우 큰 도움이 됩니다. (유료)

    이 extension 은 궁금한 모듈이나 함수 위에 커서를 두고 `Ctrl + H` 를 누르면 바로 Dash 에서 해당 부분의 문서를 보여줍니다.

    아래 링크에서 Dash 를 설치한 후 사용하실 수 있습니다.

    [Dash](https://kapeli.com/dash)

이러면 Elixir 로 개발하기 위한 기본적인 설정이 끝납니다. 참 쉽죠?
