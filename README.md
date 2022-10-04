競プロ C++ 用環境

- VSCode をインストール
- [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) 拡張を入れる

```bahs
git clone --recursive https://github.com/cxconj/kyoprocpp.git
cd kyoprocpp
code .
# remote conatainer で rebuild container をする.
# Ctrl-shift-P or Cmd-Shift-P(macの場合) で Command Palette を開いて、Remote-Containers: Rebuild Container を選択
```

何か C++ のプログラムを作る。ここでは例として `hoge.cpp` とする。

```cpp
#include <atcoder/all>
using namespace atcoder;
using mint = modint998244353;
#include <bits/stdc++.h>
using namespace std;


int main() {
    int x;
    cin >> x;
    cout << "hello " << x << endl;

    mint y = 998244352;
    cout << (y * 3).val() << endl;

    return 0;
}
```


`test.txt` に標準入力に与える値を書く
```
123
```

実行する
```bash
$ bin/run hoge  # ファイル名から拡張子を取ったものを run command に与える
g++ -g -O2 -Wall -std=gnu++17 -I .    hoge.cpp   -o hoge
./hoge < test.txt
hello 123  # ここからが出力
998244350
```
