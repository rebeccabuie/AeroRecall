key_operating_rules_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Key Operating Rules"
)

key_operating_rules_card.assign_attributes(
  description: "Alcohol and drug rules, passenger safety, formation flight, and basic operating requirements.",
  position: 11
)

key_operating_rules_card.save!

unless key_operating_rules_card.infographic.attached?
  key_operating_rules_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Key-Operating-Rules.jpg")
    ),
    filename: "GroundSchool-Key-Operating-Rules.jpg"
  )
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "How long after consuming alcohol must a crewmember wait before acting or attempting to act as a crewmember?"
) do |question|
  question.option_a = "4 hours"
  question.option_b = "8 hours"
  question.option_c = "12 hours"
  question.option_d = "24 hours"

  question.correct_option = "B"
  question.explanation = "The FAA's '8 hours from bottle to throttle' rule prohibits acting or attempting to act as a crewmember within 8 hours after consuming alcohol."
  question.position = 1
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "What is the maximum allowable blood alcohol concentration (BAC) for a crewmember?"
) do |question|
  question.option_a = "0.02"
  question.option_b = "0.04"
  question.option_c = "0.08"
  question.option_d = "0.10"

  question.correct_option = "B"
  question.explanation = "A person may not act or attempt to act as a crewmember with a blood alcohol concentration of 0.04 or greater."
  question.position = 2
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "A person may not act as a crewmember while using a drug that:"
) do |question|
  question.option_a = "Requires a prescription"
  question.option_b = "Causes drowsiness only"
  question.option_c = "Affects the person's ability to safely operate the aircraft"
  question.option_d = "Has been approved by a physician"

  question.correct_option = "C"
  question.explanation = "No person may act or attempt to act as a crewmember while using any drug that affects the safe operation of the aircraft."
  question.position = 3
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "When must passengers wear their seat belts?"
) do |question|
  question.option_a = "Only during takeoff"
  question.option_b = "Only during landing"
  question.option_c = "During taxi, takeoff, and landing"
  question.option_d = "Only when instructed by ATC"

  question.correct_option = "C"
  question.explanation = "Passengers are required to occupy an approved seat or berth with their seat belt fastened during movement on the surface, takeoff, and landing."
  question.position = 4
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "When must required flight crewmembers wear shoulder harnesses if installed?"
) do |question|
  question.option_a = "Only during turbulence"
  question.option_b = "During takeoff and landing"
  question.option_c = "Only above 10,000 feet"
  question.option_d = "Only during IFR flight"

  question.correct_option = "B"
  question.explanation = "Required flight crewmembers must wear shoulder harnesses during takeoff and landing if the aircraft is equipped with them."
  question.position = 5
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "How may a child under 2 years old be carried?"
) do |question|
  question.option_a = "Only in an approved child restraint"
  question.option_b = "On the lap of an adult passenger"
  question.option_c = "Only in the front seat"
  question.option_d = "The child must occupy a separate seat"

  question.correct_option = "B"
  question.explanation = "A child under 2 years old may be held by an adult occupying an approved seat."
  question.position = 6
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "When is formation flight permitted?"
) do |question|
  question.option_a = "Any time aircraft remain 500 feet apart"
  question.option_b = "Only when conducted by military aircraft"
  question.option_c = "Only by prior arrangement with the participating pilots"
  question.option_d = "Only under IFR"

  question.correct_option = "C"
  question.explanation = "Formation flight may not be conducted unless prior arrangement has been made with the pilots of the participating aircraft."
  question.position = 7
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "Before every flight, a pilot should compare runway length with:"
) do |question|
  question.option_a = "Fuel quantity"
  question.option_b = "Takeoff and landing distance requirements"
  question.option_c = "Passenger weight only"
  question.option_d = "The airport elevation only"

  question.correct_option = "B"
  question.explanation = "Pilots should verify that the available runway length is adequate for the aircraft's required takeoff and landing distances."
  question.position = 8
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "What is the best summary of the FAA alcohol rule?"
) do |question|
  question.option_a = "8 hours, less than 0.04 BAC, and no impairing drugs"
  question.option_b = "No alcohol within 24 hours"
  question.option_c = "No alcohol while flying IFR"
  question.option_d = "No alcohol while carrying passengers"

  question.correct_option = "A"
  question.explanation = "Remember the FAA rule: at least 8 hours after drinking, BAC less than 0.04, and no drugs that affect safe operation."
  question.position = 9
end

key_operating_rules_card.questions.find_or_create_by!(
  question_text: "Who is responsible for ensuring passengers are properly briefed before flight?"
) do |question|
  question.option_a = "The airport manager"
  question.option_b = "The mechanic"
  question.option_c = "The Pilot in Command (PIC)"
  question.option_d = "The passengers"

  question.correct_option = "C"
  question.explanation = "The Pilot in Command is responsible for ensuring passengers receive the required safety briefing before flight."
  question.position = 10
end
