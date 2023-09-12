regenerate:
	[ -d generated ] && rm -r generated || true
	make generated/board_model_list.txt

generated/board_model_list.txt:
	mkdir -p generated
	ls chromiumos/src/project_public/*/*/sw_build_config/platform/chromeos-config/generated/project-config.json | cut -d / -f 4,5 | sort -u | tee $@
