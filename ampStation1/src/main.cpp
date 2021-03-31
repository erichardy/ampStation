#include <Arduino.h>

#define SIGNAL_PIN A7
#define nbSamples 300

struct minMax {
  int min;
  int max;
};

minMax minMaxValue(int *samples) {
  minMax mM;
  int minSample = 10000;
  int maxSample = 0;
  for (int i = 0; i < nbSamples; i++) {
    if (samples[i] > maxSample) {
      maxSample = samples[i] ;
    } 
    if (samples[i] < minSample) {
      minSample = samples[i];
    }
  }
  mM.min = minSample;
  mM.max = maxSample;
  return mM;
}


void setup() {
  Serial.begin(9600);
  pinMode(SIGNAL_PIN, INPUT);
}

void loop() {
  minMax mM;
  int samples[nbSamples] ;
  int i = 0;
  for (i = 0; i < nbSamples; i++) {
    samples[i] = analogRead(SIGNAL_PIN);
  }
  /*
  for (i = 0; i < nbSamples; i++) {
    Serial.println(samples[i]);
  }
  */
  mM = minMaxValue(samples);
  Serial.print(mM.min);
  Serial.print(" ");
  Serial.println(mM.max);
  delay(2000);
}