
regenerate:
	[ -d generated ] && rm -r generated || true
	mkdir -p generated
	make generated/board_model_list.txt
	make generated/board_list.txt
	make generated/arch.txt

generated/board_model_list.txt:
	ls chromiumos/src/project_public/*/*/sw_build_config/platform/chromeos-config/generated/project-config.json | cut -d / -f 4,5 | sort -u | tee $@

generated/board_list.txt: generated/board_model_list.txt
	cat generated/board_model_list.txt | cut -d '/' -f 1 | sort -u | tee $@

generated/arch.txt:
	bash ./scripts/extract_board_arch.sh $@

generated_noupload/recovery.conf:
	curl https://dl.google.com/dl/edgedl/chromeos/recovery/recovery.conf | tee $@

generated_noupload/puff_recovery: generated_noupload/recovery.conf
	cd generated_noupload && wget `cat recovery.conf | grep puff | grep https | head -n 1 | cut -d '=' -f 2-`
