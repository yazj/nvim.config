# custom config for NvChad

这是[NvChad](https://nvchad.com/)的个人定制配置文件

## Install 

```bash
mv ~/.config/nvim ~/.config/nvim_backup
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
git clone https://github.com/yazj/nvim.config.git ~/.config/nvim/lua/custom 
rm -r ~/.config/nvim/lua/custom/.git
```

## add features

+ [Tabnine](https://www.tabnine.com/)AI补全

+ Insert模式下<C-s>保存

+ <S-h> <S-l> 在buffer之间切换

+ <leader>qq 退出所有

+ Nvim启动时开启NeoTree

+ [MarkdownPreview](https://github.com/iamcco/markdown-preview.nvim) 

