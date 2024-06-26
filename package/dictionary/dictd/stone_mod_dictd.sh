# --- T2-COPYRIGHT-NOTE-BEGIN ---
# T2 SDE: package/*/dictd/stone_mod_dictd.sh
# Copyright (C) 2004 - 2022 The T2 SDE Project
# Copyright (C) 1998 - 2004 ROCK Linux Project
# 
# This Copyright note is generated by scripts/Create-CopyPatch,
# more information can be found in the files COPYING and README.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2.
# --- T2-COPYRIGHT-NOTE-END ---
#

#
# [MAIN] 80 dictd Configuration for dictionary server


conf=/etc/dictd.conf

list_dictionaries () {
    ds=""
    for i in $( ls /usr/share/dictd/*.index )
    do
	ds="$ds `basename $i .index`"
    done
}

select_dict() {
	if grep "database[[:space:]]\+\"$1\"" $conf 2>&1 >/dev/null
	then
		# delete entry if it is not for select all
		if [ "$2" != "1" ]; then
		perl -i -00 -p -e"s/database\s+\"$1\"\s+\{.+\}//s" $conf
		fi
	else
		# set entry if it is not in unselect all mode
		if [ "$2" != "0" ]; then
		cat <<MSG >>$conf
database "$1"
{
      data "/usr/share/dictd/$1.dict.dz"
      index "/usr/share/dictd/$1.index"
}
MSG
		fi
	fi
}

select_dictionaries() {
	while
		cmd="gui_menu dictd 'Select the dictionaries which"
		cmd="$cmd will be served by dictd.'"
		
		list_dictionaries
		if [ -z "$ds" ]; then gui_message \
		"Stone can not find any dictionary. Please install one!"
		return; fi

		for dic in $ds
		do
			if grep "database[[:space:]]\+\"$dic\"" $conf 2>&1 >/dev/null
			then
			     dics=$(printf "%-10sOK" "$dic")
			else
			     dics=$(printf "%-10s--" "$dic")
			fi
			cmd="$cmd '$dics' 'select_dict \"$dic\"'"
		done
		eval $cmd
	do : ; done
}

all_dictionaries() {
	list_dictionaries
	for dic in $ds
	do
		select_dict "$dic" 1
	done
}

deselect_all() {
	list_dictionaries
	for dic in $ds
	do
		select_dict "$dic" 0
	done
}

main() {
	while
	
		cmd="gui_menu dictd 'Configuration for dictionary server' "
	        list_dictionaries
		if [ -z "$ds" ]; then gui_message \
		"There is no dictionary installed. Please install one."
		return; fi
  
		cmd="$cmd 'Select dictionaries' 'select_dictionaries'"
		cmd="$cmd 'Select all installed dictionaries' 'all_dictionaries'"
		cmd="$cmd 'Deselect all dictionaries' 'deselect_all'"
		cmd="$cmd 'Edit $conf' 'gui_edit DICTD $conf'"
		eval $cmd
	do : ; done
}
