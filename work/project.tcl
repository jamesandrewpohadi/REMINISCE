set projDir "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/planAhead"
set projName "compstruc1D"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/mojo_top_0.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/reset_conditioner_1.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/edge_detector_2.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/button_conditioner_3.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/emulator_18.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/pipeline_19.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/mux_3_27.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/mux_5_28.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/mux_2_29.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/mux_5_28.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/mux_2_29.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/rom_32.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/board_33.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/alu_34.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/register_35.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/register_35.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/register_35.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/add_38.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/cmp_39.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/boole_40.v" "C:/Users/PERSONAL/Documents/mojo/compstruc1D/work/verilog/shift_41.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/PERSONAL/Documents/mojo/compstruc1D/constraint/additional.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
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
