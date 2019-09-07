function fish_greeting
    echo '                 '(set_color blue)'___
  ___======____='(set_color cyan)'-'(set_color green)'-'(set_color cyan)'-='(set_color blue)')
/T            \_'(set_color green)'--='(set_color cyan)'=='(set_color blue)')    '(set_color green)(whoami)'@'(hostname)'
'(set_color blue)' [ \ '(set_color cyan)'('(set_color green)'0'(set_color cyan)')   '(set_color blue)'\~    \_'(set_color green)'-='(set_color cyan)'='(set_color blue)')'(set_color yellow)'   Uptime:'(set_color white)(uptime | sed 's/.*up \([^,]*\), .*/\1/')(set_color blue)'
 \      / )J'(set_color cyan)'~~    \\'(set_color green)'-='(set_color blue)')    '(set_color white)'Theme: '(set_color white)(echo $fish_theme)(set_color blue)'
  \\\\___/  )JJ'(set_color cyan)'~'(set_color green)'~~   '(set_color blue)'\)     '(set_color yellow)'Version: '(set_color white)(echo $FISH_VERSION)(set_color blue)'
   \_____/JJJ'(set_color cyan)'~~'(set_color green)'~~    '(set_color blue)'\\
   '(set_color cyan)'/ '(set_color green)'\  '(set_color green)', \\'(set_color blue)'J'(set_color cyan)'~~~'(set_color green)'~~     '(set_color cyan)'\\
  (-'(set_color green)'\)'(set_color blue)'\='(set_color cyan)'|'(set_color green)'\\\\\\'(set_color cyan)'~~'(set_color green)'~~       '(set_color cyan)'L_'(set_color green)'_
  '(set_color cyan)'('(set_color blue)'\\'(set_color cyan)'\\)  ('(set_color green)'\\'(set_color cyan)'\\\)'(set_color blue)'_           '(set_color green)'\=='(set_color cyan)'__
   '(set_color blue)'\V    '(set_color cyan)'\\\\'(set_color blue)'\) =='(set_color cyan)'=_____   '(set_color green)'\\\\\\\\'(set_color cyan)'\\\\
          '(set_color blue)'\V)     \_) '(set_color cyan)'\\\\'(set_color green)'\\\\JJ\\'(set_color cyan)'J\)
                      '(set_color blue)'/'(set_color cyan)'J'(set_color green)'\\'(set_color cyan)'J'(set_color blue)'T\\'(set_color cyan)'JJJ'(set_color blue)'J)
                      (J'(set_color cyan)'JJ'(set_color blue)'| \UUU)
                       (UU)'(set_color normal)
end
