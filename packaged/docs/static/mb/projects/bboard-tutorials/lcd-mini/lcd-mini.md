# INTRO TO THE LCD MINI Clickboard

![NFC](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/lcd-mini/simplestLCD.jpg?raw=true "LCD MINI")

## Description

This two lined, mini LCD display
will let you display up to 16
characters on 2 different lines. Use this to add additional, text-based feedback to your project.

![LCD MINI](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/lcd-mini/lcd-mini-click.jpg?raw=true "LCD MINI Click")

## Code Example

This example has the LCD MINI Click plugged into to MikroBus #1 on the b.Board.

Just sent your text, strings, and input values to your LCD MINI with the the LCD Mini blocks or convert values or any responses you want listed on the LCD Mini's screen.

The screen currently has 2 lines to choose from and will display up to 16 characters each. 

The LCD MINI can help you display data and words to an LCD Screen. 

Locate the LCD_MINI blocks

```blocks
let LCDSettings = LCD_Mini.createLCDSettings(BoardID.zero, ClickID.A)
basic.forever(function () {
    LCDSettings.lcd_writeString("Hello", LCD_Mini.lineNumber.one)
    LCDSettings.lcd_writeString("World", LCD_Mini.lineNumber.two)
    basic.pause(1000)
    LCDSettings.lcd_clearDisplay()
})
```

## Project Idea

INTERACTIVE HAIKU

The format of a Haiku poem is
already perfect for this mini LCD
display. Construct a project
using multiple Click Boards to
allow you to interact and change
the tone of your Haiku based on
an external factor. Brilliant!


![Noise](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/lcd-mini/lcdgif.gif?raw=true "Let's Keep things noisy")