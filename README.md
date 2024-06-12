# ChromeOS / ChromiumOS related info from publically-accessible sources

## Update
```
make update
```

```
tar -xvf chromiumos_test_image.tar.xz

gsutil cp gs://chromiumos-image-archive/amd64-generic-vm-public/R124-15818.0.0/chromiumos_test_image.tar.xz ./

qemu-system-x86_64 --enable-kvm -machine q35 -cpu qemu64 -smp 4 -m 4G -device qemu-xhci -drive format=raw,file=chromiumos_test_image.bin -bios ~/wasabi/third_party/ovmf/RELEASEX64_OVMF.fd -vga virtio
```

```
$ gsutil cat gs://chromiumos-image-archive/hana-public/LATEST-main
R128-15919.0.0
```

```
$ gsutil ls gs://chromiumos-image-archive/hana-public/R128-15919.0.0
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/autotest_packages.tar
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/autotest_server_package.tar.bz2
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/build_report.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromeos_R128-15919.0.0-a1_R128-15919.0.0-a1_hana_delta_dev.bin
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromeos_R128-15919.0.0-a1_R128-15919.0.0-a1_hana_delta_dev.bin.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromeos_R128-15919.0.0-a1_R128-15919.0.0-a1_hana_delta_dev.bin.log
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromeos_R128-15919.0.0-a1_hana_full_dev.bin
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromeos_R128-15919.0.0-a1_hana_full_dev.bin.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromeos_R128-15919.0.0-a1_hana_full_dev.bin.log
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromiumos_base_image.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/chromiumos_test_image.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/control_files.tar
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/debug.tgz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/debug_breakpad.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc_sample-dlc_package_R128-15919.0.0-a1_R128-15919.0.0-a1_hana_delta_dev.bin
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc_sample-dlc_package_R128-15919.0.0-a1_R128-15919.0.0-a1_hana_delta_dev.bin.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc_sample-dlc_package_R128-15919.0.0-a1_R128-15919.0.0-a1_hana_delta_dev.bin.log
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc_sample-dlc_package_R128-15919.0.0-a1_hana_full_dev.bin
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc_sample-dlc_package_R128-15919.0.0-a1_hana_full_dev.bin.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc_sample-dlc_package_R128-15919.0.0-a1_hana_full_dev.bin.log
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/ebuild_logs.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/environment_chromeos-base_chromeos-chrome.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/factory_image.zip
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/full_KERN.bin.zst
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/full_ROOT.bin.zst
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/full_dev_part_KERN.bin.gz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/full_dev_part_ROOT.bin.gz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/image.zip
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/license_credits.html
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/manifest.xml
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/metadata.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/partial-metadata.json
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/recovery_image.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/stateful.tgz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/stateful.zst
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/sysroot_chromeos-base_chromeos-chrome.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/tast_use_flags.txt
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/test_suites.tar.bz2
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/vmlinuz.tar.xz
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc-scaled/
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/dlc/
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/meta/
gs://chromiumos-image-archive/hana-public/R128-15919.0.0/metadata/
```

```
$ gsutil cp gs://chromiumos-image-archive/hana-public/R128-15919.0.0/autotest_server_package.tar.bz2 fetched/
$ gsutil cp gs://chromiumos-image-archive/hana-public/R128-15919.0.0/autotest_packages.tar fetched/
```

```
tar -xvf fetched/autotest_server_package.tar.bz2 -C fetched/
mkdir -p fetched/autotest_packages
tar -xvf fetched/autotest_packages.tar -C fetched/autotest_packages
```

```
$ ./fetched/tast/bundles/remote/cros --dumptests | jq -r '.[].name' | head -n 3
apps.AppsServiceGRPC.ash
apps.AppsServiceGRPC.lacros
arc.ADBOverUSB
```

```
emerge chromeos-base/tast-local-test-runner
```

```
./fetched/tast/run_tast.sh 192.168.100.20 arc.PerfBoot.vm
```

```
cro3 dut shell --dut hana_P206XWZS -- mkdir -p /usr/local/bin/
```
