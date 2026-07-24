warnings_card = @weather.study_cards.find_or_initialize_by(
  title: "Aviation Weather Warnings"
)

warnings_card.assign_attributes(
  description: "AIRMETs, SIGMETs, Convective SIGMETs, HIWAS, and in-flight weather services.",
  position: 7
)

warnings_card.save!

unless warnings_card.infographic.attached?
  warnings_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Aviation-Weather-Warnings.jpg"
      )
    ),
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
  question.explanation = "AIRMET Zulu is issued for moderate icing and provides freezing-level information."
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
  question.explanation = "SIGMETs are issued for significant nonconvective hazards such as severe icing, severe or extreme turbulence, dust storms, sandstorms, and volcanic ash that may affect all aircraft."
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
  question.explanation = "HIWAS stands for Hazardous Inflight Weather Advisory Service and provided continuous recorded hazardous weather broadcasts over selected VOR frequencies."
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
  question.explanation = "Flight Watch on 122.0 MHz was discontinued in 2015, and its services were absorbed into Flight Service."
  question.position = 8
end

warnings_card.questions.find_or_create_by!(
  question_text: "Which combination of conditions may result in a Convective SIGMET?"
) do |question|
  question.option_a = "Tornadoes, embedded thunderstorms, hail at least 3/4 inch, and severe thunderstorms"
  question.option_b = "Moderate icing, light turbulence, and mountain obscuration"
  question.option_c = "Low ceilings, fog, and light rain"
  question.option_d = "Volcanic ash, dust storms, and sandstorms"

  question.correct_option = "A"
  question.explanation = "Convective SIGMETs are issued for hazardous thunderstorm-related conditions, including tornadoes, embedded thunderstorms, hail at least 3/4 inch in diameter, and severe thunderstorms."
  question.position = 9
end

warnings_card.questions.find_or_create_by!(
  question_text: "Which frequency can a pilot use to contact Flight Service for in-flight weather information?"
) do |question|
  question.option_a = "121.5 MHz"
  question.option_b = "122.0 MHz"
  question.option_c = "122.2 MHz"
  question.option_d = "123.0 MHz"

  question.correct_option = "C"
  question.explanation = "Flight Service can commonly be contacted on 122.2 MHz for in-flight weather information. Pilots should verify the appropriate frequency for their location."
  question.position = 10
end
