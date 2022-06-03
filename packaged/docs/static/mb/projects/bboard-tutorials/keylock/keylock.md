# INTRO TO THE KEYLOCK Clickboard

![Keylock Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/keylock/keylock.jpg?raw=true "Keylock Click")

## Description

This locking mechanism Keylock Click BoardTM has an
integrated lock that can be used
as an input switch. It comes with
two keys which can become your
own, unique access point for your
code. Use our extension port to
place your keylock anywhere you
need. Also, this input sensor has
3 key positions: 0-2.

![Keylock Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/keylock/keylock-click.jpg?raw=true "Keylcok Click")

## Code Example

This example has the Keylock Click plugged into to MikroBus #1 on the b.Board.

The keylock has 3 positions available!

Locate the Keylock in Clickboards Buttons & switches group

```blocks
let Keylock2 = Keylock.createkeylock(BoardID.zero, ClickID.A)
basic.forever(function () {
    if (Keylock2.getLockPosition() == 0) {
        basic.showIcon(IconNames.No)
    } else if (Keylock2.getLockPosition() == 1) {
        basic.showIcon(IconNames.Yes)
    } else if (Keylock2.getLockPosition() == 2) {
        basic.showIcon(IconNames.Heart)
    }
})
```

## Project Idea

PROJECT PROTECTION

Be the only one who can run
your experiment, turn on
your robot or even enter your
mad scientist laboratory with this Keylock Click.


![Keylock](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/keylock/keylock-gif.gif?raw=true "Let's Keep things locked")