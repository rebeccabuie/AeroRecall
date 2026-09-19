required_equipment_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Required Equipment & Inoperative Equipment"
)

required_equipment_card.assign_attributes(
  description: "VFR day and night equipment requirements, ELT requirements, and operating with inoperative equipment.",
  position: 15
)

required_equipment_card.save!

unless required_equipment_card.infographic.attached?
  required_equipment_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Required-Equipment-and-Inoperative-Equipment.jpg"
      )
    ),
    filename: "GroundSchool-Required-Equipment-and-Inoperative-Equipment.jpg"
  )
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "Which mnemonic is commonly used to remember the equipment required for VFR flight during the day?"
) do |question|
  question.option_a = "FLAPS"
  question.option_b = "ATOMATOFLAMES"
  question.option_c = "GUMPS"
  question.option_d = "CRAFT"
  question.correct_option = "B"
  question.explanation = "ATOMATOFLAMES is a common mnemonic used to help remember the instruments and equipment required for VFR day operations."
  question.position = 1
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "Which instrument is required for VFR day flight to indicate aircraft altitude?"
) do |question|
  question.option_a = "Vertical speed indicator"
  question.option_b = "Heading indicator"
  question.option_c = "Altimeter"
  question.option_d = "Turn coordinator"
  question.correct_option = "C"
  question.explanation = "A sensitive altimeter adjustable for barometric pressure is among the instruments required for VFR day operations."
  question.position = 2
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "Which instrument is required for VFR day flight to indicate the aircraft's speed through the air?"
) do |question|
  question.option_a = "Airspeed indicator"
  question.option_b = "Vertical speed indicator"
  question.option_c = "Heading indicator"
  question.option_d = "Attitude indicator"
  question.correct_option = "A"
  question.explanation = "An airspeed indicator is required for VFR day operations."
  question.position = 3
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "What additional mnemonic is commonly used to remember equipment required for VFR flight at night?"
) do |question|
  question.option_a = "FLAPS"
  question.option_b = "ARROW"
  question.option_c = "IMSAFE"
  question.option_d = "PAVE"
  question.correct_option = "A"
  question.explanation = "FLAPS is commonly used as a memory aid for additional equipment associated with VFR night operations."
  question.position = 4
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "When is a landing light required under the VFR night equipment requirements?"
) do |question|
  question.option_a = "For every night flight"
  question.option_b = "Only when operating above 10,000 feet"
  question.option_c = "When the aircraft is operated for hire"
  question.option_d = "Only at towered airports"
  question.correct_option = "C"
  question.explanation = "For VFR flight at night, an electric landing light is required when the aircraft is operated for hire."
  question.position = 5
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "Which lights are required for VFR flight at night?"
) do |question|
  question.option_a = "Position lights"
  question.option_b = "Cabin lights only"
  question.option_c = "Taxi lights only"
  question.option_d = "Logo lights"
  question.correct_option = "A"
  question.explanation = "Approved position lights are required for VFR night operations."
  question.position = 6
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "During preflight, you discover an installed instrument is inoperative. What should you determine before deciding the aircraft may be flown without it?"
) do |question|
  question.option_a = "Whether the instrument can be repaired after the flight"
  question.option_b = "Whether the instrument or equipment is required for the aircraft or the planned operation"
  question.option_c = "Whether another pilot has flown with it broken"
  question.option_d = "Whether the flight will last less than one hour"
  question.correct_option = "B"
  question.explanation = "Before operating with inoperative equipment, determine whether the item is required by the applicable aircraft certification/equipment requirements, operating rules, or an Airworthiness Directive."
  question.position = 7
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "If an inoperative instrument or item of equipment is required by an applicable Airworthiness Directive, may the aircraft normally be operated without it under the basic provisions of §91.213(d)?"
) do |question|
  question.option_a = "Yes, if it is placarded INOPERATIVE"
  question.option_b = "Yes, during VFR flight only"
  question.option_c = "No"
  question.option_d = "Yes, if the flight remains within 50 NM"
  question.correct_option = "C"
  question.explanation = "An item required to be operative by an applicable Airworthiness Directive cannot simply be treated as optional equipment under §91.213(d)."
  question.position = 8
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "If an inoperative item is not required and operation without it is permitted, what must generally be done with the item?"
) do |question|
  question.option_a = "Ignore it until the next annual inspection"
  question.option_b = "Remove or deactivate it as appropriate and placard it INOPERATIVE"
  question.option_c = "Cover it with a checklist"
  question.option_d = "Record it only in the pilot's logbook"
  question.correct_option = "B"
  question.explanation = "Under §91.213(d), permitted inoperative equipment must be removed or deactivated as applicable and placarded INOPERATIVE. Appropriate maintenance requirements still apply."
  question.position = 9
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "After determining that an inoperative item is not otherwise required, what additional determination must be made before flight?"
) do |question|
  question.option_a = "That the flight can be completed before sunset"
  question.option_b = "That the inoperative item does not constitute a hazard to the aircraft"
  question.option_c = "That the airport has maintenance available"
  question.option_d = "That another aircraft has the same equipment installed"
  question.correct_option = "B"
  question.explanation = "The appropriate determination must be made that the inoperative instrument or equipment does not constitute a hazard to the aircraft for the operation."
  question.position = 10
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "How often must an ELT generally be inspected?"
) do |question|
  question.option_a = "Every 6 calendar months"
  question.option_b = "Every 12 calendar months"
  question.option_c = "Every 24 calendar months"
  question.option_d = "Every 100 flight hours"
  question.correct_option = "B"
  question.explanation = "An emergency locator transmitter is generally inspected within 12 calendar months after its last inspection."
  question.position = 11
end

required_equipment_card.questions.find_or_create_by!(
  question_text: "When must an ELT battery generally be replaced or recharged?"
) do |question|
  question.option_a = "After every flight"
  question.option_b = "Only during the annual inspection"
  question.option_c = "After more than 1 cumulative hour of use or when 50 percent of its useful life has expired"
  question.option_d = "Every 24 calendar months regardless of battery type"
  question.correct_option = "C"
  question.explanation = "ELT batteries must generally be replaced or recharged after more than 1 cumulative hour of transmitter use or when 50 percent of their useful life has expired."
  question.position = 12
end
