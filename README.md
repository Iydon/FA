# 0x00 原版 README
[syvshc/2019Fall_FA](https://github.com/syvshc/2019Fall_FA)


# 0x01 编译方式
本仓库使用 TeX Live 2019 进行编译，最后使用 `tlmgr update --self --all` 时间为 2020-02-06。

使用 `latexmk`：
```
latexmk -xelatex main.tex
```

或者使用 `Makefile`，修改其中的 `OPEN` 变量，Linux 视情况而定，Mac 应该为 `open`。
```
make tex show
```


# 0x02 项目结构
```
$ tree -F --dirsfirst
.
├── chapters/
│   ├── 1.tex
│   ├── 2.tex
│   ├── 3.tex
│   ├── 4.tex
│   └── notations.tex
├── config/
│   ├── info.tex
│   ├── preamble.tex
│   └── symbols.tex
├── main.pdf
├── main.tex
├── Makefile
├── README.md
└── ref.bib

2 directories, 13 files
```


# 0x03 TODO
- 使用 `physics` 宏包替换符号
- 使用 `subcaption` 宏包制作子图
- 在自己的理解上继续修改笔记内容
