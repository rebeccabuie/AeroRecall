weather_reports_card = @weather.study_cards.find_or_initialize_by(
  title: "Weather Reports and Forecasts"
)

weather_reports_card.assign_attributes(
  description: "PIREPs, TAFs, Winds and Temperatures Aloft, and Prog Charts.",
  position: 10
)

weather_reports_card.save!

unless weather_reports_card.infographic.attached?
  weather_reports_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Weather-Reports-and-Forecasts.jpg"
      )
    ),
    filename: "GroundSchool-Weather-Reports-and-Forecasts.jpg"
  )
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "What is the purpose of a PIREP?"
) do |question|
  question.option_a = "To provide real-time weather conditions reported by pilots"
  question.option_b = "To forecast weather for the next 24 hours"
  question.option_c = "To issue thunderstorm advisories"
  question.option_d = "To report airport runway conditions"

  question.correct_option = "A"
  question.explanation = "PIREPs (Pilot Reports) provide real-time weather information observed by pilots during flight."
  question.position = 1
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "Which of the following conditions are commonly included in a PIREP?"
) do |question|
  question.option_a = "Icing, turbulence, cloud tops and bases, and wind shear"
  question.option_b = "Runway closures and airport lighting"
  question.option_c = "Fuel prices and airport services"
  question.option_d = "Aircraft maintenance discrepancies"

  question.correct_option = "A"
  question.explanation = "PIREPs commonly include cloud tops and bases, icing, turbulence, wind shear, and other significant weather encountered by pilots."
  question.position = 2
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "What is a TAF?"
) do |question|
  question.option_a = "A forecast of expected weather conditions at an airport"
  question.option_b = "A report of current weather conditions"
  question.option_c = "A pilot weather report"
  question.option_d = "A surface analysis chart"

  question.correct_option = "A"
  question.explanation = "A Terminal Aerodrome Forecast (TAF) predicts expected weather conditions for an airport and the surrounding area."
  question.position = 3
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "Approximately what area does a TAF cover?"
) do |question|
  question.option_a = "About a 5 statute mile radius around the airport"
  question.option_b = "The entire state"
  question.option_c = "A 100 nautical mile radius"
  question.option_d = "Only the airport runway"

  question.correct_option = "A"
  question.explanation = "A TAF forecasts weather within approximately a 5 statute mile radius of the airport."
  question.position = 4
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "What information is provided in a Winds and Temperatures Aloft Forecast?"
) do |question|
  question.option_a = "Forecast wind direction, wind speed, and temperature at various altitudes"
  question.option_b = "Current surface visibility and ceiling"
  question.option_c = "Thunderstorm advisories"
  question.option_d = "Airport runway conditions"

  question.correct_option = "A"
  question.explanation = "Winds and Temperatures Aloft Forecasts provide forecast wind direction, wind speed, and temperature at selected altitudes."
  question.position = 5
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "How are wind direction and speed represented in a Winds and Temperatures Aloft Forecast?"
) do |question|
  question.option_a = "As coded groups showing wind direction and speed"
  question.option_b = "As arrows on a weather radar image"
  question.option_c = "Only with written descriptions"
  question.option_d = "Using cloud coverage symbols"

  question.correct_option = "A"
  question.explanation = "Winds and Temperatures Aloft Forecasts use coded groups to represent forecast wind direction, wind speed, and temperature."
  question.position = 6
end

weather_reports_card.questions.find_or_create_by!(
  question_text: "What is the purpose of a Prog Chart?"
) do |question|
  question.option_a = "To show forecast weather conditions over a large geographic area"
  question.option_b = "To report current weather at an airport"
  question.option_c = "To decode METAR observations"
  question.option_d = "To report pilot observations"

  question.correct_option = "A"
  question.explanation = "A Prognostic (Prog) Chart shows forecast weather features such as fronts, pressure systems, precipitation, and areas of IFR or MVFR conditions."
  question.position = 7
end
