aerobatic_rules_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Aerobatic & Parachute Rules"
)

aerobatic_rules_card.assign_attributes(
  description: "Aerobatic flight limitations, parachute requirements, operating restrictions, and FAA test traps.",
  position: 12
)

aerobatic_rules_card.save!

unless aerobatic_rules_card.infographic.attached?
  aerobatic_rules_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Aerobatic-and-Parachute-Rules.jpg")
    ),
    filename: "GroundSchool-Aerobatic-and-Parachute-Rules.jpg"
  )
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "When is an approved parachute generally required for aerobatic flight?"
) do |question|
  question.option_a = "Whenever the aircraft exceeds either 60° of bank or 30° of pitch while carrying another person"
  question.option_b = "Whenever the aircraft exceeds both 60° of bank and 30° of pitch"
  question.option_c = "Only during formation flight"
  question.option_d = "Any time a spin is performed"

  question.correct_option = "A"
  question.explanation = "An approved parachute is generally required when carrying another person and exceeding either 60° of bank or 30° of pitch."
  question.position = 1
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Which maneuver does NOT require parachutes when performed as part of normal flight training?"
) do |question|
  question.option_a = "Loops"
  question.option_b = "Steep turns beyond 60°"
  question.option_c = "Spins and stalls"
  question.option_d = "Aileron rolls"

  question.correct_option = "C"
  question.explanation = "Intentional spins and stalls performed as part of normal flight training are exempt from the parachute requirement."
  question.position = 2
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "How often must a synthetic parachute be repacked?"
) do |question|
  question.option_a = "60 days"
  question.option_b = "90 days"
  question.option_c = "180 days"
  question.option_d = "365 days"

  question.correct_option = "C"
  question.explanation = "Synthetic parachutes must be repacked every 180 days."
  question.position = 3
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "How often must a natural fiber parachute be repacked?"
) do |question|
  question.option_a = "30 days"
  question.option_b = "60 days"
  question.option_c = "180 days"
  question.option_d = "365 days"

  question.correct_option = "B"
  question.explanation = "Natural fiber parachutes must be repacked every 60 days."
  question.position = 4
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Below what altitude is aerobatic flight prohibited?"
) do |question|
  question.option_a = "500 feet AGL"
  question.option_b = "1,000 feet AGL"
  question.option_c = "1,500 feet AGL"
  question.option_d = "2,000 feet AGL"

  question.correct_option = "C"
  question.explanation = "Aerobatic flight may not be conducted below 1,500 feet AGL."
  question.position = 5
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Aerobatic flight is prohibited when flight visibility is less than:"
) do |question|
  question.option_a = "1 statute mile"
  question.option_b = "2 statute miles"
  question.option_c = "3 statute miles"
  question.option_d = "5 statute miles"

  question.correct_option = "C"
  question.explanation = "Aerobatic flight is prohibited when flight visibility is less than 3 statute miles."
  question.position = 6
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Which location is prohibited for aerobatic flight?"
) do |question|
  question.option_a = "Over open water"
  question.option_b = "Over congested areas"
  question.option_c = "Over private property"
  question.option_d = "Over farmland"

  question.correct_option = "B"
  question.explanation = "Aerobatic flight may not be conducted over congested areas or open-air assemblies of people."
  question.position = 7
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Within what distance of a federal airway is aerobatic flight prohibited?"
) do |question|
  question.option_a = "2 NM"
  question.option_b = "3 NM"
  question.option_c = "4 NM"
  question.option_d = "5 NM"

  question.correct_option = "C"
  question.explanation = "Aerobatic flight may not be conducted within 4 nautical miles of the centerline of a federal airway."
  question.position = 8
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Which statement about restricted-category aircraft is correct?"
) do |question|
  question.option_a = "They may operate over densely populated areas."
  question.option_b = "They may operate from any airport."
  question.option_c = "They may not operate over densely populated areas or congested airways."
  question.option_d = "They may only operate at night."

  question.correct_option = "C"
  question.explanation = "Restricted-category aircraft have operating limitations, including prohibitions against operating over densely populated areas and congested airways."
  question.position = 9
end

aerobatic_rules_card.questions.find_or_create_by!(
  question_text: "Experimental aircraft may operate over densely populated areas only when:"
) do |question|
  question.option_a = "Flying below 1,500 feet AGL"
  question.option_b = "The pilot has a commercial certificate"
  question.option_c = "Specifically authorized by the FAA"
  question.option_d = "Carrying no passengers"

  question.correct_option = "C"
  question.explanation = "Experimental aircraft may operate contrary to their normal operating limitations only when specifically authorized by the FAA."
  question.position = 10
end
