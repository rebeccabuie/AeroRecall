thunderstorm_card = @weather.study_cards.find_or_initialize_by(
  title: "Thunderstorm Hazards"
)

thunderstorm_card.assign_attributes(
  description: "Thunderstorm development, hazards, wind shear, lightning, embedded storms, and squall lines.",
  position: 4
)

thunderstorm_card.save!

unless thunderstorm_card.infographic.attached?
  thunderstorm_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Thunderstorm-Hazards.jpg")
    ),
    filename: "GroundSchool-Thunderstorm-Hazards.jpg"
  )
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "What three ingredients are required for a thunderstorm to develop?"
) do |question|
  question.option_a = "Cold air, fog, and wind"
  question.option_b = "Unstable lapse rate, moisture, and a lifting mechanism"
  question.option_c = "High pressure, dry air, and sunshine"
  question.option_d = "Warm fronts, turbulence, and lightning"

  question.correct_option = "B"
  question.explanation = "Thunderstorms require an unstable lapse rate, abundant moisture, and a lifting mechanism to force air upward."
  question.position = 1
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "What is the purpose of a lifting mechanism in thunderstorm development?"
) do |question|
  question.option_a = "It cools the air to below freezing"
  question.option_b = "It forces air upward to its level of free convection"
  question.option_c = "It increases atmospheric pressure"
  question.option_d = "It creates lightning"

  question.correct_option = "B"
  question.explanation = "A lifting mechanism forces air upward until it reaches its level of free convection, allowing thunderstorms to develop."
  question.position = 2
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "What is a squall line?"
) do |question|
  question.option_a = "A line of fog along a warm front"
  question.option_b = "A long line of thunderstorms associated with a cold front"
  question.option_c = "A group of scattered cumulus clouds"
  question.option_d = "A line of high-pressure systems"

  question.correct_option = "B"
  question.explanation = "Squall lines are long lines of thunderstorms that commonly form along or ahead of a cold front and often produce severe weather."
  question.position = 3
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "Which stage of a thunderstorm is considered the most dangerous?"
) do |question|
  question.option_a = "Cumulus stage"
  question.option_b = "Developing stage"
  question.option_c = "Mature stage"
  question.option_d = "Dissipating stage"

  question.correct_option = "C"
  question.explanation = "The mature stage is the most dangerous because both strong updrafts and downdrafts are present."
  question.position = 4
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "Which thunderstorm hazard is caused by strong downdrafts that spread outward near the surface?"
) do |question|
  question.option_a = "Lightning"
  question.option_b = "Heavy rain"
  question.option_c = "Microbursts"
  question.option_d = "Embedded thunderstorms"

  question.correct_option = "C"
  question.explanation = "Microbursts are intense downdrafts that spread outward after striking the ground and can be extremely hazardous to aircraft."
  question.position = 5
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "What are embedded thunderstorms?"
) do |question|
  question.option_a = "Thunderstorms over mountains only"
  question.option_b = "Thunderstorms hidden within other cloud layers"
  question.option_c = "Weak thunderstorms without lightning"
  question.option_d = "Thunderstorms that occur only at night"

  question.correct_option = "B"
  question.explanation = "Embedded thunderstorms are hidden within other cloud layers, making them difficult for pilots to detect visually."
  question.position = 6
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "Why is low-level wind shear especially dangerous to pilots?"
) do |question|
  question.option_a = "It increases fuel consumption"
  question.option_b = "It causes icing near the ground"
  question.option_c = "It can cause a sudden loss of lift and control during takeoff and landing"
  question.option_d = "It always produces tornadoes"

  question.correct_option = "C"
  question.explanation = "Low-level wind shear can rapidly change an aircraft's airspeed and lift during takeoff and landing, making it extremely hazardous."
  question.position = 7
end

thunderstorm_card.questions.find_or_create_by!(
  question_text: "Which statement about thunderstorms is true?"
) do |question|
  question.option_a = "Only severe thunderstorms produce lightning"
  question.option_b = "All thunderstorms produce lightning and widespread turbulence"
  question.option_c = "Thunderstorms are safe to fly over if rain is light"
  question.option_d = "Embedded thunderstorms are easy to identify visually"

  question.correct_option = "B"
  question.explanation = "Every thunderstorm produces lightning, and all thunderstorms are capable of producing significant turbulence."
  question.position = 8
end
