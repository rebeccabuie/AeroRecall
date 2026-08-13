aircraft_categories_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Aircraft Categories & Classes"
)

aircraft_categories_card.assign_attributes(
  description: "Aircraft categories and classes, pilot ratings, night currency, dropping objects, and experimental aircraft.",
  position: 8
)

aircraft_categories_card.save!

unless aircraft_categories_card.infographic.attached?
  aircraft_categories_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Aircraft-Categories-and-Classes.jpg")),
    filename: "GroundSchool-Aircraft-Categories-and-Classes.jpg"
  )
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "Which airplane class rating applies to a single-engine airplane that operates from land?"
) do |question|
  question.option_a = "SES"
  question.option_b = "SEL"
  question.option_c = "MEL"
  question.option_d = "MES"

  question.correct_option = "B"
  question.explanation = "SEL means Single-Engine Land. Airplane class ratings identify both the number of engines and whether the aircraft is designed for land or sea operations."
  question.position = 1
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "What does SES mean in an airplane rating?"
) do |question|
  question.option_a = "Single-Engine Sea"
  question.option_b = "Single-Engine Standard"
  question.option_c = "Special Engine System"
  question.option_d = "Single-Engine Sport"

  question.correct_option = "A"
  question.explanation = "SES stands for Single-Engine Sea."
  question.position = 2
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "Which airplane class rating applies to a multi-engine airplane that operates from land?"
) do |question|
  question.option_a = "SEL"
  question.option_b = "SES"
  question.option_c = "MEL"
  question.option_d = "MES"

  question.correct_option = "C"
  question.explanation = "MEL means Multi-Engine Land."
  question.position = 3
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "What does MES mean in an airplane rating?"
) do |question|
  question.option_a = "Multi-Engine Standard"
  question.option_b = "Multi-Engine Sea"
  question.option_c = "Multiple Engine System"
  question.option_d = "Maximum Engine Speed"

  question.correct_option = "B"
  question.explanation = "MES stands for Multi-Engine Sea."
  question.position = 4
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "Which classes are included in the rotorcraft category?"
) do |question|
  question.option_a = "Airplane and glider"
  question.option_b = "Balloon and airship"
  question.option_c = "Helicopter and gyroplane"
  question.option_d = "Single-engine and multi-engine"

  question.correct_option = "C"
  question.explanation = "The rotorcraft category includes the helicopter and gyroplane classes."
  question.position = 5
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "Which classes are included in the lighter-than-air category?"
) do |question|
  question.option_a = "Balloon and airship"
  question.option_b = "Helicopter and gyroplane"
  question.option_c = "Glider and balloon"
  question.option_d = "Airplane and airship"

  question.correct_option = "A"
  question.explanation = "The lighter-than-air category includes balloons and airships."
  question.position = 6
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "What two questions help identify an airplane class rating?"
) do |question|
  question.option_a = "How fast is it and how high can it fly?"
  question.option_b = "How many engines does it have and does it operate from land or sea?"
  question.option_c = "How much does it weigh and how many seats does it have?"
  question.option_d = "Is it pressurized and does it have retractable gear?"

  question.correct_option = "B"
  question.explanation = "For airplane class ratings, think about two things: whether the airplane is single-engine or multi-engine, and whether it operates from land or sea."
  question.position = 7
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "For passenger currency purposes, what time period is considered night?"
) do |question|
  question.option_a = "Sunset to sunrise"
  question.option_b = "30 minutes after sunset to 30 minutes before sunrise"
  question.option_c = "1 hour after sunset to 1 hour before sunrise"
  question.option_d = "The beginning of evening civil twilight through morning civil twilight"

  question.correct_option = "C"
  question.explanation = "For passenger-carrying currency, the applicable night period begins one hour after sunset and ends one hour before sunrise."
  question.position = 8
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "May a pilot drop an object from an aircraft?"
) do |question|
  question.option_a = "No, dropping any object from an aircraft is prohibited"
  question.option_b = "Yes, as long as reasonable precautions are taken to avoid injury or damage"
  question.option_c = "Only with prior FAA approval"
  question.option_d = "Only over an airport"

  question.correct_option = "B"
  question.explanation = "Objects may be dropped from an aircraft if reasonable precautions are taken to avoid creating a hazard to persons or property."
  question.position = 9
end

aircraft_categories_card.questions.find_or_create_by!(
  question_text: "Where should a pilot look for operating limitations applicable to an experimental aircraft?"
) do |question|
  question.option_a = "Only in the Chart Supplement"
  question.option_b = "Only on a sectional chart"
  question.option_c = "In the operating limitations issued for that aircraft"
  question.option_d = "Only in the aircraft registration certificate"

  question.correct_option = "C"
  question.explanation = "Experimental aircraft are operated according to operating limitations issued for that specific aircraft, which become part of its airworthiness documentation."
  question.position = 10
end
