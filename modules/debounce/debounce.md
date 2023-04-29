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
## test conditions
### parameter
- CLOCK_SIZE: 3
- CLOCK_START: 0
- CLOCK_LIMIT: 6-1
### inputs
- in: Random Sequence
  - bounce on phase: 6 bounces with random on and off conditions of #(20-120) each (max duration will be #360 , min duration will be #120)
  - on phase: random on condition of #(360-480)
  - bounce off phase: 6 bounces with random off and on conditions of #(20-120) each (max duration will be #360 , min duration will be #120)
  - off phase: random off condition of #(360-480)

- clock: signal with period of #80 (on for #40 and off for #40)
### outputs
- out: signal changes no more frequent than CLOCK_LIMIT - CLOCK_START cycle and reflects the state of 'in' at each CLOCK_LIMIT


