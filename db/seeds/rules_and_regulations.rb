@rules_and_regs = StudyDeck.find_or_create_by!(
  name: "Rules & Regulations"
) do |deck|
  deck.description = "FAA rules, regulations, and operating limitations."
end

load Rails.root.join("db/seeds/rules_and_regulations/altitudes_and_speed_limits.rb")
load Rails.root.join("db/seeds/rules_and_regulations/traffic_pattern_operations.rb")
load Rails.root.join("db/seeds/rules_and_regulations/right_of_way_rules.rb")
load Rails.root.join("db/seeds/rules_and_regulations/pilot_certificates_endorsements.rb")
load Rails.root.join("db/seeds/rules_and_regulations/recency_rules.rb")
load Rails.root.join("db/seeds/rules_and_regulations/maintenance_and_airworthiness.rb")
load Rails.root.join("db/seeds/rules_and_regulations/v_speeds_and_airspeed_indicator.rb")
load Rails.root.join("db/seeds/rules_and_regulations/aircraft_categories_and_classes.rb")
load Rails.root.join("db/seeds/rules_and_regulations/accident_and_incident_reporting.rb")
load Rails.root.join("db/seeds/rules_and_regulations/aircraft_inspections_and_maintenance.rb")
load Rails.root.join("db/seeds/rules_and_regulations/key_operating_rules.rb")
load Rails.root.join("db/seeds/rules_and_regulations/aerobatic_and_parachute_rules.rb")
