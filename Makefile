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
	bash ./scripts/extract_board_arch.sh | tee $@
