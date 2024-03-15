# ChromeOS / ChromiumOS related info from publically-accessible sources

## Update
```
make run
```

```
tar -xvf chromiumos_test_image.tar.xz

gsutil cp gs://chromiumos-image-archive/amd64-generic-vm-public/R124-15818.0.0/chromiumos_test_image.tar.xz ./

qemu-system-x86_64 --enable-kvm -machine q35 -cpu qemu64 -smp 4 -m 4G -device qemu-xhci -drive format=raw,file=chromiumos_test_image.bin -bios ~/wasabi/third_party/ovmf/RELEASEX64_OVMF.fd -vga virtio
```
