cloud_formation_card = @weather.study_cards.find_or_create_by!(
  title: "Cloud Formation and Cloud Bases"
) do |card|
  card.description = "Cloud formation, condensation nuclei, cloud-base calculations, and nimbus clouds."
  card.position = 3
end

unless cloud_formation_card.infographic.attached?
  cloud_formation_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Cloud-Formation-and-Cloud-Bases.jpg")
    ),
    filename: "GroundSchool-Cloud-Formation-and-Cloud-Bases.jpg"
  )
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "What three elements are needed for clouds to form?"
) do |question|
  question.option_a = "Moisture, cooling, and condensation nuclei"
  question.option_b = "Heat, wind, and high pressure"
  question.option_c = "Rain, turbulence, and freezing temperatures"
  question.option_d = "Dry air, lift, and sunlight"

  question.correct_option = "A"
  question.explanation = "Clouds form when moist air is cooled to its dew point and water vapor condenses onto tiny particles called condensation nuclei."
  question.position = 1
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "What are condensation nuclei?"
) do |question|
  question.option_a = "Large raindrops inside a cloud"
  question.option_b = "Tiny particles such as dust, salt, and smoke"
  question.option_c = "Ice crystals found only in thunderstorms"
  question.option_d = "Areas of high atmospheric pressure"

  question.correct_option = "B"
  question.explanation = "Condensation nuclei are tiny airborne particles such as dust, salt, and smoke onto which water vapor condenses."
  question.position = 2
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "To what temperature must moist air be cooled before condensation begins?"
) do |question|
  question.option_a = "Its freezing point"
  question.option_b = "Its boiling point"
  question.option_c = "Its dew point"
  question.option_d = "The standard temperature"

  question.correct_option = "C"
  question.explanation = "Cloud formation begins when moist air cools to its dew point and becomes saturated."
  question.position = 3
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "At approximately what rate does rising unsaturated air cool?"
) do |question|
  question.option_a = "1°F per 1,000 feet"
  question.option_b = "2°F per 1,000 feet"
  question.option_c = "5.4°F per 1,000 feet"
  question.option_d = "10°F per 1,000 feet"

  question.correct_option = "C"
  question.explanation = "Before saturation, rising unsaturated air cools at approximately 5.4°F per 1,000 feet."
  question.position = 4
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "At approximately what rate does the dew point decrease with altitude?"
) do |question|
  question.option_a = "1°F per 1,000 feet"
  question.option_b = "4.4°F per 1,000 feet"
  question.option_c = "5.4°F per 1,000 feet"
  question.option_d = "10°F per 1,000 feet"

  question.correct_option = "A"
  question.explanation = "The dew point generally decreases about 1°F per 1,000 feet as altitude increases."
  question.position = 5
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "An airport is at 1,000 feet MSL with a temperature of 70°F and a dew point of 48°F. What is the estimated cloud-base altitude?"
) do |question|
  question.option_a = "About 4,000 feet MSL"
  question.option_b = "About 5,000 feet MSL"
  question.option_c = "About 6,000 feet MSL"
  question.option_d = "About 7,000 feet MSL"

  question.correct_option = "C"
  question.explanation = "The temperature-dew point spread is 22°F. Divide 22 by 4.4 to estimate a cloud base about 5,000 feet above the airport. Adding the airport elevation gives approximately 6,000 feet MSL."
  question.position = 6
end

cloud_formation_card.questions.find_or_create_by!(
  question_text: "What does the word 'nimbus' indicate in a cloud name?"
) do |question|
  question.option_a = "A high-altitude cloud"
  question.option_b = "A cloud producing rain or snow"
  question.option_c = "A cloud with no precipitation"
  question.option_d = "A cloud caused by mountain waves"

  question.correct_option = "B"
  question.explanation = "Nimbus indicates a cloud that produces precipitation such as rain or snow."
  question.position = 7
end
