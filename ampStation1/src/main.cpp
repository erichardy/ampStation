#include <Arduino.h>

/*
On pin SIGNAL_LOW_PIN : the raw signal amplified by an AOP in order to be able to measure low currents
On pin SIGNAL_HIGH_PIN : the raw signal (not amplified) used for higher currents
Normaly, on either pins, voltage is always beetween 0 and 5V

On SIGNAL_LOW_PIN, the signal is a sine with an offset of 2.5V
On SIGNAL_HIGH_PIN, the raw signal is a half sine (positive part), but limited to 5V. If the signal is saturated,
we must change the design of the electronic !

If the value on HIGH_PIN is lower than 296, we use the value returned on LOW_PIN because we have low current.

The current transformer returns voltage depending of the current.

Vinput   LOW   HIGH
0        551    255
0.02     555    255
0.05     561    256
0.08     567    256
0.11     574    256
0.16     585    259
0.2      594    260
0.3      615    262
0.5      659    269
0.8      719    175
1.0      760    280
1.5      864    289
1.8      932    293  NB LOW unstable
2.0      988    297
2.1     1007    298
2.2     1022    299
2.3     1023    299
2.4     1023    300

The higher value on the HIGH line seems to be 301 which is reached at 2.7V

NB: when probing with the oscillo, the values are a bit lower !!!
*/

#define SIGNAL_LOW_PIN A0
#define SIGNAL_HIGH_PIN A1
#define nbSamples 200

// Include Wire Library for I2C
#include <Wire.h>
// Include Adafruit Graphics & OLED libraries
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

// see https://github.com/adafruit/Adafruit_SSD1306/blob/master/examples/ssd1306_128x32_i2c/ssd1306_128x32_i2c.ino
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels
#define OLED_RESET 4
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

int samplesLow[nbSamples];
int samplesHigh[nbSamples];



int maxValue(int *samples) {
  int max = 0;
  for (int i = 0 ; i < nbSamples; i++) {
    if (samples[i] > max) {
      max = samples[i];
      }
  }
  return max;
}

void getSignals() {
  int i = 0;
  for (i = 0; i < nbSamples; i++) {
    samplesLow[i] = analogRead(SIGNAL_LOW_PIN);
    samplesHigh[i] = analogRead(SIGNAL_HIGH_PIN);
  }
}

void setup() {
  Serial.begin(9600);
  pinMode(SIGNAL_LOW_PIN, INPUT);
  pinMode(SIGNAL_HIGH_PIN, INPUT);
  Serial.println("Ready.");
  // START Init OLED screen
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
  display.clearDisplay();
  //Set the color - always use white despite actual display color
  display.setTextColor(WHITE);
  //Set the font size
  display.setTextSize(2);
  //Set the cursor coordinates
  display.setCursor(0,0);
  display.println("...init...");
  display.display();
  // END Init OLED screen
}

void loop() {
  int ml, mh;
  u32 _millis1, _millis2;
  _millis1 = millis();
  getSignals();
  _millis2 = millis();
  ml = maxValue(samplesLow);
  mh = maxValue(samplesHigh);
  Serial.print(ml);
  Serial.print(" ");
  Serial.print(mh);
  Serial.print(" ");
  Serial.println(_millis2 - _millis1);
  //
  display.clearDisplay();
  display.setCursor(0,0);
  display.println(ml);
  display.println(mh);
  display.display();
  //

  delay(1000);
}