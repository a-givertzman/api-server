--
-- General data
\i ./sql/general_data/unit.sql
--
-- Constant data for calculation
\i ./sql/stability/coefficient_k.sql
\i ./sql/stability/multipler_s.sql
\i ./sql/stability/multipler_x1.sql
\i ./sql/stability/multipler_x2.sql
\i ./sql/stability/navigation_area.sql
\i ./sql/stability/coefficient_k_theta.sql
\i ./sql/stability/icing.sql
--
-- Ship data
\i ./sql/ship/geometry.sql
\i ./sql/ship/icing_timber.sql
\i ./sql/ship/icing.sql
\i ./sql/ship/type.sql
\i ./sql/ship/parameters.sql
\i ./sql/ship/ship.sql
--
-- Hidrostatic curves for ship
\i ./sql/hidrostatic/center_draught.sql
\i ./sql/hidrostatic/center_waterline.sql
\i ./sql/hidrostatic/mean_draught.sql
\i ./sql/hidrostatic/pantocaren.sql
\i ./sql/hidrostatic/rad_trans.sql
\i ./sql/hidrostatic/rad_long.sql
\i ./sql/hidrostatic/flooding_angle.sql
\i ./sql/hidrostatic/entry_angle.sql
\i ./sql/hidrostatic/volume_shift.sql
\i ./sql/hidrostatic/waterline_breadth.sql
\i ./sql/hidrostatic/waterline_length.sql
\i ./sql/hidrostatic/waterline_area.sql
\i ./sql/hidrostatic/min_metacentric_height_subdivision.sql
\i ./sql/hidrostatic/delta_windage_area.sql
\i ./sql/hidrostatic/delta_windage_moment.sql
\i ./sql/hidrostatic/metacentic_height_limits.sql
--
\i ./sql/frames/create.sql
\i ./sql/frames/computed_frame_trigger.sql
--
\i ./sql/area/horizontal_area_strength.sql
\i ./sql/area/horizontal_area_stability.sql
\i ./sql/area/vertical_area_strength.sql
\i ./sql/area/vertical_area_stability.sql
\i ./sql/area/bow_area.sql
--
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
-- Hidrostatic curves for ship
\i ./sql/ARK/hidrostatic/center_draught.sql
\i ./sql/ARK/hidrostatic/center_waterline.sql
\i ./sql/ARK/hidrostatic/mean_draught.sql
\i ./sql/ARK/hidrostatic/pantocaren.sql
\i ./sql/ARK/hidrostatic/rad_trans.sql
\i ./sql/ARK/hidrostatic/rad_long.sql
\i ./sql/ARK/hidrostatic/flooding_angle.sql
\i ./sql/ARK/hidrostatic/entry_angle.sql
\i ./sql/ARK/hidrostatic/volume_shift.sql
\i ./sql/ARK/hidrostatic/waterline_breadth.sql
\i ./sql/ARK/hidrostatic/waterline_length.sql
\i ./sql/ARK/hidrostatic/waterline_area.sql
\i ./sql/ARK/hidrostatic/min_metacentric_height_subdivision.sql
\i ./sql/ARK/hidrostatic/delta_windage_area.sql
\i ./sql/ARK/hidrostatic/delta_windage_moment.sql
\i ./sql/ARK/hidrostatic/metacentic_height_limits.sql
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
\i ./sql/ARK/hold/hold_insert.sql
\i ./sql/ARK/draft/draft_mark.sql
\i ./sql/ARK/draft/load_line.sql
\i ./sql/ARK/draft/screw.sql
\i ./sql/ARK/draft/bow_board.sql
