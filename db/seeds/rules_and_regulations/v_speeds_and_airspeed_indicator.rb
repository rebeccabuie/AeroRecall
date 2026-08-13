v_speeds_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "V-Speeds & Airspeed Indicator"
)

v_speeds_card.assign_attributes(
  description: "Critical V-speeds, climb performance, stall speeds, and airspeed indicator markings.",
  position: 7
)

v_speeds_card.save!

unless v_speeds_card.infographic.attached?
  v_speeds_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-V-Speeds-and-Airspeed-Indicator.jpg")),
    filename: "GroundSchool-V-Speeds-and-Airspeed-Indicator.jpg"
  )
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VNE represent?"
) do |question|
  question.option_a = "Maximum structural cruising speed"
  question.option_b = "Never-exceed speed"
  question.option_c = "Best rate-of-climb speed"
  question.option_d = "Maximum flap-extended speed"

  question.correct_option = "B"
  question.explanation = "VNE is the never-exceed speed. It is marked by the red radial line on the airspeed indicator and must not be exceeded."
  question.position = 1
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VNO represent?"
) do |question|
  question.option_a = "Maximum structural cruising speed"
  question.option_b = "Rotation speed"
  question.option_c = "Best angle-of-climb speed"
  question.option_d = "Maximum landing gear extended speed"

  question.correct_option = "A"
  question.explanation = "VNO is the maximum structural cruising speed. It marks the upper limit of the normal operating range and the beginning of the yellow caution range."
  question.position = 2
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VFE represent?"
) do |question|
  question.option_a = "Maximum speed with flaps extended"
  question.option_b = "Maximum speed with landing gear extended"
  question.option_c = "Best rate-of-climb speed"
  question.option_d = "Stall speed in a clean configuration"

  question.correct_option = "A"
  question.explanation = "VFE is the maximum speed at which the airplane may be operated with the flaps extended."
  question.position = 3
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VLE represent?"
) do |question|
  question.option_a = "Maximum speed with landing gear extended"
  question.option_b = "Maximum flap-extended speed"
  question.option_c = "Never-exceed speed"
  question.option_d = "Rotation speed"

  question.correct_option = "A"
  question.explanation = "VLE is the maximum speed at which the aircraft may be safely flown with the landing gear extended."
  question.position = 4
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What is VA?"
) do |question|
  question.option_a = "Design maneuvering speed"
  question.option_b = "Best angle-of-climb speed"
  question.option_c = "Maximum structural cruising speed"
  question.option_d = "Landing configuration stall speed"

  question.correct_option = "A"
  question.explanation = "VA is design maneuvering speed. It is an important operating speed for maneuvering and rough-air considerations and may vary with aircraft weight."
  question.position = 5
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VR represent?"
) do |question|
  question.option_a = "Best rate-of-climb speed"
  question.option_b = "Rotation speed"
  question.option_c = "Never-exceed speed"
  question.option_d = "Maximum flap-extended speed"

  question.correct_option = "B"
  question.explanation = "VR is rotation speed, the speed at which the pilot begins raising the nose during the takeoff roll."
  question.position = 6
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "Which V-speed provides the greatest altitude gain over the shortest horizontal distance?"
) do |question|
  question.option_a = "VY"
  question.option_b = "VA"
  question.option_c = "VX"
  question.option_d = "VR"

  question.correct_option = "C"
  question.explanation = "VX is the best angle-of-climb speed. It provides the greatest altitude gain for a given horizontal distance and is useful for clearing obstacles."
  question.position = 7
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "Which V-speed provides the greatest altitude gain in the shortest amount of time?"
) do |question|
  question.option_a = "VX"
  question.option_b = "VY"
  question.option_c = "VFE"
  question.option_d = "VS1"

  question.correct_option = "B"
  question.explanation = "VY is the best rate-of-climb speed. It provides the greatest altitude gain in the shortest amount of time."
  question.position = 8
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VSO represent?"
) do |question|
  question.option_a = "Stall speed in a specified landing configuration"
  question.option_b = "Stall speed in a clean configuration"
  question.option_c = "Maximum structural cruising speed"
  question.option_d = "Maximum landing gear extended speed"

  question.correct_option = "A"
  question.explanation = "VSO is the stall speed or minimum steady flight speed in the landing configuration."
  question.position = 9
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does VS1 represent?"
) do |question|
  question.option_a = "Stall speed in a specified configuration, commonly associated with the clean configuration"
  question.option_b = "Never-exceed speed"
  question.option_c = "Best angle-of-climb speed"
  question.option_d = "Maximum flap-extended speed"

  question.correct_option = "A"
  question.explanation = "VS1 is the stall speed or minimum steady flight speed obtained in a specified configuration. In many training aircraft, it corresponds to the clean configuration."
  question.position = 10
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does the white arc on an airspeed indicator represent?"
) do |question|
  question.option_a = "The normal operating range"
  question.option_b = "The flap operating range"
  question.option_c = "The caution range"
  question.option_d = "The never-exceed range"

  question.correct_option = "B"
  question.explanation = "The white arc represents the flap operating range. Its lower limit is VSO and its upper limit is VFE."
  question.position = 11
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does the green arc on an airspeed indicator represent?"
) do |question|
  question.option_a = "The flap operating range"
  question.option_b = "The normal operating range"
  question.option_c = "The caution range"
  question.option_d = "The prohibited operating range"

  question.correct_option = "B"
  question.explanation = "The green arc is the normal operating range. It generally extends from VS1 to VNO."
  question.position = 12
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "What does the yellow arc on an airspeed indicator represent?"
) do |question|
  question.option_a = "Normal operations in turbulent air"
  question.option_b = "The flap operating range"
  question.option_c = "A caution range for smooth-air operation"
  question.option_d = "The stall warning range"

  question.correct_option = "C"
  question.explanation = "The yellow arc is the caution range between VNO and VNE. Operation in this range should be conducted only in smooth air and with caution."
  question.position = 13
end

v_speeds_card.questions.find_or_create_by!(
  question_text: "Where should a pilot verify the exact V-speeds for a particular airplane?"
) do |question|
  question.option_a = "A sectional chart"
  question.option_b = "The Pilot's Operating Handbook or approved aircraft flight manual"
  question.option_c = "The Chart Supplement"
  question.option_d = "The airport diagram"

  question.correct_option = "B"
  question.explanation = "V-speeds are aircraft-specific. Pilots should verify the applicable speeds in the Pilot's Operating Handbook or approved aircraft flight manual."
  question.position = 14
end
