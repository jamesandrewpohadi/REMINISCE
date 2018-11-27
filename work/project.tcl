set projDir "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/planAhead"
set projName "compstruc1D"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/mojo_top_0.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/reset_conditioner_1.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/emulator_2.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/mux_2_3.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/mux_2_3.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/mux_2_3.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/mux_5_6.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/mux_2_3.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/rom_8.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/alu_9.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/register_10.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/register_10.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/register_10.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/add_13.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/cmp_14.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/boole_15.v" "C:/Users/Wang Zijia/Documents/GitHub/compstruc1D/work/verilog/shift_16.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
