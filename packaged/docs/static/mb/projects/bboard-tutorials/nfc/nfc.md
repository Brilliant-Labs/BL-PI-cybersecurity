# INTRO TO THE NFC Clickboard

![NFC](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/nfc/nfc.jpg?raw=true "NFC")

## Description

This NFC enabled ClickBoardTM
can store simple information
such as text or a website. Use
your bBoard to write directly to
this board and then encourage
users with a NFC reader on their
mobile device to find and scan.

![NFC](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/nfc/nfc-click.jpg?raw=true "NFC Click")

## Code Example

This example has the Touchpad Click plugged into to MikroBus #1 on the b.Board.

Just add your Touchpad blocks and code some motors, screens, lights, or other outputs to react to the Touchpad Click's input!

Locate the NFC block

```blocks
let NFC_Tag = NFC_Tag_2.createNFC_Tag(BoardID.zero, ClickID.A)
basic.forever(function () {
   NFC_Tag.setURI("http://www.brilliantlabs.ca")
})

```

## Project Idea

MAGIC COMMUNICATION

Do you need to embed
information in a subtle way?
Write some text to this
ClickBoardTM and embed the
board itself without a bBoard in
your project. Tell users to scan
and your information will be
revealed.


![Noise](https://github.com/Brilliant-Labs/bboard-tutorials-v3/blob/master/nfc/nfc-gif.gif?raw=true "Let's Keep things noisy")