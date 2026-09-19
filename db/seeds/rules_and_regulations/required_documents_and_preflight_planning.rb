required_documents_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Required Documents & Preflight Planning"
)

required_documents_card.assign_attributes(
  description: "Required aircraft documents and the preflight information a pilot must know before flight.",
  position: 16
)

required_documents_card.save!

unless required_documents_card.infographic.attached?
  required_documents_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Required-Documents-and-Preflight-Planning.jpg"
      )
    ),
    filename: "GroundSchool-Required-Documents-and-Preflight-Planning.jpg"
  )
end

required_documents_card.questions.find_or_create_by!(
  question_text: "Which mnemonic is commonly used to remember required aircraft documents?"
) do |question|
  question.option_a = "NWKRAFT"
  question.option_b = "ARROW"
  question.option_c = "ATOMATOFLAMES"
  question.option_d = "FLAPS"
  question.correct_option = "B"
  question.explanation = "ARROW is a common memory aid for Airworthiness certificate, Registration, Radio station license when required, Operating limitations, and Weight and balance information."
  question.position = 1
end

required_documents_card.questions.find_or_create_by!(
  question_text: "Which aircraft certificate must be displayed at the cabin or cockpit entrance so it is legible to passengers or crew?"
) do |question|
  question.option_a = "Registration certificate"
  question.option_b = "Airworthiness certificate"
  question.option_c = "Radio station license"
  question.option_d = "Pilot certificate"
  question.correct_option = "B"
  question.explanation = "The aircraft's airworthiness certificate must be displayed at the cabin or cockpit entrance so that it is legible to passengers or crew."
  question.position = 2
end

required_documents_card.questions.find_or_create_by!(
  question_text: "What is the primary purpose of the aircraft registration certificate?"
) do |question|
  question.option_a = "It establishes the aircraft's registration with its owner"
  question.option_b = "It proves the aircraft has passed its annual inspection"
  question.option_c = "It lists the aircraft's operating limitations"
  question.option_d = "It authorizes the pilot to operate the aircraft"
  question.correct_option = "A"
  question.explanation = "The registration certificate identifies the aircraft's registration and registered owner. It is separate from the airworthiness certificate."
  question.position = 3
end

required_documents_card.questions.find_or_create_by!(
  question_text: "For a private aircraft operating entirely within the United States, when is an individual FCC aircraft radio station license generally required?"
) do |question|
  question.option_a = "For every flight using a VHF radio"
  question.option_b = "Only when flying above 10,000 feet"
  question.option_c = "Generally not for ordinary domestic operations, but it may be required for international operations or when otherwise required"
  question.option_d = "Only when operating in Class B airspace"
  question.correct_option = "C"
  question.explanation = "Private aircraft operating domestically generally do not need an individual FCC aircraft radio station license. International operations may require one."
  question.position = 4
end

required_documents_card.questions.find_or_create_by!(
  question_text: "Where can a pilot find operating limitations applicable to a specific aircraft?"
) do |question|
  question.option_a = "Only in NOTAMs"
  question.option_b = "In the approved flight manual or approved manual material, markings, and placards as applicable"
  question.option_c = "Only on the aircraft registration certificate"
  question.option_d = "Only in airport information publications"
  question.correct_option = "B"
  question.explanation = "Operating limitations may be contained in the approved flight manual or approved manual material, markings, and placards, depending on the aircraft."
  question.position = 5
end

required_documents_card.questions.find_or_create_by!(
  question_text: "What does the mnemonic NWKRAFT help a pilot remember?"
) do |question|
  question.option_a = "Required aircraft documents"
  question.option_b = "VFR equipment requirements"
  question.option_c = "Important preflight planning information"
  question.option_d = "Aircraft inspection intervals"
  question.correct_option = "C"
  question.explanation = "NWKRAFT is a common memory aid for preflight planning: NOTAMs, Weather, Known ATC delays, Runway lengths, Alternatives, Fuel requirements, and Takeoff and landing distances."
  question.position = 6
end

required_documents_card.questions.find_or_create_by!(
  question_text: "Before an IFR flight or a flight not in the vicinity of an airport, which information must the pilot in command become familiar with?"
) do |question|
  question.option_a = "Weather reports and forecasts, fuel requirements, alternatives, and known ATC delays"
  question.option_b = "Only the destination airport's current weather"
  question.option_c = "Only runway lengths and airport elevation"
  question.option_d = "Only NOTAMs affecting the departure airport"
  question.correct_option = "A"
  question.explanation = "For IFR flights or flights not in the vicinity of an airport, preflight action includes weather reports and forecasts, fuel requirements, alternatives if the planned flight cannot be completed, and known ATC delays."
  question.position = 7
end

required_documents_card.questions.find_or_create_by!(
  question_text: "Before which flights must a pilot become familiar with runway lengths at airports of intended use?"
) do |question|
  question.option_a = "IFR flights only"
  question.option_b = "Cross-country flights only"
  question.option_c = "Night flights only"
  question.option_d = "Any flight"
  question.correct_option = "D"
  question.explanation = "For any flight, the pilot in command must become familiar with runway lengths at airports of intended use."
  question.position = 8
end

required_documents_card.questions.find_or_create_by!(
  question_text: "Why should a pilot review NOTAMs during preflight planning?"
) do |question|
  question.option_a = "To determine the aircraft's maximum gross weight"
  question.option_b = "To learn about temporary or changing conditions that may affect the flight"
  question.option_c = "To determine whether the aircraft registration is current"
  question.option_d = "To calculate magnetic variation"
  question.correct_option = "B"
  question.explanation = "NOTAMs provide time-sensitive information affecting flight operations, such as runway closures, lighting outages, and other temporary changes."
  question.position = 9
end

required_documents_card.questions.find_or_create_by!(
  question_text: "What does the 'K' in the NWKRAFT mnemonic represent?"
) do |question|
  question.option_a = "Known ATC delays"
  question.option_b = "Knots of crosswind"
  question.option_c = "Known icing"
  question.option_d = "Kollsman window setting"
  question.correct_option = "A"
  question.explanation = "The K in NWKRAFT represents known traffic delays of which the pilot in command has been advised by ATC."
  question.position = 10
end

required_documents_card.questions.find_or_create_by!(
  question_text: "A pilot discovers during preflight planning that the planned destination may become unusable. Which NWKRAFT item addresses this situation?"
) do |question|
  question.option_a = "Runway lengths"
  question.option_b = "Alternatives"
  question.option_c = "Known ATC delays"
  question.option_d = "Takeoff distances"
  question.correct_option = "B"
  question.explanation = "The A in NWKRAFT represents alternatives available if the planned flight cannot be completed as intended."
  question.position = 11
end

required_documents_card.questions.find_or_create_by!(
  question_text: "When evaluating takeoff and landing performance before a flight, which conditions may be relevant?"
) do |question|
  question.option_a = "Airport elevation, runway slope, aircraft gross weight, wind, and temperature"
  question.option_b = "Only aircraft registration date and pilot age"
  question.option_c = "Only runway heading and magnetic variation"
  question.option_d = "Only fuel price and airport operating hours"
  question.correct_option = "A"
  question.explanation = "Takeoff and landing performance can be affected by conditions including airport elevation, runway slope, aircraft gross weight, wind, and temperature."
  question.position = 12
end

required_documents_card.questions.find_or_create_by!(
  question_text: "A knowledge-test question asks which item is required aboard the aircraft rather than information reviewed during preflight planning. Which mnemonic should come to mind?"
) do |question|
  question.option_a = "NWKRAFT"
  question.option_b = "ARROW"
  question.option_c = "FLAPS"
  question.option_d = "ATOMATOFLAMES"
  question.correct_option = "B"
  question.explanation = "Think ARROW for aircraft documents and required onboard information. Think NWKRAFT for preflight planning."
  question.position = 13
end

required_documents_card.questions.find_or_create_by!(
  question_text: "A knowledge-test question asks what information the pilot should review before beginning a flight. Which mnemonic is the better starting point?"
) do |question|
  question.option_a = "ARROW"
  question.option_b = "FLAPS"
  question.option_c = "NWKRAFT"
  question.option_d = "ATOMATOFLAMES"
  question.correct_option = "C"
  question.explanation = "NWKRAFT is the preflight-planning mnemonic. ARROW is associated with required aircraft documents."
  question.position = 14
end
