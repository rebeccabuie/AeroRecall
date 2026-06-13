warnings_card = @weather.study_cards.find_or_create_by!(title: "Aviation Weather Warnings") do |card|
  card.description = "AIRMETs, SIGMETs, Convective SIGMETs, HIWAS, and in-flight weather services."
  card.position = 5
end

unless warnings_card.infographic.attached?
  warnings_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Aviation-Weather-Warnings.jpg")),
    filename: "GroundSchool-Aviation-Weather-Warnings.jpg"
  )
end

warnings_card.questions.find_or_create_by!(
  question_text: "What type of hazards are AIRMETs issued for?"
) do |question|
  question.option_a = "Moderate hazards that may affect smaller aircraft"
  question.option_b = "Only tornadoes and hail"
  question.option_c = "Only volcanic ash"
  question.option_d = "Severe hazards affecting all aircraft"

  question.correct_option = "A"
  question.explanation = "AIRMETs are advisories for widespread moderate weather hazards that may affect smaller aircraft."
  question.position = 1
end

warnings_card.questions.find_or_create_by!(
  question_text: "What does AIRMET Sierra warn pilots about?"
) do |question|
  question.option_a = "Icing conditions"
  question.option_b = "Turbulence and strong winds"
  question.option_c = "IFR conditions and mountain obscuration"
  question.option_d = "Thunderstorms"

  question.correct_option = "C"
  question.explanation = "AIRMET Sierra is issued for IFR conditions and extensive mountain obscuration."
  question.position = 2
end

warnings_card.questions.find_or_create_by!(
  question_text: "What does AIRMET Tango warn pilots about?"
) do |question|
  question.option_a = "IFR conditions"
  question.option_b = "Turbulence, sustained surface winds, and low-level wind shear"
  question.option_c = "Moderate icing"
  question.option_d = "Volcanic ash"

  question.correct_option = "B"
  question.explanation = "AIRMET Tango is issued for moderate turbulence, sustained surface winds of 30 knots or more, and low-level wind shear."
  question.position = 3
end

warnings_card.questions.find_or_create_by!(
  question_text: "What does AIRMET Zulu warn pilots about?"
) do |question|
  question.option_a = "IFR conditions and mountain obscuration"
  question.option_b = "Turbulence and strong surface winds"
  question.option_c = "Moderate icing and freezing levels"
  question.option_d = "Severe thunderstorms"

  question.correct_option = "C"
  question.explanation = "AIRMET Zulu is issued for moderate icing and provides freezing level information."
  question.position = 4
end

warnings_card.questions.find_or_create_by!(
  question_text: "What is a SIGMET issued for?"
) do |question|
  question.option_a = "Routine weather observations"
  question.option_b = "Weather hazards significant to all aircraft"
  question.option_c = "Only moderate icing"
  question.option_d = "Airport traffic information"

  question.correct_option = "B"
  question.explanation = "SIGMETs are issued for significant weather hazards such as severe icing, severe turbulence, dust storms, volcanic ash, and other conditions hazardous to all aircraft."
  question.position = 5
end

warnings_card.questions.find_or_create_by!(
  question_text: "Which condition requires a Convective SIGMET?"
) do |question|
  question.option_a = "Moderate icing"
  question.option_b = "Mountain obscuration"
  question.option_c = "Thunderstorms meeting specific severe criteria"
  question.option_d = "Surface winds above 20 knots"

  question.correct_option = "C"
  question.explanation = "Convective SIGMETs are issued for severe thunderstorms, embedded thunderstorms, lines of thunderstorms, or thunderstorms producing significant hazards."
  question.position = 6
end

warnings_card.questions.find_or_create_by!(
  question_text: "What is HIWAS used for?"
) do |question|
  question.option_a = "Broadcasting hazardous in-flight weather advisories"
  question.option_b = "Issuing routine airport clearances"
  question.option_c = "Providing runway lighting control"
  question.option_d = "Calculating density altitude"

  question.correct_option = "A"
  question.explanation = "HIWAS stands for Hazardous Inflight Weather Advisory Service and broadcasts hazardous weather information to pilots."
  question.position = 7
end

warnings_card.questions.find_or_create_by!(
  question_text: "Which aviation weather service was discontinued and replaced by Flight Service?"
) do |question|
  question.option_a = "HIWAS"
  question.option_b = "AWOS"
  question.option_c = "Flight Watch"
  question.option_d = "ATIS"

  question.correct_option = "C"
  question.explanation = "Flight Watch (122.0 MHz) was discontinued in 2015. Its services were absorbed into Flight Service."
  question.position = 8
end
