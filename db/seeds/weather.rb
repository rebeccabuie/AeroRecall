@weather = StudyDeck.find_or_create_by!(name: "Weather") do |deck|
  deck.description = "Weather theory and aviation weather services"
end

load Rails.root.join("db/seeds/weather/stability.rb")
load Rails.root.join("db/seeds/weather/icing.rb")
load Rails.root.join("db/seeds/weather/wind_shear_and_fog.rb")



