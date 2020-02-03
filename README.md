# 0x00 原版 README
[syvshc/2019Fall_FA](https://github.com/syvshc/2019Fall_FA)


# 0x01 编译方式
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
├── appendix/
│   ├── a.tex
│   ├── b-2.tex
│   ├── b.tex
│   └── c.tex
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

3 directories, 17 files
```


# 0x03 TODO
- 使用 `physics` 宏包替换符号
- 使用 `subcaption` 宏包制作子图
- 在自己的理解上修改笔记内容
