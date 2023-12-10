
.PHONY : generate
generate:
	[ -d generated ] && rm -r generated || true
	mkdir -p generated
	make generated/board_model_list.txt
	make generated/board_list.txt
	make generated/arch.txt
	make generated/recovery_info.tsv

.PHONY : fetch
fetch:
	[ -d generated ] && rm -r fetched || true
	mkdir -p fetched
	make fetched/recovery.conf

.PHONY : update
update:
	git submodule init
	git submodule update
	git submodule update --recursive --remote
	make fetch
	make generate


generated/board_model_list.txt:
	ls chromiumos/src/project_public/*/*/sw_build_config/platform/chromeos-config/generated/project-config.json | cut -d / -f 4,5 | sort -u | tee $@

generated/board_list.txt: generated/board_model_list.txt
	cat generated/board_model_list.txt | cut -d '/' -f 1 | sort -u | tee $@

generated/arch.txt:
	bash ./scripts/extract_board_arch.sh $@

fetched/recovery.conf:
	curl https://dl.google.com/dl/edgedl/chromeos/recovery/recovery.conf | tee $@

generated_noupload/puff_recovery: generated_noupload/recovery.conf
	cd generated_noupload && wget `cat recovery.conf | grep puff | grep https | head -n 1 | cut -d '=' -f 2-`

generated/recovery_info.tsv:
	cat fetched/recovery.conf | \
		tail -n +5 | \
		grep -10 -E '^name' | \
		tr '\n' '#' | \
		sed -E 's/##/\n/g' | \
		sed -E 's/$$/\n----/g' | \
		sed -E 's/^.*#name=([^#]*).*#hwidmatch=[^#A-Za-z0-9]*([A-Za-z0-9]*).*#file=([^#]*).*$$/\1\n\2\n\3/' | \
		sed -E 's/^chromeos_([^_]*)_([^_]*)_recovery.*$$/\1\n\2/g' | \
		tr -d '\t' | \
		tr '\n' '\t' | \
		sed -E 's/----\t/\n/g' | \
		awk -F'\t' '{print $$4 "\t" $$2 "\t" $$3 "\t" $$1;}' | \
		sort | \
		tee $@
