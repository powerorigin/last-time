
#ifndef CLOCK_H
#define CLOCK_H

#define TIMESECOND  60000
#define RELAYCONTROL _pa4
#define LIGHTDATA  _pa0

extern u32 timeSeconds;
extern u8 timeflag;
extern u32 timems;

void TM_INIT();

#endif /* CLOCK_H */