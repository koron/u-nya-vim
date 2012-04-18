" vim:set ts=8 sts=2 sw=2 tw=0 et:

scriptencoding utf-8

let s:count = 0
let s:pattern0 = [
      \ '(」・ω・)」うー！　',
      \ '(／・ω・)／にゃー！',
      \ '(」・ω・)」うー！　',
      \ '(／・ω・)／にゃー！',
      \ '(」・ω・)」うー！　',
      \ '(／・ω・)／にゃー！',
      \ "Let's＼(・ω・)／にゃー！"
      \]

function! g:U_nya_()
  let idx = s:count % len(s:pattern0)

  let s:count += 1
  if s:count >= len(s:pattern0)
    let s:count = 0
  endif

  return s:pattern0[idx]
endfunction

set statusline=%<%f\ %h%m%r%=%{g:U_nya_()}
