<?xml version="1.0" encoding="UTF-8"?>
<project name="compstruc1D" board="Mojo V3" language="Lucid">
  <files>
    <src>shift.luc</src>
    <src>alu.luc</src>
    <src>board.luc</src>
    <src>add.luc</src>
    <src>cmp.luc</src>
    <src>boole.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>rom.luc</src>
    <ucf>additional.ucf</ucf>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>reg_interface.luc</component>
    <component>spi_slave.luc</component>
    <component>uart_rx.luc</component>
    <component>cclk_detector.luc</component>
    <component>reset_conditioner.luc</component>
    <component>avr_interface.luc</component>
    <component>uart_tx.luc</component>
  </files>
</project>
