^#Right::
{
    SendInput("{Ctrl Down}{LWin Down}{Right}{LWin Up}{Ctrl Up}")

    Sleep 1000

    percentX := 10
    percentY := 98
    xStep := 10
    loopNumer := 5

    screenWidth := A_ScreenWidth
    screenHeight := A_ScreenHeight

    startX := (screenWidth * percentX) / 100
    startY := (screenHeight * percentY) / 100

    Loop loopNumer
    {
        endX := startX
        endY := startY - 5

        MouseClickDrag("left", startX, startY, endX, endY, 0)

        startX += xStep
    }
}
