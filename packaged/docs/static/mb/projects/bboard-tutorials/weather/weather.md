# INTRO TO THE WEATHER Clickboard

![Weather Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/weather/ice.jpg?raw=true "Weather click")

## Description

This board shares most of the
functionality with the other
temperature sensors, with one
exception: it detects humidity and pressure!.

![Weather Click](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/weather/weather-click.jpg?raw=true "Weather Click")

## Code Example

This example has the Weather Click plugged into to MikroBus #1 on the b.Board. 

We will place the weather click value in a "Button Pressed event".  Pressing A, B or both, a message with measure of Temperature, Humidity or Pressure will be displayed.

```blocks
let Weather2: Weather.Weather = null
Weather2 = Weather.createWeather(BoardID.zero, ClickID.A)
input.onButtonPressed(Button.A, function () {
    basic.clearScreen()
    basic.showString("" + (Weather2.temperature(Weather.Weather_T.T_C)))
})
input.onButtonPressed(Button.B, function () {
    basic.clearScreen()
    basic.showString("" + (Weather2.humidity()))
})
input.onButtonPressed(Button.AB, function () {
    basic.clearScreen()
    basic.showString("" + (Weather2.pressure(Weather.Weather_P.Pa)))
})

```

## Project Idea

WEATHER STATION

Help to monitor the climate, Let this sensor stay
outside and pair it with a Wifi Click to
inform you of the temperature, pressure and humidity. The Wifi click
can be coded to send this information.


![Cold Gif](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/weather/cold.gif?raw=true "It's Cold!")