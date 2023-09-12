grep 'KEYWORDS=' ./chromiumos/src/overlays/overlay-*/virtual/chromeos-bsp/chromeos-bsp-2.ebuild | \
	cut -d '-' -f 2- | \
	sed -E 's/chromeos-base|chromeos-bsp-//g' | \
	grep -v -e '-9999' | \
	sed -E 's/(-[0-9.\-r]+)?\.ebuild//g' | \
	sed -E 's/KEYWORDS=/\t/g' | \
	sed -E 's#/.*:##g' | \
	awk -F '\t' '{ print $1 " " $2 }' | \
	sed -E 's/"\-\* amd64 x86"/x86_64/g' | \
	sed -E 's/"\* amd64 x86"/x86_64/g' | \
	sed -E 's/"\-\* arm64 arm"/arm64/g' | \
	sed -E 's/"\*"/unknown/g' | \
	sed -E 's/"\-\* amd64"/x86_64/g' | \
	sed -E 's/"\-\* arm64"/arm64/g' | \
	sort -u -d | \
	cat -
