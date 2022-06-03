# INTRO TO THE UV 3 Clickboard

![UV 3 Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/uv3/ice.jpg?raw=true "UV 3 click")

## Description

This board is an advanced ultraviolet (UV) light sensor.  It can be used for UV measurement, sun exposure protection devices, display backlighting control based on received ambient or UV light

![UV 3 Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/uv3/uv3-click.jpg?raw=true "UV 3 Click")

## Code Example

This example has the UV 3 Click plugged into to MikroBus #1 on the b.Board. 

We will place the UV 3 click value in a "ButtonPressed" event.  As soon as A button is pressed, we trigger the UV3 reading and display it as a message.

```blocks
input.onButtonPressed(Button.A, function () {
    basic.clearScreen()
    basic.showString("" + (UV_32.UVSteps()))
})
let UV_32: UV_3.UV_3 = null
UV_32 = UV_3.createUV_3(BoardID.zero, ClickID.A)
```

## Project Idea

SUN UV 3 AUTOMATIC ALERT

Protection from high UV 3 levels!, Let this sensor stay
outside and pair it with a Wifi Click to
inform you of the UV level while you
enjoy inside. The Wifi click
can be coded to turn on a lamp on your
chest of drawers to indicate that it is
high UV 3 level, and remind you to use 
enough SUN screen before you leave.


![Cold Gif](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/uv3/cold.gif?raw=true "It's Cold!")