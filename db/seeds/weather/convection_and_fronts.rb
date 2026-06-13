convection_card = @weather.study_cards.find_or_create_by!(title: "Convection and Fronts") do |card|
  card.description = "Convection, sea breezes, Coriolis effect, fronts, ISA, lapse rates, and friction."
  card.position = 4
end

unless convection_card.infographic.attached?
  convection_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Convection-and-Fronts.jpg")),
    filename: "GroundSchool-Convection-and-Fronts.jpg"
  )
end

convection_card.questions.find_or_create_by!(
  question_text: "What causes convection?"
) do |question|
  question.option_a = "Uneven heating of the Earth's surface"
  question.option_b = "The Earth's rotation"
  question.option_c = "High pressure systems"
  question.option_d = "Friction with mountains"

  question.correct_option = "A"
  question.explanation = "Convection occurs when the sun heats the Earth's surface unevenly, causing warm air to rise and cooler air to sink."
  question.position = 1
end

convection_card.questions.find_or_create_by!(
  question_text: "What happens during a sea breeze?"
) do |question|
  question.option_a = "Cool air moves from land toward the water"
  question.option_b = "Cooler air moves from the water toward warmer land"
  question.option_c = "Air sinks over warm land"
  question.option_d = "Winds stop because temperatures are equal"

  question.correct_option = "B"
  question.explanation = "During the day, land heats faster than water. Warm air rises over land, and cooler air from over the water moves inland to replace it."
  question.position = 2
end

convection_card.questions.find_or_create_by!(
  question_text: "Which way does the Coriolis effect deflect moving air in the Northern Hemisphere?"
) do |question|
  question.option_a = "To the left"
  question.option_b = "To the right"
  question.option_c = "Straight upward"
  question.option_d = "Straight downward"

  question.correct_option = "B"
  question.explanation = "In the Northern Hemisphere, the Coriolis effect deflects moving air to the right."
  question.position = 3
end

convection_card.questions.find_or_create_by!(
  question_text: "What is a front?"
) do |question|
  question.option_a = "A large area of high pressure"
  question.option_b = "A boundary between two air masses"
  question.option_c = "A type of cloud formation"
  question.option_d = "A region of calm winds"

  question.correct_option = "B"
  question.explanation = "A front is the boundary separating two air masses with different temperatures and moisture characteristics."
  question.position = 4
end

convection_card.questions.find_or_create_by!(
  question_text: "According to ISA, what are standard sea level conditions?"
) do |question|
  question.option_a = "15°C and 29.92 inHg"
  question.option_b = "0°C and 29.92 inHg"
  question.option_c = "15°C and 30.12 inHg"
  question.option_d = "20°C and 29.92 inHg"

  question.correct_option = "A"
  question.explanation = "ISA standard sea level conditions are 15°C (59°F) and 29.92 inHg (1013.2 mb)."
  question.position = 5
end

convection_card.questions.find_or_create_by!(
  question_text: "What is the standard temperature lapse rate in the atmosphere?"
) do |question|
  question.option_a = "1°C per 1,000 feet"
  question.option_b = "2°C per 1,000 feet"
  question.option_c = "3°C per 1,000 feet"
  question.option_d = "5°C per 1,000 feet"

  question.correct_option = "B"
  question.explanation = "The standard lapse rate is approximately 2°C (3.5°F) per 1,000 feet of altitude gain."
  question.position = 6
end

convection_card.questions.find_or_create_by!(
  question_text: "Why are winds generally slower near the Earth's surface?"
) do |question|
  question.option_a = "The Coriolis effect stops working"
  question.option_b = "Surface friction slows the wind"
  question.option_c = "Air pressure is always lower"
  question.option_d = "The atmosphere is warmer"

  question.correct_option = "B"
  question.explanation = "Trees, buildings, terrain, and other surface features create friction that slows winds near the ground."
  question.position = 7
end

convection_card.questions.find_or_create_by!(
  question_text: "What happens to air pressure as altitude increases?"
) do |question|
  question.option_a = "Air pressure increases"
  question.option_b = "Air pressure decreases"
  question.option_c = "Air pressure stays the same"
  question.option_d = "Air pressure only changes in clouds"

  question.correct_option = "B"
  question.explanation = "Air pressure decreases with altitude because there is less air above you pressing down."
  question.position = 8
end
