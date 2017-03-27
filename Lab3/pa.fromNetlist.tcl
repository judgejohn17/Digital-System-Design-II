
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab3 -dir "D:/DSDII/Lab3/planAhead_run_3" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/DSDII/Lab3/ALU.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/DSDII/Lab3} }
set_property target_constrs_file "ALU.ucf" [current_fileset -constrset]
add_files [list {ALU.ucf}] -fileset [get_property constrset [current_run]]
link_design
