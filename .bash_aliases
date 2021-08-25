
alias ..="cd .. && ll"
alias ..2="cd ../.. && ll"
alias ..3="cd ../../.. && ll"
alias ..4="cd ../../../.. && ll"
alias ..5="cd ../../../../.. && ll"


if command -v xclip &> /dev/null
then
  alias pbcopy='xclip -selection clipboad'
  alias pbpaste='xclip -selection clipboard -o'
fi

