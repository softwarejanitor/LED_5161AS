//
// LED_5161AS 1 digit 7 segment LED library for Esquilo
//
// 20161214 Leeland Heins
//
class LED_5161AS
{
    dp = 0;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    e = 0;
    f = 0;
    g = 0;
    
    constructor ()
    {
        // Arbitrarily use digital GPIO pins 6-13.
        dp = GPIO(6);
        a = GPIO(7);
        b = GPIO(8);
        c = GPIO(9);
        d = GPIO(10);
        e = GPIO(11);
        f = GPIO(12);
        g = GPIO(13);

        // Set them all for output.
        dp.output();
        a.output();
        b.output();
        c.output();
        d.output();
        e.output();
        f.output();
        g.output();
    }
}

// Make a hex digit.
function LED_5161AS::digit(dig)
{
    switch (dig) {
        case 0 :
            a.high();
            b.high();
            c.high();
            d.high();
            e.high();
            f.high();
            g.low();
            break;
        case 1 :
            a.low();
            b.high();
            c.high();
            d.low();
            e.low();
            f.low();
            g.low();
            break;
        case 2 :
            a.high();
            b.high();
            c.low();
            d.high();
            e.high();
            f.low();
            g.high();
            break;
        case 3 :
            a.high();
            b.high();
            c.high();
            d.high();
            e.low();
            f.low();
            g.high();
            break;
        case 4 :
            a.low();
            b.high();
            c.high();
            d.low();
            e.low();
            f.high();
            g.high();
            break;
        case 4 :
            a.low();
            b.high();
            c.high();
            d.low();
            e.low();
            f.high();
            g.high();
            break;
        case 5 :
            a.high();
            b.low();
            c.high();
            d.high();
            e.low();
            f.high();
            g.high();
            break;
        case 6 :
            a.high();
            b.low();
            c.high();
            d.high();
            e.high();
            f.high();
            g.high();
            break;
        case 7 :
            a.high();
            b.high();
            c.high();
            d.low();
            e.low();
            f.low();
            g.low();
            break;
        case 8 :
            a.high();
            b.high();
            c.high();
            d.high();
            e.high();
            f.high();
            g.high();
            break;
        case 9 :
            a.high();
            b.high();
            c.high();
            d.low();
            e.low();
            f.high();
            g.high();
            break;
        case 10 :
            a.high();
            b.high();
            c.high();
            d.high();
            e.high();
            f.low();
            g.high();
            break;
        case 11 :
            a.low();
            b.low();
            c.high();
            d.high();
            e.high();
            f.high();
            g.high();
            break;
        case 12 :
            a.low();
            b.low();
            c.low();
            d.high();
            e.high();
            f.low();
            g.high();
            break;
        case 13 :
            a.low();
            b.high();
            c.high();
            d.high();
            e.high();
            f.low();
            g.high();
            break;
        case 14 :
            a.high();
            b.high();
            c.low();
            d.high();
            e.high();
            f.high();
            g.high();
            break;
        case 15 :
            a.high();
            b.low();
            c.low();
            d.low();
            e.high();
            f.high();
            g.high();
            break;
    }
}

// Invert the decimal point.
function LED_5161AS::blink_dp()
{
    if (dp.ishigh()) {
        dp.low();
    } else {
        dp.high();
    }
}

// Turn on the decimal point.
function LED_5161AS::dp_on()
{
    dp.high();
}

// Turn off the decimal point.
function LED_5161AS::dp_off()
{
    dp.low();
}

// Turn on all segments.
function LED_5161AS::all_on()
{
    dp.high();
    a.high();
    b.high();
    c.high();
    d.high();
    e.high();
    f.high();
    g.high();
}

// Turn off all segments.
function LED_5161AS::all_off()
{
    dp.low();
    a.low();
    b.low();
    c.low();
    d.low();
    e.low();
    f.low();
    g.low();
}

