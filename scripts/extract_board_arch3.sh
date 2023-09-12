grep -E 'x86|arm64' ./chromiumos/src/overlays/overlay-*/profiles/base/make.defaults | \
	sed -E 's/:.*x86.*$/x86_64/g' | \
	sed -E 's/:.*arm64.*$/arm64/g' | \
	cut -d '-' -f 2- | \
	sed -E 's#/profiles/base/make\.defaults# #g' | \
	sort -u -d | \
	cat -
