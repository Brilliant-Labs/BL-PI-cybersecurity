# INTRO TO THE IR SENSE 3


![Magic](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/ir-distance/IRpic.png?raw=true "A magician's assistant")

## Description

This thermal imaging sensor can
detect environmental heat
changes up to 1m (100cm) away, even
through glass. Also, this sensor
can be used to detect humans as
they approach the area where the
sensor is located.

![IR SENSE 3 Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/ir-sense-3/ir-sense-3-click.jpg?raw=true "IR SENSE 3 Click")

## Code Example

This example has the IR SENSE 3 Click plugged into to MikroBus #1 on the b.Board

```blocks
let IR_Sense_32 = IR_Sense_3.createIR_Sense(BoardID.zero, ClickID.A)
basic.forever(function () {
    if (IR_Sense_32.isHumanDetected()) {
        basic.showIcon(IconNames.StickFigure)
    } else {
        basic.showIcon(IconNames.No)
    }
})
```

## Project Idea

THE INVISIBLE TRIP WIRE

Detect someone approaching from one meter
away. Use this click to activate your design
or set an alarm. This is great for projects
that draw a lot of power and can be activated
when being observed and de-activated when
the room is empty. Play a noise when someone
approaches for a good scare!

![Magic](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/ir-distance/magicianGif.gif?raw=true "A magician's assistant")