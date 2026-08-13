recency_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Recency Rules"
)

recency_card.assign_attributes(
  description: "Passenger currency, night currency, glider towing, address changes, and private pilot cost sharing.",
  position: 5
)

recency_card.save!

unless recency_card.infographic.attached?
  recency_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Recency-Rules.jpg")),
    filename: "GroundSchool-Recency-Rules.jpg"
  )
end

recency_card.questions.find_or_create_by!(
  question_text: "What must a pilot do to carry passengers during the day?"
) do |question|
  question.option_a = "Complete a flight review within the last 12 months"
  question.option_b = "Perform 3 takeoffs and 3 landings within the preceding 90 days in the same category, class, and type (if required)"
  question.option_c = "Log 10 hours of flight time within the last 90 days"
  question.option_d = "Pass a written knowledge test"

  question.correct_option = "B"
  question.explanation = "To carry passengers during the day, a pilot must have completed three takeoffs and three landings within the preceding 90 days in the same category, class, and type (if a type rating is required)."
  question.position = 1
end

recency_card.questions.find_or_create_by!(
  question_text: "What additional landing requirement applies to carrying passengers at night?"
) do |question|
  question.option_a = "Landings must be made on a grass runway"
  question.option_b = "Touch-and-go landings are required"
  question.option_c = "The three required landings must be to a full stop"
  question.option_d = "A flight review must have been completed at night"

  question.correct_option = "C"
  question.explanation = "To carry passengers at night, the required three takeoffs and three landings within the preceding 90 days must be made to a full stop."
  question.position = 2
end

recency_card.questions.find_or_create_by!(
  question_text: "For passenger currency, when does 'night' begin and end?"
) do |question|
  question.option_a = "Sunset to sunrise"
  question.option_b = "30 minutes after sunset until 30 minutes before sunrise"
  question.option_c = "1 hour after sunset until 1 hour before sunrise"
  question.option_d = "Civil twilight until sunrise"

  question.correct_option = "C"
  question.explanation = "For passenger currency, night begins one hour after sunset and ends one hour before sunrise."
  question.position = 3
end

recency_card.questions.find_or_create_by!(
  question_text: "Within how many days must the required takeoffs and landings be completed to remain current for carrying passengers?"
) do |question|
  question.option_a = "30 days"
  question.option_b = "60 days"
  question.option_c = "90 days"
  question.option_d = "120 days"

  question.correct_option = "C"
  question.explanation = "Passenger currency requires three takeoffs and three landings within the preceding 90 days."
  question.position = 4
end

recency_card.questions.find_or_create_by!(
  question_text: "Which of the following is required before acting as pilot in command of a glider tow?"
) do |question|
  question.option_a = "A commercial pilot certificate"
  question.option_b = "A private pilot certificate, at least 100 hours as PIC, and a logbook endorsement"
  question.option_c = "A high-performance endorsement"
  question.option_d = "A type rating"

  question.correct_option = "B"
  question.explanation = "A pilot must hold at least a private pilot certificate, have logged at least 100 hours as pilot in command, and receive the required training and logbook endorsement before towing a glider."
  question.position = 5
end

recency_card.questions.find_or_create_by!(
  question_text: "How may a pilot remain current to tow gliders?"
) do |question|
  question.option_a = "Complete a flight review every 12 months"
  question.option_b = "Complete three actual or simulated tows, or serve as PIC of a towed glider on three flights within the preceding 24 months"
  question.option_c = "Log 10 hours of towing every year"
  question.option_d = "Pass a recurrent knowledge test"

  question.correct_option = "B"
  question.explanation = "To remain current, a pilot must complete three actual or simulated tows, or act as PIC of a towed glider on three flights within the preceding 24 months."
  question.position = 6
end

recency_card.questions.find_or_create_by!(
  question_text: "Within how many days must a pilot notify the FAA of a permanent address change?"
) do |question|
  question.option_a = "10 days"
  question.option_b = "30 days"
  question.option_c = "60 days"
  question.option_d = "90 days"

  question.correct_option = "B"
  question.explanation = "Pilots must notify the FAA of a permanent mailing address change within 30 days."
  question.position = 7
end

recency_card.questions.find_or_create_by!(
  question_text: "Which operating expenses may a private pilot share with passengers under the pro rata rule?"
) do |question|
  question.option_a = "Fuel, oil, airport expenditures, and rental fees"
  question.option_b = "Maintenance, insurance, and fuel"
  question.option_c = "Aircraft purchase costs and fuel"
  question.option_d = "Any operating expense as long as the pilot pays at least half"

  question.correct_option = "A"
  question.explanation = "A private pilot may share only the pro rata costs of fuel, oil, airport expenditures, and aircraft rental fees with passengers."
  question.position = 8
end

recency_card.questions.find_or_create_by!(
  question_text: "May a private pilot be paid to carry passengers?"
) do |question|
  question.option_a = "Yes, if the passengers agree"
  question.option_b = "Yes, if the flight is less than 50 miles"
  question.option_c = "Only if the pilot has more than 500 flight hours"
  question.option_d = "No, a private pilot may not be compensated for carrying passengers"

  question.correct_option = "D"
  question.explanation = "Private pilots may not act as pilot in command of an aircraft carrying passengers or property for compensation or hire, except as specifically permitted by regulation."
  question.position = 9
end
