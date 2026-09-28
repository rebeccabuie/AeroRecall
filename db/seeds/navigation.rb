@navigation = StudyDeck.find_or_create_by!(name: "Navigation") do |deck|
  deck.description = "Sectional charts, airport data, navigation systems, flight planning, and pilotage."
end

load Rails.root.join(
  "db/seeds/navigation/chart_symbols_airport_data.rb"
)

load Rails.root.join(
  "db/seeds/navigation/chart_symbols_airspace_boundaries.rb"
)

load Rails.root.join(
  "db/seeds/navigation/chart_symbols_airports_navaids_obstacles.rb"
)
