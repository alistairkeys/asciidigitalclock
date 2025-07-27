import std/[os, terminal, times]

type
  SigilDisplay = array[3, string]

proc initSigilDisplay(time: string): SigilDisplay =
  for value in time:
    doAssert value in {'0'..'9',':'}
    case value
      of '0':
        result[0] &= "┏─┓"
        result[1] &= "┃ ┃"
        result[2] &= "┗─┛"
      of '1':
        result[0] &= "  ╻"
        result[1] &= "  ┃"
        result[2] &= "  ╹"
      of '2':
        result[0] &= "──┓"
        result[1] &= "┏─┛"
        result[2] &= "┗──"
      of '3':
        result[0] &= "──┓"
        result[1] &= "──┫"
        result[2] &= "──┛"
      of '4':
        result[0] &= "╻ ╻"
        result[1] &= "┗─┫"
        result[2] &= "  ╹"
      of '5':
        result[0] &= "┏──"
        result[1] &= "┗─┓"
        result[2] &= "──┛"
      of '6':
        result[0] &= "┏──"
        result[1] &= "┣─┓"
        result[2] &= "┗─┛"
      of '7':
        result[0] &= "──┓"
        result[1] &= "  ┃"
        result[2] &= "  ╹"
      of '8':
        result[0] &= "┏─┓"
        result[1] &= "┣─┫"
        result[2] &= "┗─┛"
      of '9':
        result[0] &= "┏─┓"
        result[1] &= "┗─┫"
        result[2] &= "  ╹"
      else: # ':'
        result[0] &= " ╻ "
        result[1] &= "   "
        result[2] &= " ╹ "
    result[0] &= " "
    result[1] &= " "
    result[2] &= " "

proc draw(sigilDisplay: SigilDisplay) =
  for idx in 0 ..< sigilDisplay.len:
    echo " "
  terminal.cursorUp(3)
  for row in sigilDisplay:
    echo "\r" & row
  terminal.cursorUp(3)
 
when isMainModule:
  while true:
    let sigilDisplay = initSigilDisplay(now().format("HH:mm:ss"))
    sigilDisplay.draw
    sleep 250
