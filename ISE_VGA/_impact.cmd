setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
setMode -bs
addDevice -p 3 -file "C:/cod/COD-LAB28/ISE_VGA/mipspipelinecpu_vga.bit"
deleteDevice -position 4
Program -p 3 -defaultVersion 0 
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
