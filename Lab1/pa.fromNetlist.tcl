
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab01 -dir "D:/DSDII/Lab01/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/DSDII/Lab01/comparator_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/DSDII/Lab01} }
set_property target_constrs_file "comparator_top.ucf" [current_fileset -constrset]
add_files [list {comparator_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
