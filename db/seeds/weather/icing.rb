icing_card = @weather.study_cards.find_or_create_by!(title: "Icing and Freezing Rain") do |card|
  card.description = "Airframe icing, freezing rain, sleet, types of ice, and why icing is dangerous."
  card.position = 2
end

unless icing_card.infographic.attached?
  icing_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Icing-and-Freezing-Rain.jpg")),
    filename: "GroundSchool-Icing-and-Freezing-Rain.jpg"
  )
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
