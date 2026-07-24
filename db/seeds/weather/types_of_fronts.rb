types_of_fronts_card = @weather.study_cards.find_or_initialize_by(
  title: "Types of Fronts"
)

types_of_fronts_card.assign_attributes(
  description: "Compare cold, warm, stationary, and occluded fronts and the weather commonly associated with each.",
  position: 11
)

types_of_fronts_card.save!

unless types_of_fronts_card.infographic.attached?
  types_of_fronts_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Types-of-Fronts.jpg"
      )
    ),
    filename: "GroundSchool-Types-of-Fronts.jpg"
  )
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "Which type of front typically moves the fastest?"
) do |question|
  question.option_a = "Cold front"
  question.option_b = "Warm front"
  question.option_c = "Stationary front"
  question.option_d = "Occluded front"

  question.correct_option = "A"
  question.explanation = "Cold fronts generally move faster than warm fronts and are often associated with rapidly changing weather."
  question.position = 1
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "Which type of front is most commonly associated with widespread, steady rain?"
) do |question|
  question.option_a = "Cold front"
  question.option_b = "Warm front"
  question.option_c = "Stationary front"
  question.option_d = "Occluded front"

  question.correct_option = "B"
  question.explanation = "Warm fronts usually produce widespread layered clouds and long periods of light to moderate, steady precipitation."
  question.position = 2
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "What happens during the formation of an occluded front?"
) do |question|
  question.option_a = "A warm front overtakes a cold front"
  question.option_b = "A cold front overtakes a warm front"
  question.option_c = "Two warm air masses collide"
  question.option_d = "Two cold air masses stop moving"

  question.correct_option = "B"
  question.explanation = "An occluded front forms when a faster-moving cold front catches up to and overtakes a warm front."
  question.position = 3
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "Which type of front forms when two air masses stop moving?"
) do |question|
  question.option_a = "Warm front"
  question.option_b = "Cold front"
  question.option_c = "Stationary front"
  question.option_d = "Occluded front"

  question.correct_option = "C"
  question.explanation = "A stationary front develops when neither air mass is strong enough to replace the other, causing the front to stall."
  question.position = 4
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "Which type of front is most likely to produce thunderstorms and turbulence?"
) do |question|
  question.option_a = "Cold front"
  question.option_b = "Warm front"
  question.option_c = "Stationary front"
  question.option_d = "Occluded front"

  question.correct_option = "A"
  question.explanation = "Cold fronts commonly produce cumulonimbus clouds, turbulence, heavy rain, and thunderstorms."
  question.position = 5
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "Which type of front is most commonly associated with fog and poor visibility?"
) do |question|
  question.option_a = "Cold front"
  question.option_b = "Warm front"
  question.option_c = "Stationary front"
  question.option_d = "Occluded front"

  question.correct_option = "B"
  question.explanation = "Warm fronts often produce widespread stratus clouds, fog, and reduced visibility ahead of the front."
  question.position = 6
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "Which type of front can remain over an area for several days?"
) do |question|
  question.option_a = "Cold front"
  question.option_b = "Warm front"
  question.option_c = "Stationary front"
  question.option_d = "Occluded front"

  question.correct_option = "C"
  question.explanation = "Stationary fronts can linger for days, bringing extended periods of clouds, rain, and poor flying conditions."
  question.position = 7
end

types_of_fronts_card.questions.find_or_create_by!(
  question_text: "An occluded front typically produces what type of weather?"
) do |question|
  question.option_a = "Clear skies and light winds"
  question.option_b = "Only scattered cumulus clouds"
  question.option_c = "Complex weather with mixed cloud types and heavy precipitation"
  question.option_d = "Hot, dry conditions"

  question.correct_option = "C"
  question.explanation = "Occluded fronts often produce complex weather with a mixture of cloud types and widespread precipitation as a cold front overtakes a warm front."
  question.position = 8
end
