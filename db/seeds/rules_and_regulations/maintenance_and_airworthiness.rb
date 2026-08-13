maintenance_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Maintenance & Airworthiness"
)

maintenance_card.assign_attributes(
  description: "Airworthiness Directives, preventive maintenance, maintenance records, and PIC authority.",
  position: 6
)

maintenance_card.save!

unless maintenance_card.infographic.attached?
  maintenance_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Maintenance-and-Airworthiness.jpg")),
    filename: "GroundSchool-Maintenance-and-Airworthiness.jpg"
  )
end

maintenance_card.questions.find_or_create_by!(
  question_text: "What is the purpose of an Airworthiness Directive (AD)?"
) do |question|
  question.option_a = "To recommend optional aircraft upgrades"
  question.option_b = "To correct an unsafe condition identified by the FAA"
  question.option_c = "To provide weather information for pilots"
  question.option_d = "To establish airport operating hours"

  question.correct_option = "B"
  question.explanation = "Airworthiness Directives (ADs) are legally enforceable regulations issued by the FAA to correct unsafe conditions found in aircraft, engines, propellers, or appliances."
  question.position = 1
end

maintenance_card.questions.find_or_create_by!(
  question_text: "Is compliance with an Airworthiness Directive mandatory?"
) do |question|
  question.option_a = "Only for commercial aircraft"
  question.option_b = "Only if the aircraft is flown internationally"
  question.option_c = "Yes, unless the AD specifically allows otherwise"
  question.option_d = "Only if the aircraft owner chooses to comply"

  question.correct_option = "C"
  question.explanation = "Compliance with an Airworthiness Directive is mandatory unless the AD specifically permits operation before the corrective action is completed."
  question.position = 2
end

maintenance_card.questions.find_or_create_by!(
  question_text: "What is preventive maintenance?"
) do |question|
  question.option_a = "Major repairs performed by an A&P mechanic"
  question.option_b = "Simple, approved maintenance tasks a pilot may perform on eligible aircraft"
  question.option_c = "Any maintenance performed before every flight"
  question.option_d = "Maintenance that requires FAA approval"

  question.correct_option = "B"
  question.explanation = "Preventive maintenance consists of simple, approved maintenance tasks that pilots may perform on aircraft not used in air carrier service."
  question.position = 3
end

maintenance_card.questions.find_or_create_by!(
  question_text: "Which of the following is an example of preventive maintenance?"
) do |question|
  question.option_a = "Replacing a wing spar"
  question.option_b = "Overhauling an engine"
  question.option_c = "Replacing a landing light"
  question.option_d = "Repairing flight controls"

  question.correct_option = "C"
  question.explanation = "Examples of preventive maintenance include changing the oil, replacing tires, and replacing landing lights."
  question.position = 4
end

maintenance_card.questions.find_or_create_by!(
  question_text: "Who may perform preventive maintenance on an eligible aircraft?"
) do |question|
  question.option_a = "Only an A&P mechanic"
  question.option_b = "Any passenger"
  question.option_c = "A pilot on an aircraft not used in air carrier service"
  question.option_d = "Only the aircraft manufacturer"

  question.correct_option = "C"
  question.explanation = "Pilots may perform authorized preventive maintenance on aircraft that are not used in air carrier service."
  question.position = 5
end

maintenance_card.questions.find_or_create_by!(
  question_text: "Who may approve an aircraft for return to service after performing authorized preventive maintenance?"
) do |question|
  question.option_a = "Only an FAA inspector"
  question.option_b = "Only an A&P mechanic"
  question.option_c = "A private pilot or higher who performed the preventive maintenance"
  question.option_d = "Any certificated pilot"

  question.correct_option = "C"
  question.explanation = "A private pilot or higher who performs authorized preventive maintenance may approve the aircraft for return to service after properly documenting the work."
  question.position = 6
end

maintenance_card.questions.find_or_create_by!(
  question_text: "What must be done after preventive maintenance is completed?"
) do |question|
  question.option_a = "Notify the FAA within 30 days"
  question.option_b = "Record the work in the aircraft maintenance records"
  question.option_c = "Complete another annual inspection"
  question.option_d = "Replace the airworthiness certificate"

  question.correct_option = "B"
  question.explanation = "After preventive maintenance is completed, the work must be properly documented in the aircraft maintenance records."
  question.position = 7
end

maintenance_card.questions.find_or_create_by!(
  question_text: "Who has the final authority and responsibility for the operation of an aircraft?"
) do |question|
  question.option_a = "The aircraft owner"
  question.option_b = "The FAA"
  question.option_c = "The Pilot in Command (PIC)"
  question.option_d = "The maintenance technician"

  question.correct_option = "C"
  question.explanation = "The Pilot in Command (PIC) is directly responsible for and is the final authority as to the operation of the aircraft."
  question.position = 8
end

maintenance_card.questions.find_or_create_by!(
  question_text: "What should a pilot do after an Airworthiness Directive is issued?"
) do |question|
  question.option_a = "Wait until the next annual inspection"
  question.option_b = "Comply with the AD, perform the required maintenance, and document the work before operating the aircraft unless the AD allows otherwise"
  question.option_c = "Only notify the aircraft manufacturer"
  question.option_d = "Ignore the AD if the aircraft appears airworthy"

  question.correct_option = "B"
  question.explanation = "The general process is to comply with the Airworthiness Directive, perform the required maintenance, document the work, and ensure the aircraft is legal to operate."
  question.position = 9
end
