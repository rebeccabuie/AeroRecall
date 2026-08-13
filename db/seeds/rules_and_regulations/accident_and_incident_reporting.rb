accident_reporting_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Accident & Incident Reporting"
)

accident_reporting_card.assign_attributes(
  description: "NTSB notification requirements, reportable incidents, written reports, and preservation of aircraft wreckage.",
  position: 9
)

accident_reporting_card.save!

unless accident_reporting_card.infographic.attached?
  accident_reporting_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Accident-and-Incident-Reporting.jpg")),
    filename: "GroundSchool-Accident-and-Incident-Reporting.jpg"
  )
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "Which event requires immediate notification to the nearest NTSB field office?"
) do |question|
  question.option_a = "Any hard landing"
  question.option_b = "An accident involving death, serious injury, or substantial aircraft damage"
  question.option_c = "Any precautionary landing"
  question.option_d = "A delayed flight"

  question.correct_option = "B"
  question.explanation = "Aircraft accidents involving death, serious injury, or substantial aircraft damage require immediate notification to the nearest NTSB field office."
  question.position = 1
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "Which of the following is a reportable incident requiring immediate NTSB notification?"
) do |question|
  question.option_a = "A passenger becomes airsick"
  question.option_b = "A required flight crewmember becomes unable to perform duties because of illness or injury"
  question.option_c = "A late departure"
  question.option_d = "A minor maintenance discrepancy found after landing"

  question.correct_option = "B"
  question.explanation = "A required flight crewmember's inability to perform normal duties because of illness or injury is one of the specific incidents requiring immediate notification."
  question.position = 2
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "Which event is specifically listed as a reportable incident?"
) do |question|
  question.option_a = "A passenger misses a connection"
  question.option_b = "An in-flight fire"
  question.option_c = "A rough landing"
  question.option_d = "Flying through light turbulence"

  question.correct_option = "B"
  question.explanation = "An in-flight fire is one of the incidents that requires immediate notification to the NTSB."
  question.position = 3
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "When may aircraft wreckage be moved before the NTSB releases it?"
) do |question|
  question.option_a = "Whenever the owner requests it"
  question.option_b = "Only to remove injured people, protect the wreckage, or protect the public"
  question.option_c = "Immediately after photographs are taken"
  question.option_d = "After notifying the FAA"

  question.correct_option = "B"
  question.explanation = "Aircraft wreckage should not be moved except when necessary to remove injured persons, protect the wreckage from further damage, or protect the public."
  question.position = 4
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "How long does an operator have to file a written report after an aircraft accident?"
) do |question|
  question.option_a = "24 hours"
  question.option_b = "7 days"
  question.option_c = "10 days"
  question.option_d = "30 days"

  question.correct_option = "C"
  question.explanation = "A written report must be filed with the NTSB within 10 days after an aircraft accident."
  question.position = 5
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "If an overdue aircraft is still missing, when is a written report required?"
) do |question|
  question.option_a = "24 hours"
  question.option_b = "3 days"
  question.option_c = "7 days"
  question.option_d = "10 days"

  question.correct_option = "C"
  question.explanation = "A written report is required within 7 days if an overdue aircraft is still missing."
  question.position = 6
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "When is a written report required for most reportable incidents?"
) do |question|
  question.option_a = "Immediately"
  question.option_b = "Within 24 hours"
  question.option_c = "Only if requested by the NTSB"
  question.option_d = "Within 10 days"

  question.correct_option = "C"
  question.explanation = "Unlike accidents, most reportable incidents require a written report only if requested by the NTSB." # supported by Part 830 reporting rules
  question.position = 7
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "Which statement best describes an aircraft accident?"
) do |question|
  question.option_a = "Any event that delays a flight"
  question.option_b = "An occurrence involving death, serious injury, or substantial aircraft damage"
  question.option_c = "Any maintenance discrepancy"
  question.option_d = "Any abnormal event during flight"

  question.correct_option = "B"
  question.explanation = "An aircraft accident involves death, serious injury, or substantial aircraft damage."
  question.position = 8
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "How does an incident differ from an accident?"
) do |question|
  question.option_a = "An incident affects or could affect safety but does not meet the definition of an accident"
  question.option_b = "Incidents only occur on the ground"
  question.option_c = "Incidents are reported only to the FAA"
  question.option_d = "There is no difference"

  question.correct_option = "A"
  question.explanation = "An incident is an occurrence that affects or could affect the safety of operations but does not meet the definition of an accident."
  question.position = 9
end

accident_reporting_card.questions.find_or_create_by!(
  question_text: "Who should receive immediate notification after a reportable aircraft accident?"
) do |question|
  question.option_a = "The local airport manager"
  question.option_b = "The FAA Flight Standards District Office"
  question.option_c = "The nearest NTSB field office"
  question.option_d = "The aircraft manufacturer"

  question.correct_option = "C"
  question.explanation = "Immediate notification is made to the nearest NTSB field office."
  question.position = 10
end
