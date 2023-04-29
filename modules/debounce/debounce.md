# DEBOUNCE
Takes a raw button input and eliminates bounce by delaying state changes on a debounced button output.
## parameters
- CLOCK_SIZE: clock bit size
- CLOCK_START: clock starting value
- CLOCK_LIMIT: clock value when the output is registered
## inputs
- in: Raw button signal
- clock: cycles Debounce Counter
- reset: 
  - Sets state to OFF
  - Sets output to OFF
  - Sets clock_counter to CLOCK_START
  - pause function and change Dclk, Debounce Counter, out, and state to OFF
## outputs
- out: Debounced button signal
## [diagrams](debounce.drawio)
