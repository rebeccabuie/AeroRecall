@weather = StudyDeck.find_or_create_by!(name: "Weather") do |deck|
  deck.description = "Weather theory and aviation weather services"
end

load Rails.root.join("db/seeds/weather/stability.rb")
load Rails.root.join("db/seeds/weather/icing.rb")
load Rails.root.join("db/seeds/weather/cloud_formation_and_cloud_bases.rb")
load Rails.root.join("db/seeds/weather/thunderstorm_hazards.rb")
load Rails.root.join("db/seeds/weather/wind_shear_and_fog.rb")
load Rails.root.join("db/seeds/weather/convection_and_fronts.rb")
load Rails.root.join("db/seeds/weather/aviation_weather_warnings.rb")
load Rails.root.join("db/seeds/weather/weather_briefings_and_metar.rb")
load Rails.root.join("db/seeds/weather/metar_decoder.rb")
load Rails.root.join("db/seeds/weather/weather_reports_and_forecasts.rb")
load Rails.root.join("db/seeds/weather/types_of_fronts.rb")
load Rails.root.join("db/seeds/weather/cloud_types_and_names.rb")
