onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib mpsoc_preset_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mpsoc_preset.udo}

run 1000ns

quit -force
