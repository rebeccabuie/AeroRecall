pilot_certificates_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Pilot Certificates & Endorsements"
)

pilot_certificates_card.assign_attributes(
  description: "Pilot documents, medical certificates, endorsements, type ratings, and flight review requirements.",
  position: 4
)

pilot_certificates_card.save!

unless pilot_certificates_card.infographic.attached?
  pilot_certificates_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Pilot-Certificates-Endorsements.jpg")),
    filename: "GroundSchool-Pilot-Certificates-Endorsements.jpg"
  )
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "What documents must a pilot have when acting as pilot in command or as a required flightcrew member?"
) do |question|
  question.option_a = "A pilot certificate, photo identification, and a medical certificate when required"
  question.option_b = "A logbook, aircraft registration, and photo identification"
  question.option_c = "A pilot certificate, passport, and aircraft operating handbook"
  question.option_d = "A medical certificate, logbook, and aircraft airworthiness certificate"

  question.correct_option = "A"
  question.explanation = "A pilot must have the appropriate pilot certificate and photo identification readily accessible. A medical certificate is also required when the operation requires one."
  question.position = 1
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "How long may a third-class medical certificate be used for private pilot privileges if the pilot was under age 40 on the examination date?"
) do |question|
  question.option_a = "12 calendar months"
  question.option_b = "24 calendar months"
  question.option_c = "36 calendar months"
  question.option_d = "60 calendar months"

  question.correct_option = "D"
  question.explanation = "For private pilot privileges, a third-class medical certificate may be used for 60 calendar months if the pilot was under age 40 on the examination date."
  question.position = 2
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "How long may a third-class medical certificate be used for private pilot privileges if the pilot was age 40 or older on the examination date?"
) do |question|
  question.option_a = "12 calendar months"
  question.option_b = "24 calendar months"
  question.option_c = "36 calendar months"
  question.option_d = "60 calendar months"

  question.correct_option = "B"
  question.explanation = "For private pilot privileges, a third-class medical certificate may be used for 24 calendar months if the pilot was age 40 or older on the examination date."
  question.position = 3
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "Which features define a complex airplane for endorsement purposes?"
) do |question|
  question.option_a = "Fixed landing gear, flaps, and a turbocharged engine"
  question.option_b = "Retractable landing gear, flaps, and a controllable-pitch propeller"
  question.option_c = "Retractable landing gear, spoilers, and more than 200 horsepower"
  question.option_d = "Flaps, a turbojet engine, and a pressurized cabin"

  question.correct_option = "B"
  question.explanation = "A complex airplane has retractable landing gear, flaps, and a controllable-pitch propeller, including a constant-speed propeller."
  question.position = 4
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "When is a high-performance airplane endorsement required?"
) do |question|
  question.option_a = "When the airplane has retractable landing gear"
  question.option_b = "When the airplane has an engine of more than 200 horsepower"
  question.option_c = "When the airplane has a constant-speed propeller"
  question.option_d = "When the airplane weighs more than 12,500 pounds"

  question.correct_option = "B"
  question.explanation = "A high-performance airplane is one with an engine of more than 200 horsepower. The pilot must receive the required ground and flight training and a logbook endorsement before acting as pilot in command."
  question.position = 5
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "Which aircraft generally require a type rating?"
) do |question|
  question.option_a = "Any airplane with retractable landing gear"
  question.option_b = "Any airplane with more than 200 horsepower"
  question.option_c = "Large aircraft over 12,500 pounds, turbojet-powered airplanes, and other aircraft specified by the FAA"
  question.option_d = "Any airplane used for cross-country flight"

  question.correct_option = "C"
  question.explanation = "A type rating is generally required for large aircraft with a maximum certificated takeoff weight greater than 12,500 pounds, turbojet-powered airplanes, and other aircraft specified by the FAA."
  question.position = 6
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "How often must a pilot complete a flight review to act as pilot in command?"
) do |question|
  question.option_a = "Every 12 calendar months"
  question.option_b = "Every 24 calendar months"
  question.option_c = "Every 36 calendar months"
  question.option_d = "Only when changing aircraft categories"

  question.correct_option = "B"
  question.explanation = "To act as pilot in command, a pilot must have completed a flight review within the preceding 24 calendar months or meet an approved alternative."
  question.position = 7
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "What is the minimum required training for a flight review?"
) do |question|
  question.option_a = "At least 1 hour of ground training and 1 hour of flight training"
  question.option_b = "At least 2 hours of ground training only"
  question.option_c = "At least 2 hours of flight training only"
  question.option_d = "A written test and a practical test"

  question.correct_option = "A"
  question.explanation = "A flight review must include at least 1 hour of ground training and 1 hour of flight training, unless the instructor determines additional training is needed."
  question.position = 8
end

pilot_certificates_card.questions.find_or_create_by!(
  question_text: "Within how many days must a pilot report a reportable motor vehicle action to the FAA?"
) do |question|
  question.option_a = "10 days"
  question.option_b = "30 days"
  question.option_c = "60 days"
  question.option_d = "90 days"

  question.correct_option = "C"
  question.explanation = "A pilot must provide written notice to the FAA within 60 days of a reportable motor vehicle action involving alcohol or drugs."
  question.position = 9
end
