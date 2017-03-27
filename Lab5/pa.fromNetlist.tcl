
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab5 -dir "D:/DSDII/Lab5/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/DSDII/Lab5/MultiplierWrapper.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/DSDII/Lab5} {ipcore_dir} }
add_files [list {ipcore_dir/Multiplier_4x4.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "MultiplierWrapper.ucf" [current_fileset -constrset]
add_files [list {MultiplierWrapper.ucf}] -fileset [get_property constrset [current_run]]
link_design
