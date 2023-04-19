^n:: ;Start The Program
    Send {W down} ;Moves Forward
    CoordMode, Tooltip ;Displays If BoatFly Is Active
    ToolTip, AfkBoatFly: Active, 20, 500 ;The Display
    goto top ;start the check
top:
    Clipboard := ;Clears The Clipboard
    Send {F3 down}{c}{F3 up} ;Checks Location
    ClipWait, 1 ;Clipboard wait
    TestString := Clipboard ;Sets Your Location to the Clipboard
    StringSplit, word_array, TestString, %A_Space% ;Checks your YPOS
    if (word_array8 <= 290) { ;If Y is lower than 270 fly up
        Send {Space down} ;fly up
        Sleep 300 ;wait
        Send {Space up} ;stop flying up
        Sleep 3500 ;wait
        goto top ;repeat
    }
    else
        Sleep 3500 ;wait
    goto top ;check again
return

!n::ExitApp ;Exit The Program

/*
Idea And Original Code By Spursf005
Updated And Made More Efficient By Kasterial 14/11/2021
Credit To MiM for the New Version Of The "If Expression"
Credit To SKAN for creating the tooltip for people to use
Fixed Memory Errors And The Occasional Fly Kick
*/
