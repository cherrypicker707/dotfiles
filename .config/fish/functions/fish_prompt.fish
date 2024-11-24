# Prompt configuration for Fish.

function fish_prompt
	echo " $(set_color -o yellow)$(prompt_pwd --dir-length 0) $(set_color -o cyan) > $(set_color normal)"
end
