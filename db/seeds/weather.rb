weather = StudyDeck.find_or_create_by!(name: "Weather") do |deck|
  deck.description = "Weather theory and aviation weather services"
end

stability_card = weather.study_cards.find_or_create_by!(title: "Stability of Air Masses") do |card|
  card.description = "Stable air, unstable air, lapse rate, orographic lift, and temperature inversions"
  card.position = 1
end

unless stability_card.infographic.attached?
  stability_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Stability-of-air-masses.jpg")),
    filename: "GroundSchool-Stability-of-air-masses.jpg"
  )
end

icing_card = weather.study_cards.find_or_create_by!(title: "Icing and Freezing Rain") do |card|
  card.description = "Airframe icing, freezing rain, sleet, types of ice, and why icing is dangerous."
  card.position = 2
end

unless icing_card.infographic.attached?
  icing_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Icing-and-Freezing-Rain.jpg")),
    filename: "GroundSchool-Icing-and-Freezing-Rain.jpg"
  )
end

stability_card.questions.find_or_create_by!(
  question_text: "Which type of cloud is commonly associated with stable air?"
) do |question|
  question.option_a = "Cumulonimbus"
  question.option_b = "Stratus"
  question.option_c = "Towering cumulus"
  question.option_d = "Lenticular"

  question.correct_option = "B"
  question.explanation = "Stable air resists vertical motion, so it often forms layered clouds like stratus."
  question.position = 1
end

stability_card.questions.find_or_create_by!(
  question_text: "According to the infographic, what happens as the lapse rate increases?"
) do |question|
  question.option_a = "Air becomes more stable"
  question.option_b = "Air becomes more unstable"
  question.option_c = "Clouds disappear"
  question.option_d = "Temperature inversions become stronger"

  question.correct_option = "B"
  question.explanation = "A greater lapse rate means temperature decreases more rapidly with altitude, which makes the air more unstable."
  question.position = 2
end

stability_card.questions.find_or_create_by!(
  question_text: "What typically forms when stable, moist air is forced up a mountain?"
) do |question|
  question.option_a = "Thunderstorms"
  question.option_b = "Lenticular clouds"
  question.option_c = "Dust devils"
  question.option_d = "Wake turbulence"

  question.correct_option = "B"
  question.explanation = "Stable air flowing over terrain often produces smooth wave patterns and lenticular clouds."
  question.position = 3
end

stability_card.questions.find_or_create_by!(
  question_text: "What is a common effect of a temperature inversion?"
) do |question|
  question.option_a = "Improved visibility"
  question.option_b = "Trapped smoke, haze, or pollution near the surface"
  question.option_c = "Increased convective activity"
  question.option_d = "Rapid thunderstorm development"

  question.correct_option = "B"
  question.explanation = "A temperature inversion traps cooler air near the surface, which can also trap smoke, haze, or pollution and reduce visibility."
  question.position = 4
end

icing_card.questions.find_or_create_by!(
  question_text: "What conditions are required for airframe icing?"
) do |question|
  question.option_a = "Liquid water and freezing temperatures"
  question.option_b = "Dry air and warm temperatures"
  question.option_c = "Clear skies and calm winds"
  question.option_d = "High pressure and descending air"

  question.correct_option = "A"
  question.explanation = "Airframe icing requires visible liquid moisture and freezing temperatures. Supercooled water droplets freeze when they strike the aircraft."
  question.position = 1
end

icing_card.questions.find_or_create_by!(
  question_text: "Which type of ice forms from small droplets and has a rough, milky appearance?"
) do |question|
  question.option_a = "Clear ice"
  question.option_b = "Rime ice"
  question.option_c = "Mixed ice"
  question.option_d = "Freezing rain"

  question.correct_option = "B"
  question.explanation = "Rime ice usually forms from small supercooled droplets and often appears rough, brittle, and milky white."
  question.position = 2
end

icing_card.questions.find_or_create_by!(
  question_text: "Which icing condition produces the most rapid and severe structural icing?"
) do |question|
  question.option_a = "Mist"
  question.option_b = "Snow"
  question.option_c = "Freezing rain"
  question.option_d = "Fog"

  question.correct_option = "C"
  question.explanation = "Freezing rain contains large supercooled droplets that spread over surfaces before freezing, creating rapid and dangerous ice accumulation."
  question.position = 3
end

icing_card.questions.find_or_create_by!(
  question_text: "What is one effect of ice accumulation on an aircraft?"
) do |question|
  question.option_a = "Increased lift and reduced drag"
  question.option_b = "Improved climb performance"
  question.option_c = "Reduced lift and increased drag"
  question.option_d = "Lower stall speed"

  question.correct_option = "C"
  question.explanation = "Ice disrupts airflow over the wings, reducing lift, increasing drag, and increasing stall speed."
  question.position = 4
end
