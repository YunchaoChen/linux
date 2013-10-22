#!/bin/bash

function edit
{
    for((i = 1; i <= $#; i ++)) {
        type=`postfix ${!i}`

        case $type in
            "bz2")
                tar xjf ${!i};;
            "zip")
                unzip -x ${!i};;
            "gz")
                tar xvzf ${!i};;
            "rar")
                unrar x ${!i};;
            "bmp" | "jpg")
                eog ${!i};;
            "mp3" | "ogg" | "mp4" | "3gp" | "mkv" | "flv" | "rmvb")
                ffplay ${!i};;
            "c" | "h" | "cpp" | "hpp" | "S" | "s")
                emacs -t ${!i};;
            "sh" | "rc" | "txt" | "log" | "conf")
                emacs -t ${!i};;
            "1" | "2" | "3" | "4" | "5")
                emacs -t ${!i};;
			"nil")
				emacs -t ${!i};;
            *)
				emacs -t ${!i}
        esac
    }
}

function read-only {
	for file in `find`
	do
		if [ -f ${file} ]; then
			chmod 444 ${file}
		fi
	done
}

function smb-into {
	smbclient \\\\bible\\public -U samba -passwd bpesamba
}

function smb-put {

	for((i = 1; i <= $#; i ++)) {
		smbclient \\\\bible\\public\\ -D \\user\\C1841_ChenYunchao -U samba -passwd bpesamba -c "put ${!i}"
	}

}

function smb-get {

	for((i = 1; i <= $#; i ++)) {
		smbclient \\\\bible\\public\\ -D \\user\\C1841_ChenYunchao -U samba -passwd bpesamba -c "get ${!i}"
	}

}