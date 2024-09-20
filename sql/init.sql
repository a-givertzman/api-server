--
-- General data
\i ./sql/general_data/unit.sql
--
--
\i ./sql/ship/ship_name.sql
\i ./sql/ship/ship_parameters.sql
\i ./sql/ship/center_draught.sql
\i ./sql/ship/center_waterline.sql
\i ./sql/ship/mean_draught.sql
\i ./sql/ship/pantocaren.sql
\i ./sql/ship/rad_trans.sql
\i ./sql/ship/rad_long.sql
\i ./sql/ship/flooding_angle.sql
\i ./sql/ship/entry_angle.sql
\i ./sql/ship/volume_shift.sql
\i ./sql/ship/waterline_breadth.sql
\i ./sql/ship/waterline_length.sql
\i ./sql/ship/waterline_area.sql
\i ./sql/ship/min_metacentric_height_subdivision.sql
\i ./sql/ship/delta_windage_area.sql
\i ./sql/ship/delta_windage_moment.sql
\i ./sql/ship/metacentic_height_limits.sql
\i ./sql/frames/create.sql
\i ./sql/frames/computed_frame_trigger.sql
\i ./sql/area/horizontal_area_strength.sql
\i ./sql/area/horizontal_area_stability.sql
\i ./sql/area/vertical_area_strength.sql
\i ./sql/area/vertical_area_stability.sql
\i ./sql/area/bow_area.sql

\i ./sql/draft/draft_mark.sql
\i ./sql/draft/load_line.sql
\i ./sql/draft/screw.sql
\i ./sql/draft/bow_board.sql
--
-- Compartment and cargo relations
\i ./sql/cargo_categories/cargo_categories.sql
\i ./sql/loads/create.sql
\i ./sql/loads/loads_trigger.sql
--
-- Holds and bulkheads relations
\i ./sql/hold/hold_group.sql
\i ./sql/hold/bulkhead.sql
\i ./sql/hold/bulkhead_place.sql
\i ./sql/hold/hold_part.sql
\i ./sql/hold/hold_compartment.sql
\i ./sql/hold/hold_compartment_curve.sql
\i ./sql/hold/hold_grain_moment.sql
\i ./sql/hold/hold_compartment_trigger.sql
--
--
\i ./sql/stability/coefficient_k.sql
\i ./sql/stability/multipler_s.sql
\i ./sql/stability/multipler_x1.sql
\i ./sql/stability/multipler_x2.sql
\i ./sql/stability/navigation_area.sql
\i ./sql/stability/coefficient_k_theta.sql
\i ./sql/stability/icing.sql
--
-- Tables with result of calculating
\i ./sql/result/result_strength.sql
\i ./sql/result/strength_force_limit.sql
\i ./sql/result/criterion_category.sql
\i ./sql/result/criterion.sql
\i ./sql/result/criterion_values.sql
\i ./sql/result/parameter_head.sql
\i ./sql/result/parameter_data.sql
\i ./sql/result/criterions_parameters.sql
\i ./sql/result/loads_general.sql
\i ./sql/result/heel_trim_general.sql
\i ./sql/result/stability_diagram.sql
\i ./sql/result/draft_mark.sql
\i ./sql/result/load_line.sql
\i ./sql/result/screw.sql
--
--triggers
--\i ./sql/triggers/mass_sum.sql
--\i ./sql/triggers/mass.sql
--\i ./sql/triggers/volume.sql
\i ./sql/triggers/water_density.sql
--
-- Data for ship
\i ./sql/ARK/ship.sql
\i ./sql/ARK/strength_force_limit.sql
\i ./sql/ARK/frames/bonjean_frame.sql
\i ./sql/ARK/frames/physical_frame.sql
\i ./sql/ARK/frames/frame_area.sql
\i ./sql/ARK/loads/load_base.sql
\i ./sql/ARK/loads/protocol_66.sql
\i ./sql/ARK/loads/hull.sql
\i ./sql/ARK/loads/compartment_curve.sql
\i ./sql/ARK/loads/grain_moment.sql
\i ./sql/ARK/loads/protocol_66.sql
\i ./sql/ARK/area/horizontal_area_strength.sql
\i ./sql/ARK/area/horizontal_area_stability.sql
\i ./sql/ARK/area/vertical_area_strength.sql
\i ./sql/ARK/area/vertical_area_stability.sql
\i ./sql/ARK/area/bow_area.sql
\i ./sql/ARK/draft/draft_mark.sql
\i ./sql/ARK/draft/load_line.sql
\i ./sql/ARK/draft/screw.sql
\i ./sql/ARK/draft/bow_board.sql
\i ./sql/ARK/hold/hold_insert_empty.sql