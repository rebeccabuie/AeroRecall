altitudes_card = @rules_and_regs.study_cards.find_or_create_by!(
  title: "Minimum Safe Altitudes & Speed Limits"
) do |card|
  card.description = "FAA minimum safe altitude requirements and aircraft speed limitations."
  card.position = 1
end

unless altitudes_card.infographic.attached?
  altitudes_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Speed-Limits-Safe-Altitudes.jpg")
    ),
    filename: "GroundSchool-Speed-Limits-Safe-Altitudes.jpg"
  )
end

altitudes_card.questions.find_or_create_by!(
  question_text: "What is the minimum altitude over a congested area?"
) do |question|
  question.option_a = "500 ft AGL"
  question.option_b = "1,000 ft above the highest obstacle within 2,000 ft"
  question.option_c = "1,500 ft AGL"
  question.option_d = "2,000 ft MSL"

  question.correct_option = "B"
  question.explanation = "Over congested areas, aircraft must remain at least 1,000 feet above the highest obstacle within a horizontal radius of 2,000 feet."
  question.position = 1
end

altitudes_card.questions.find_or_create_by!(
  question_text: "When flying over rural areas, what minimum distance must be maintained from people and structures?"
) do |question|
  question.option_a = "1,000 ft"
  question.option_b = "2,000 ft"
  question.option_c = "500 ft"
  question.option_d = "300 ft"

  question.correct_option = "C"
  question.explanation = "Over sparsely populated areas, aircraft may operate at any altitude provided they remain at least 500 feet from any person, vessel, vehicle, or structure."
  question.position = 2
end

altitudes_card.questions.find_or_create_by!(
  question_text: "What is the maximum speed below 10,000 feet MSL?"
) do |question|
  question.option_a = "200 knots"
  question.option_b = "230 knots"
  question.option_c = "250 knots"
  question.option_d = "300 knots"

  question.correct_option = "C"
  question.explanation = "Federal regulations limit aircraft to 250 knots indicated airspeed below 10,000 feet MSL unless otherwise authorized."
  question.position = 3
end

altitudes_card.questions.find_or_create_by!(
  question_text: "What is the maximum speed within 4 NM of a Class C airport and at or below 2,500 feet AGL?"
) do |question|
  question.option_a = "180 knots"
  question.option_b = "200 knots"
  question.option_c = "230 knots"
  question.option_d = "250 knots"

  question.correct_option = "B"
  question.explanation = "Aircraft are limited to 200 knots within 4 nautical miles of a Class B, C, or D airport and at or below 2,500 feet AGL."
  question.position = 4
end

altitudes_card.questions.find_or_create_by!(
  question_text: "What is the maximum speed while operating in Class B, C, or D airspace?"
) do |question|
  question.option_a = "180 knots"
  question.option_b = "200 knots"
  question.option_c = "230 knots"
  question.option_d = "250 knots"

  question.correct_option = "B"
  question.explanation = "Aircraft may not exceed 200 knots while operating in Class B, C, or D airspace unless an exception applies."
  question.position = 5
end

altitudes_card.questions.find_or_create_by!(
  question_text: "When may an aircraft legally exceed a published speed limit?"
) do |question|
  question.option_a = "During night operations"
  question.option_b = "When flying VFR"
  question.option_c = "When minimum safe airspeed is higher than the limit"
  question.option_d = "When operating below 5,000 feet MSL"

  question.correct_option = "C"
  question.explanation = "An aircraft may exceed a regulatory speed limit when compliance would require operating below the aircraft's minimum safe airspeed."
  question.position = 6
end
