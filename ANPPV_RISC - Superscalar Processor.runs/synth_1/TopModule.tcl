# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.cache/wt [current_project]
set_property parent.project_path C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/ALUbasic.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/ControlCodeGenerator3.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/Temp/OperandDecode2.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/ControlCodeGenerator1Async.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/new/IO_Module.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/StackPointer.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/RegisterFlags.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/IR.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/ControlCodeGenerator4.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/ControlCodeGenerator2.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/Buffer3.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/Buffer1.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/Bubble.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/Temp/RegisterArr.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/Temp/pc.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/Temp/as2.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/Temp/as1.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/Temp/3PortMem.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/WBModule.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/OperandDecode2.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/FlagRegister.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/ConditionalBranch.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/Buffer2.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/imports/files/ALUModule.v
  C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/sources_1/imports/sources_1/new/TopModule.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/constrs_1/imports/VHDL/Nexys4_Master.xdc
set_property used_in_implementation false [get_files C:/Users/prasanna/Desktop/Vivado/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test/pg_Pipeline_Latest_Test.srcs/constrs_1/imports/VHDL/Nexys4_Master.xdc]


synth_design -top TopModule -part xc7a100tcsg324-1 -flatten_hierarchy none


write_checkpoint -force -noxdef TopModule.dcp

catch { report_utilization -file TopModule_utilization_synth.rpt -pb TopModule_utilization_synth.pb }
