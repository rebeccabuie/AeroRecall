cloud_types_card = @weather.study_cards.find_or_initialize_by(
  title: "Cloud Types & Cloud Names"
)

cloud_types_card.assign_attributes(
  description: "Recognize common cloud types, understand cloud name meanings, and identify hazardous clouds for pilots.",
  position: 12
)

cloud_types_card.save!

unless cloud_types_card.infographic.attached?
  cloud_types_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Cloud-Types-and-Names.jpg"
      )
    ),
    filename: "GroundSchool-Cloud-Types-and-Names.jpg"
  )
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "Which cloud type is composed primarily of ice crystals and has a feather-like appearance?"
) do |question|
  question.option_a = "Cirrus"
  question.option_b = "Stratus"
  question.option_c = "Cumulus"
  question.option_d = "Cumulonimbus"

  question.correct_option = "A"
  question.explanation = "Cirrus clouds form at high altitudes, are composed mainly of ice crystals, and often have a thin, feather-like appearance."
  question.position = 1
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "Which cloud type is most commonly associated with fair weather when it remains small?"
) do |question|
  question.option_a = "Cumulus"
  question.option_b = "Stratus"
  question.option_c = "Cirrus"
  question.option_d = "Cumulonimbus"

  question.correct_option = "A"
  question.explanation = "Small cumulus clouds are commonly associated with fair weather, although they can grow vertically and develop into storms."
  question.position = 2
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "Which cloud type commonly forms a low, uniform layer and may produce light drizzle?"
) do |question|
  question.option_a = "Stratus"
  question.option_b = "Cirrus"
  question.option_c = "Cumulus"
  question.option_d = "Cumulonimbus"

  question.correct_option = "A"
  question.explanation = "Stratus clouds form low, uniform layers that can produce overcast skies, reduced visibility, and light drizzle."
  question.position = 3
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "Which cloud type is the most hazardous to pilots?"
) do |question|
  question.option_a = "Cumulonimbus"
  question.option_b = "Cirrus"
  question.option_c = "Stratus"
  question.option_d = "Small cumulus"

  question.correct_option = "A"
  question.explanation = "Cumulonimbus clouds can produce thunderstorms, severe turbulence, hail, lightning, icing, wind shear, and microbursts."
  question.position = 4
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "How far should a pilot generally remain from a thunderstorm or cumulonimbus cloud?"
) do |question|
  question.option_a = "At least 20 nautical miles"
  question.option_b = "At least 5 nautical miles"
  question.option_c = "At least 10 statute miles"
  question.option_d = "Any distance is acceptable if the cloud is not producing rain"

  question.correct_option = "A"
  question.explanation = "Pilots should avoid thunderstorms by at least 20 nautical miles because severe turbulence, hail, lightning, and outflow can extend beyond the visible cloud."
  question.position = 5
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "What does the prefix cirro- indicate in a cloud name?"
) do |question|
  question.option_a = "High altitude"
  question.option_b = "Middle altitude"
  question.option_c = "Rain or storms"
  question.option_d = "Layered clouds"

  question.correct_option = "A"
  question.explanation = "The prefix cirro- refers to high-altitude clouds, which are often composed primarily of ice crystals."
  question.position = 6
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "What does the prefix alto- indicate in a cloud name?"
) do |question|
  question.option_a = "Middle altitude"
  question.option_b = "High altitude"
  question.option_c = "Low altitude"
  question.option_d = "Thunderstorm development"

  question.correct_option = "A"
  question.explanation = "The prefix alto- identifies clouds that generally form at middle altitudes."
  question.position = 7
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "What does the term nimbus indicate in a cloud name?"
) do |question|
  question.option_a = "Rain or storm-producing cloud"
  question.option_b = "High, feather-like cloud"
  question.option_c = "Fair-weather cloud"
  question.option_d = "Cloud made only of ice crystals"

  question.correct_option = "A"
  question.explanation = "Nimbus indicates a cloud associated with precipitation or storms."
  question.position = 8
end

cloud_types_card.questions.find_or_create_by!(
  question_text: "Which cloud type may begin as a fair-weather cloud but grow vertically into a thunderstorm?"
) do |question|
  question.option_a = "Cumulus"
  question.option_b = "Cirrus"
  question.option_c = "Stratus"
  question.option_d = "Altostratus"

  question.correct_option = "A"
  question.explanation = "Cumulus clouds are often harmless when small, but continued vertical development can produce towering cumulus and eventually cumulonimbus clouds."
  question.position = 9
end
