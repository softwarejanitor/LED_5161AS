//
// LED 5161AS demo
//
// 20161214 Leeland Heins
//
require("GPIO");

// Load the library.
dofile("sd:/LED_5161AS.nut");

// Instantiate our class.
local led = LED_5161AS();

// Turn on all LED segments
led.all_on();

delay(500);

// Turn off all LED segments
led.all_off();

delay(500);

local i;

// Display hex digits 0-f and blink decimal point between
for (i = 0; i < 16; i++) {
    led.digit(i);

    delay(500);

    led.blink_dp();

    delay(500);

    led.blink_dp();
    
    delay(500);
    
    led.blink_dp();
    
    delay(500);
    
    led.blink_dp();
}

delay(500);

led.all_off();

