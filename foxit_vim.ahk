bookmark1_x := 91+10 ;目录点x坐标
bookmark1_y := 200+10 ;目录点y坐标

; Virtualbox Windows
^r::send % "#r"
;; 切换窗口
!1::send % "#1"
!2::send % "#2"
!3::send % "#3"
!4::send % "#4"
!5::send % "#5"
!6::send % "#6"
!7::send % "#7"
!8::send % "#8"
!9::send % "#9"

;; 回到桌面
!d::send % "#d"

^f4::send % "!{f4}"

; FoxitReader
#If WinActive("ahk_exe FoxitReader.exe")
	;vim
	^f::send % "{pgdn}"
	^d::send % "{pgup}"
	^j::send % "{down}"
	^k::send % "{up}"
	
	;vimp
	^n::send % "^`t}"
	^p::send % "^+`t}"
	
	;foxit
	^q:: ; 查询目录
		MouseGetPos, cur_x, cur_y
		MouseClick % "left", bookmark1_x, bookmark1_y
		MouseClick % "left", cur_x, cur_y
	return
	^e:: ; 更新目录
		MouseGetPos, cur_x, cur_y
		MouseClick % "right", bookmark1_x, bookmark1_y
		send % "{up 4}{enter 2}"
		MouseClick % "left", cur_x, cur_y
	return
	^+b::send % "^b" ; 新建书签
#If