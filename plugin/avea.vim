
"light function
function! ShowColors()
    new | r ! avea show-colors
endfunc
function! AddColor()
    let toAdd = input("What would you like your colour to be called?: ")
    let red = input("Red 0-255: ")
    let green = input("Green 0-255: ")
    let blue = input("Blue 0-255: ")
    let white = "0"
    execute '! avea add-color ' . toAdd . " " . red . " " . green . " " . blue . " " . white
endfunc
function! DeleteColor()
    let toDel = input("What colour would you like to delete")
    execute '! avea delete-color ' . toDel
endfunc
function! SetBrightness()
    let bright = input("Brightness 0-255: ")
    execute '! avea set-brightness ' . bright
endfunc

function! LightOn()
    let choice = input("Which color would you like to set?: ")
    execute '! avea set-color ' . choice
endfunc

function! LightOff()
    !avea off
endfunc

function! LightManager()

    echo "(1): Show Colors\n (2): Add color\n (3): Delete Color\n (4): Set Brightness\n (5): Turn Light on\n (6): Turn Light Off \n"
    let choice = input("")
    if choice == "1"
        call ShowColors()
    elseif choice == "2"
        call AddColor()
    elseif choice == "3"
        call DeleteColor()()()()
    elseif choice == "4"
        call SetBrightness()
    elseif choice == "5"
        call LightOn()
    elseif choice == "6"
        call LightOff()
    endif

endfunc

"map <leader>sh :call ShowColors()<cr>
"map <leader>so :call LightOn()<cr>
"map <leader>sf :call LightOff()<cr>
"map <leader>sa :call AddColor()<cr>
"map <leader>sd :call DeleteColor()<cr>
map <leader>sm :call LightManager()<cr>
