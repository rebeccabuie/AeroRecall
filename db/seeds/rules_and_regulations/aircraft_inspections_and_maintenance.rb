aircraft_inspections_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Aircraft Inspections & Maintenance"
)

aircraft_inspections_card.assign_attributes(
  description: "Required inspections, airworthiness, maintenance records, passenger briefings, and post-maintenance requirements.",
  position: 10
)

aircraft_inspections_card.save!

unless aircraft_inspections_card.infographic.attached?
  aircraft_inspections_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Aircraft-Inspections-and-Maintenance.jpg")
    ),
    filename: "GroundSchool-Aircraft-Inspections-and-Maintenance.jpg"
  )
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "What is required before an aircraft may legally be flown?"
) do |question|
  question.option_a = "A current inspection or other authorization for operation"
  question.option_b = "Only enough fuel for the flight"
  question.option_c = "A maintenance entry within the last 30 days"
  question.option_d = "A new annual inspection every calendar year"

  question.correct_option = "A"
  question.explanation = "An aircraft must have the required inspections or another authorization, such as a Special Flight Permit when applicable, before it may be operated."
  question.position = 1
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "What is the purpose of a Special Flight Permit (ferry permit)?"
) do |question|
  question.option_a = "To allow passengers to fly for compensation"
  question.option_b = "To operate an aircraft that is not currently airworthy so it can be flown to a location for repairs or other approved purposes"
  question.option_c = "To extend the annual inspection by 30 days"
  question.option_d = "To avoid completing required maintenance"

  question.correct_option = "B"
  question.explanation = "A Special Flight Permit allows an aircraft that may not currently meet applicable airworthiness requirements to be flown safely for specific authorized purposes, such as flying to a repair facility."
  question.position = 2
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "After certain major repairs or alterations affecting flight characteristics, what is required before carrying passengers?"
) do |question|
  question.option_a = "A test flight"
  question.option_b = "A 100-hour inspection"
  question.option_c = "A new annual inspection"
  question.option_d = "A new registration certificate"

  question.correct_option = "A"
  question.explanation = "Major repairs or alterations that may appreciably affect flight characteristics require an appropriate test flight before carrying passengers."
  question.position = 3
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "Who may perform the required test flight after a major repair or alteration?"
) do |question|
  question.option_a = "Any student pilot"
  question.option_b = "A private pilot or higher who is appropriately rated for the aircraft"
  question.option_c = "Only the mechanic who performed the work"
  question.option_d = "Only a designated pilot examiner"

  question.correct_option = "B"
  question.explanation = "The test flight must be conducted by an appropriately rated pilot who holds at least a private pilot certificate."
  question.position = 4
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "What information should be recorded in an aircraft maintenance logbook?"
) do |question|
  question.option_a = "Only fuel purchases"
  question.option_b = "Repairs, inspections, and return-to-service entries"
  question.option_c = "Passenger names"
  question.option_d = "Weather conditions for every flight"

  question.correct_option = "B"
  question.explanation = "Aircraft maintenance records include repairs, inspections, and the required return-to-service documentation."
  question.position = 5
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "How often is an annual inspection required?"
) do |question|
  question.option_a = "Every 6 calendar months"
  question.option_b = "Every 12 calendar months"
  question.option_c = "Every 100 flight hours"
  question.option_d = "Every 24 calendar months"

  question.correct_option = "B"
  question.explanation = "An annual inspection is required every 12 calendar months."
  question.position = 6
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "Which aircraft generally requires a 100-hour inspection?"
) do |question|
  question.option_a = "Every privately owned aircraft"
  question.option_b = "Aircraft carrying persons for hire or used for flight instruction for hire"
  question.option_c = "Only turbine-powered aircraft"
  question.option_d = "Only experimental aircraft"

  question.correct_option = "B"
  question.explanation = "A 100-hour inspection is generally required for aircraft carrying persons for hire and aircraft used to provide flight instruction for hire."
  question.position = 7
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "How often must a transponder inspection be completed?"
) do |question|
  question.option_a = "Every 12 calendar months"
  question.option_b = "Every 24 calendar months"
  question.option_c = "Every 100 flight hours"
  question.option_d = "Only after maintenance"

  question.correct_option = "B"
  question.explanation = "Most aircraft operating where a transponder is required must have the transponder inspected every 24 calendar months."
  question.position = 8
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "How often must the altimeter and static pressure system be inspected for IFR operations?"
) do |question|
  question.option_a = "Every 12 calendar months"
  question.option_b = "Every 24 calendar months"
  question.option_c = "Every 36 calendar months"
  question.option_d = "Every 100 flight hours"

  question.correct_option = "B"
  question.explanation = "Aircraft operated under IFR must have the altimeter and static pressure system inspected every 24 calendar months."
  question.position = 9
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "Who is responsible for ensuring passengers receive the required safety briefing before flight?"
) do |question|
  question.option_a = "The mechanic"
  question.option_b = "The airport manager"
  question.option_c = "The Pilot in Command (PIC)"
  question.option_d = "The FAA inspector"

  question.correct_option = "C"
  question.explanation = "The Pilot in Command is responsible for ensuring passengers receive the required safety briefing before flight."
  question.position = 10
end

aircraft_inspections_card.questions.find_or_create_by!(
  question_text: "Which of the following items is commonly included in a passenger safety briefing?"
) do |question|
  question.option_a = "Engine overhaul schedule"
  question.option_b = "Seat belts, emergency exits, and smoking"
  question.option_c = "Aircraft registration history"
  question.option_d = "Weight and balance calculations"

  question.correct_option = "B"
  question.explanation = "Passenger briefings typically include seat belts, smoking, emergency exits/ingress-egress, survival equipment when appropriate, ditching procedures when applicable, and oxygen use if installed."
  question.position = 11
end
