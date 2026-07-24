weather_briefing_card = @weather.study_cards.find_or_initialize_by(
  title: "Weather Briefings & METAR Quick Reference"
)

weather_briefing_card.assign_attributes(
  description: "Weather briefings, METAR quick-reference codes, and common weather abbreviations.",
  position: 8
)

weather_briefing_card.save!

unless weather_briefing_card.infographic.attached?
  weather_briefing_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Weather-Briefings-and-METAR.jpg"
      )
    ),
    filename: "GroundSchool-Weather-Briefings-and-METAR.jpg"
  )
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What information should a pilot provide when requesting a weather briefing?"
) do |question|
  question.option_a = "Aircraft identification and type, VFR or IFR, route, destination, altitude, and departure time"
  question.option_b = "Only the aircraft tail number"
  question.option_c = "Only the departure airport and fuel quantity"
  question.option_d = "Passenger names and aircraft maintenance history"

  question.correct_option = "A"
  question.explanation = "Provide the aircraft identification and type, whether the flight is VFR or IFR, the route and destination, planned altitude, and expected departure time."
  question.position = 1
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "When is a standard weather briefing most appropriate?"
) do |question|
  question.option_a = "When requesting a complete briefing within about two hours of departure"
  question.option_b = "Only after the flight has begun"
  question.option_c = "Only when departure is more than six hours away"
  question.option_d = "Only when updating a previous briefing"

  question.correct_option = "A"
  question.explanation = "A standard briefing is a complete weather briefing and is appropriate when the flight is expected to begin within about two hours."
  question.position = 2
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What is the purpose of an abbreviated weather briefing?"
) do |question|
  question.option_a = "To update or supplement information from a previous briefing"
  question.option_b = "To replace all preflight planning"
  question.option_c = "To provide only airport traffic information"
  question.option_d = "To brief flights more than six hours away"

  question.correct_option = "A"
  question.explanation = "An abbreviated briefing provides limited or updated information when a pilot has already received a briefing or needs only specific details."
  question.position = 3
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "When should a pilot request an outlook briefing?"
) do |question|
  question.option_a = "When the planned departure is more than six hours away"
  question.option_b = "Only after landing"
  question.option_c = "When requesting an immediate airport clearance"
  question.option_d = "When updating a briefing received a few minutes earlier"

  question.correct_option = "A"
  question.explanation = "An outlook briefing is intended for flights planned more than six hours in advance."
  question.position = 4
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What does a plus sign before weather in a METAR indicate?"
) do |question|
  question.option_a = "Light intensity"
  question.option_b = "Moderate intensity"
  question.option_c = "Heavy intensity"
  question.option_d = "Weather in the vicinity"

  question.correct_option = "C"
  question.explanation = "A plus sign indicates heavy intensity. A minus sign indicates light intensity, and no sign indicates moderate intensity."
  question.position = 5
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What does the METAR abbreviation TS mean?"
) do |question|
  question.option_a = "Thunderstorm"
  question.option_b = "Tornado"
  question.option_c = "Temperature stable"
  question.option_d = "Tower visibility"

  question.correct_option = "A"
  question.explanation = "TS is the METAR descriptor for thunderstorm."
  question.position = 6
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What does the METAR abbreviation RA mean?"
) do |question|
  question.option_a = "Rain"
  question.option_b = "Runway alert"
  question.option_c = "Rapid airflow"
  question.option_d = "Radiation fog"

  question.correct_option = "A"
  question.explanation = "RA is the METAR precipitation abbreviation for rain."
  question.position = 7
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What does the METAR abbreviation FG mean?"
) do |question|
  question.option_a = "Fog"
  question.option_b = "Freezing drizzle"
  question.option_c = "Funnel cloud"
  question.option_d = "Flight category"

  question.correct_option = "A"
  question.explanation = "FG is the METAR obscuration abbreviation for fog."
  question.position = 8
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What is a SPECI?"
) do |question|
  question.option_a = "A special weather observation issued when significant conditions change"
  question.option_b = "A routine forecast issued every six hours"
  question.option_c = "A report of winds and temperatures aloft"
  question.option_d = "A pilot report submitted during flight"

  question.correct_option = "A"
  question.explanation = "A SPECI is an unscheduled special weather observation issued when significant weather conditions change between routine METAR reports."
  question.position = 9
end

weather_briefing_card.questions.find_or_create_by!(
  question_text: "What information does a TAF provide?"
) do |question|
  question.option_a = "A forecast of weather conditions expected near an airport"
  question.option_b = "A real-time observation of current airport weather"
  question.option_c = "A report of weather experienced by a pilot in flight"
  question.option_d = "A warning for widespread hazardous weather"

  question.correct_option = "A"
  question.explanation = "A Terminal Aerodrome Forecast, or TAF, predicts weather conditions expected within the area surrounding an airport during a specified time period."
  question.position = 10
end
