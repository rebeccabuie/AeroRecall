wind_shear_card = @weather.study_cards.find_or_create_by!(title: "Wind Shear and Fog") do |card|
  card.description = "Wind shear, microbursts, fog formation, dew point, evaporation, and sublimation."
  card.position = 3
end

unless wind_shear_card.infographic.attached?
  wind_shear_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Wind-Shear-and-Fog.jpg")),
    filename: "GroundSchool-Wind-Shear-and-Fog.jpg"
  )
end

wind_shear_card.questions.find_or_create_by!(
  question_text: "What is wind shear?"
) do |question|
  question.option_a = "A sudden change in wind speed or direction over a short distance"
  question.option_b = "A steady wind blowing from the same direction all day"
  question.option_c = "A cloud layer that forms near the ground"
  question.option_d = "A type of precipitation that freezes on contact"

  question.correct_option = "A"
  question.explanation = "Wind shear is a sudden change in wind speed or direction over a short distance. It can be especially dangerous during takeoff and landing."
  question.position = 1
end

wind_shear_card.questions.find_or_create_by!(
  question_text: "Why is a microburst dangerous to aircraft?"
) do |question|
  question.option_a = "It causes ice to form on the wings"
  question.option_b = "It can create strong downdrafts and rapidly changing winds near the ground"
  question.option_c = "It only affects aircraft at cruising altitude"
  question.option_d = "It improves lift during landing"

  question.correct_option = "B"
  question.explanation = "A microburst can produce powerful downdrafts and sudden wind shifts close to the ground, making it especially dangerous during takeoff and landing."
  question.position = 2
end

wind_shear_card.questions.find_or_create_by!(
  question_text: "Which type of fog forms when warm, moist air moves over a colder surface?"
) do |question|
  question.option_a = "Radiation fog"
  question.option_b = "Steam fog"
  question.option_c = "Advection fog"
  question.option_d = "Upslope fog"

  question.correct_option = "C"
  question.explanation = "Advection fog forms when warm, moist air moves over a cooler surface and is cooled to its dew point."
  question.position = 3
end

wind_shear_card.questions.find_or_create_by!(
  question_text: "What condition is most favorable for the formation of radiation fog?"
) do |question|
  question.option_a = "Windy, cloudy nights"
  question.option_b = "Clear skies, light winds, and moist air"
  question.option_c = "Warm air moving over cold water"
  question.option_d = "Strong daytime heating"

  question.correct_option = "B"
  question.explanation = "Radiation fog typically forms on clear nights with light winds when the ground cools rapidly and moist air reaches its dew point."
  question.position = 4
end

wind_shear_card.questions.find_or_create_by!(
  question_text: "What is the dew point?"
) do |question|
  question.option_a = "The temperature at which water freezes"
  question.option_b = "The temperature at which air becomes saturated and condensation begins"
  question.option_c = "The warmest temperature of the day"
  question.option_d = "The temperature at the top of a cloud"

  question.correct_option = "B"
  question.explanation = "The dew point is the temperature to which air must cool to become saturated and allow condensation to occur."
  question.position = 5
end

wind_shear_card.questions.find_or_create_by!(
  question_text: "What is sublimation?"
) do |question|
  question.option_a = "Liquid water changing into water vapor"
  question.option_b = "Water vapor changing directly into ice"
  question.option_c = "Ice changing directly into water vapor"
  question.option_d = "Liquid water freezing into ice"

  question.correct_option = "C"
  question.explanation = "Sublimation is when ice changes directly into water vapor without becoming liquid first."
  question.position = 6
end
