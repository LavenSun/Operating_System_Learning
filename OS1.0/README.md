# asm文件编译

nasm boot.asm -o boot.bin

dd if=boot.bin of=boot.img bs=512 count=1 conv=notrunc

vim .bochsrc

输入以下内容：

```
megs: 32
romimage: file=$BXSHARE/BIOS-bochs-latest`
vgaromimage: file=$BXSHARE/VGABIOS-lgpl-latest
floppya: 1_44=boot.img, status=inserted
boot: a
log: run.log
mouse: enabled=0
keyboard: keymap=$BXSHARE/keymaps/x11-pc-us.map`
```

