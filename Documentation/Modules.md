# external inputs
- Raw Button
- Reset Button
- Home Button
- Next Button
# module IO
## DEBOUNCE
### inputs
- input
- clock
- reset
### outputs
- output
## CAPTURE
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
# module parameters
## DEBOUNCE
- CLOCK_SIZE
- CLOCK_START
- CLOCK_LIMIT
## CAPTURE
- WORD_SIZE
- WORD_QTY
- ADDR_SIZE
## MEMORY
- WORD_SIZE
- WORD_QTY
- WORD_DEFAULT
- ADDR_SIZE
## PLAYBACK
- WORD_SIZE
- WORD_QTY
- ADDR_SIZE