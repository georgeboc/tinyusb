set(MCU_VARIANT LPC55S69)
set(MCU_CORE LPC55S69_cm33_core0)

set(JLINK_DEVICE LPC55S69)
set(PYOCD_TARGET LPC55S69)
set(NXPLINK_DEVICE LPC55S69:LPCXpresso55S69)

set(LD_FILE_gcc ${CMAKE_CURRENT_LIST_DIR}/LPC55S69_cm33_core0_uf2.ld)

function(update_board TARGET)
  target_compile_definitions(${TARGET} PUBLIC
    CPU_LPC55S69JBD100_cm33_core0
    # port 1 is highspeed
    BOARD_TUD_RHPORT=1
    )
endfunction()
