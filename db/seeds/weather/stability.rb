stability_card = @weather.study_cards.find_or_create_by!(title: "Stability of Air Masses") do |card|
  card.description = "Stable air, unstable air, lapse rate, orographic lift, and temperature inversions"
  card.position = 1
end

unless stability_card.infographic.attached?
  stability_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Stability-of-air-masses.jpg")),
    filename: "GroundSchool-Stability-of-air-masses.jpg"
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
