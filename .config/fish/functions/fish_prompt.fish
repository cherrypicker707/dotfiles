# Prompt for fish

function fish_prompt
    echo " $(set_color -o cyan)$(prompt_pwd --dir-length 0) $(set_color -o blue)» $(set_color normal)"
end
