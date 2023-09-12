@=$1
bash ./scripts/extract_board_arch1.sh > $@
bash ./scripts/extract_board_arch2.sh >> $@
bash ./scripts/extract_board_arch3.sh >> $@
cat $@ | awk '{ print $1 " " $2 }' | grep -v unknown |  sort -u | tee $@
