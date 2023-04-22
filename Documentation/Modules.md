# external inputs
- Raw Button
- Reset Button
- Home Button
- Next Button
# module IO
## DEBOUNCE
### parameters
- CLOCK_SIZE
- CLOCK_START
- CLOCK_LIMIT
- DEBOUNCE_SCORE_DIGIT_SIZE
- POSEDGE_SCORE
- NEGEDGE_SCORE
### inputs
- input: Raw button signal
- clock
- reset
### outputs
- output
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