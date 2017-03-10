# Bash on Windowsを有効にする
```
rclick [スタート]
lclick [プログラムと機能]
lclick [Windowsの機能の有効化または無効化]
check [Windows Subsystem for Linux (Beta)]
reboot
```

# 開発者モードをＯＮにする
```
lclick [スタート]
lclick [設定]
lclick [更新とセキュリティ]
lclick [開発者向け]
check [開発者モード]
ok
```

# Bashをインストール
```
open [コマンドプロンプト or PowerShell]
$ bash
```

# ホスト名の設定
```
$ echo $NAME
<hostname>
$ sudo vim /etc/hosts
127.0.1.1 <hostname>
```
