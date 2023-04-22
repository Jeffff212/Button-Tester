# external inputs
- Raw Button
- Reset Button
- Home Button
- Next Button
# module IO
## [DEBOUNCE](modules\debounce\debounce.md)
### parameters
- CLOCK_SIZE: clock bit size
- CLOCK_START: clock starting value
- CLOCK_LIMIT: clock value when the output is registered
### inputs
- in: Raw button signal
- clock: cycles Debounce Counter
- reset: 
  - Sets state to OFF
  - Sets output to OFF
  - Sets clock_counter to CLOCK_START
  - pause function and change Dclk, Debounce Counter, out, and state to OFF
### outputs
- out: Debounced button signal
## CAPTURE
### parameters
- WORD_SIZE
- WORD_QTY
- ADDR_SIZE
### inputs
- input
- clock
- reset
- w_done
### outputs
- w_data
- w_addr
- write
## MEMORY
### parameter
- WORD_SIZE
- WORD_QTY
- WORD_DEFAULT
- ADDR_SIZE
### inputs
- clock
- reset
- w_data
- w_addr
- write
- r_addr
- read
### outputs
- w_done
- r_done
- r_data
## PLAYBACK
### parameter
- WORD_SIZE
- WORD_QTY
- ADDR_SIZE
### inputs
- clock
- reset
- home
- next
- r_data
- r_done
### outputs
- r_addr
- read
- sequence