
Tian Vimrc Config
=======================




简介
-----

轻量级 vim 自使用配置，有一些符合我习惯的改键和增加快捷键等；

起初是在多个服务器之间手动默写 `.vimrc`，多了就感觉太麻烦，本着凡是应该自动化的都应该自动化的思想，于是想有个方便的一键配置我自己对 vim 使用习惯的办法。

一般的做法是应该把 vim 配置文件和各种插件打包，做个安装脚本，弄个一键安装命令；

当然，最简单的就是把自己习惯的 `.vimrc` 放到 github，然后要配置的服务器初始话时都去下这个配置文件就好，于是有了做个仓库。

因为想做简单的轻量级，所以没加插件了。（但支持安装插件）

有大部分配置参照了 [wklken](https://github.com/wklken) 的 [k-vim](https://github.com/wklken/k-vim) 。




安装
-----

虽然说叫安装，其实就是下载文件再改名罢了。（首先确认你有网络并且有权限）

```bash
curl -SL# https://raw.githubusercontent.com/zthxxx/TianVimrc/master/vimrc -o ~/.vimrc
# or use shorten
curl -SL# https://git.io/tvimrc -o ~/.vimrc
```

里面的配置完全可以按照自己的情况改，基本上都有功能注释的。

有不懂的语法请用 `:help` 查看 vim 文档。




自定义配置说明
-------------

1. 默认关闭了鼠标，做键盘党 (因为开启鼠标感觉更难用了)
2. 打开自动定位到最后编辑的位置, 需要 `~/.viminfo` 文件当前用户可写
3. 支持插件，只是一般没用到
4. 高亮语法、文件类型检测、自动补全、自动载入、无备份和交换文件，行突出显示，开启行号，无自动换行，自动缩进、Tab 转 4 空格、代码高亮等基础配置
5. 全程 utf-8，关闭提示音， 显示 vim 工作模式
6. 普通模式下屏蔽了"上下左右"， 强迫自己使用 `hjkl`
7. `<Leader>` 键映射为 `Space`
8. `<C-n>` 进行相对行号/绝对行号切换
9. `F2` 行号开关
10. `F3` 显示打印字符开关
11. `F4` 是否自动换行开关
12. `F5` 粘贴模式开关
13. `F6` 语法高亮开关
14. `<C-hjkl>` 映射 `<C-w>hjkl` 多屏中切换光标直接 `Ctrl+h j k l` 就能移动光标
15. `<Leader>z` 临时放大全屏一个分屏
16. `H` 和 `L` 跳转到行首行未，省去按 `0` 和 `$` 太远
17. `/` 自动输入 `/\v` 正则模式搜索
18. 搜索时，下一个上一个搜索项始终显示在屏幕正中
19. `<Leader>/` 关闭上次搜索高亮
20. Python 写入注释 # 号时, 不每次都跳到行首
21. Python 保存时自动删除每行行末多余的空格
22. Shell 和 Python 文件新建时自动加行首声明代码
23. `Y` 复制到行末
24. `<Leader>sa` 全选
25. `<Leader>v` 选中段落
26. 自定义一些高亮的关键字 `TODO|FIXME|CHANGED|DONE|XXX|BUG|HACK|NOTE` 等
27. 退出 vim 后，内容显示在终端屏幕, 可以用于查看和复制
28. Normal 模式下回车选中当前项
29. `U` 映射 `Ctrl+r` 重做撤销的功能
30. Command 模式下 `<C-a>` `<C-e>` 行首行尾跳转
31. Normal 模式下 `<C-e>` `<C-y>` 多滚动两行以加速滚动
32. `<Leader>q` `<Leader>w` `<Leader>x`  快速保存和退出
33. Command 模式下 `:w!!` 自动执行 sudo 保存，常用于只读文件
34. 调整缩进时一直保持选中，用于多次缩进不用每次都再选一遍
35. `<Leader>zz` 折叠和打开 toggle
36. `<Leader>y` 复制选中区域到剪切板
37. `<C-t>` 新建 tab 标签页
    - `<Leader>th` 切换到第一个 tab
    - `<Leader>tl` 切换到最后一个 tab
    - `<Leader>tj` 下一个 tab
    - `<Leader>tk` 上一个 tab
    - `<Leader>tn` 下一个 tab (next)
    - `<Leader>tp` 前一个 tab (previous)
    - `<Leader>te` 编辑 tab (edit)
    - `<Leader>tc` 关闭 tab (close)
    - Normal 模式下 `<Leader>1--9` 直接切换到对应序号的 tab
38. 没有再做 `<Esc>` 的映射，因为 `Ctrl+[` 本身就是输出 ESC 字符





最后
-----

有问题欢迎提 pull request 和 issues ~~



## Licence

[MIT](https://opensource.org/licenses/MIT)
