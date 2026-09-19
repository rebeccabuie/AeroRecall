atc_clearances_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "ATC Clearances"
)

atc_clearances_card.assign_attributes(
  description: "ATC clearance compliance, amended clearances, emergency authority, TCAS resolution advisories, readbacks, and PIC responsibility.",
  position: 20
)

atc_clearances_card.save!

unless atc_clearances_card.infographic.attached?
  atc_clearances_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-ATC-Clearances.jpg"
      )
    ),
    filename: "GroundSchool-ATC-Clearances.jpg"
  )
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "When operating under an ATC clearance, what is a pilot generally expected to do?"
) do |question|
  question.option_a = "Deviate whenever a shorter route is available"
  question.option_b = "Comply with the clearance unless an applicable exception permits deviation"
  question.option_c = "Treat the clearance as optional when operating VFR"
  question.option_d = "Follow only altitude assignments"
  question.correct_option = "B"
  question.explanation = "When an ATC clearance has been obtained, the pilot generally must comply with it unless an amended clearance is obtained, an emergency exists, or another applicable provision permits deviation."
  question.position = 1
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "Does an ATC clearance guarantee that the operation is safe?"
) do |question|
  question.option_a = "Yes, ATC assumes responsibility for the safety of the flight"
  question.option_b = "Yes, whenever radar contact has been established"
  question.option_c = "No, the PIC remains responsible for the safe operation of the aircraft"
  question.option_d = "Only during IFR operations"
  question.correct_option = "C"
  question.explanation = "An ATC clearance is an authorization, not a guarantee of safety. The pilot in command remains responsible for the safe operation of the aircraft."
  question.position = 2
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "ATC issues a clearance that the PIC considers unsafe. What should the pilot do?"
) do |question|
  question.option_a = "Follow it regardless because ATC has final authority"
  question.option_b = "Request an amended clearance and advise ATC of the concern"
  question.option_c = "Turn off the radio and continue"
  question.option_d = "Immediately land at the nearest airport"
  question.correct_option = "B"
  question.explanation = "The PIC remains responsible for safety. If a clearance is unacceptable or unsafe, the pilot should advise ATC and request an amended clearance."
  question.position = 3
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "ATC issues an amended clearance. Which clearance should the pilot follow?"
) do |question|
  question.option_a = "The original clearance only"
  question.option_b = "Whichever clearance is shorter"
  question.option_c = "The amended clearance"
  question.option_d = "Neither clearance"
  question.correct_option = "C"
  question.explanation = "Once ATC issues an amended clearance and it is accepted, the amended clearance replaces the applicable portion of the previous clearance."
  question.position = 4
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "In an in-flight emergency requiring immediate action, how may the PIC deviate from Part 91?"
) do |question|
  question.option_a = "Only after receiving ATC permission"
  question.option_b = "To the extent required to meet the emergency"
  question.option_c = "Only from altitude assignments"
  question.option_d = "The PIC may never deviate from Part 91"
  question.correct_option = "B"
  question.explanation = "In an in-flight emergency requiring immediate action, the PIC may deviate from Part 91 to the extent required to meet the emergency."
  question.position = 5
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "After using emergency authority to deviate from Part 91, when must the PIC submit a written report of the deviation?"
) do |question|
  question.option_a = "Automatically within 24 hours"
  question.option_b = "Automatically within 48 hours"
  question.option_c = "Upon request of the FAA Administrator"
  question.option_d = "After every emergency landing"
  question.correct_option = "C"
  question.explanation = "A written report of a deviation under §91.3 is required upon request of the FAA Administrator; it is not automatically required after every emergency deviation."
  question.position = 6
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "What is the difference between a TCAS Traffic Advisory (TA) and a Resolution Advisory (RA)?"
) do |question|
  question.option_a = "A TA recommends a maneuver while an RA only identifies traffic"
  question.option_b = "A TA alerts the pilot to traffic, while an RA provides a recommended vertical maneuver or restriction"
  question.option_c = "There is no difference"
  question.option_d = "Only a TA is displayed to the pilot"
  question.correct_option = "B"
  question.explanation = "A Traffic Advisory helps the pilot visually acquire potentially conflicting traffic. A Resolution Advisory provides a recommended vertical maneuver or restriction intended to resolve the conflict."
  question.position = 7
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "Should a pilot deviate from an ATC clearance based solely on a TCAS Traffic Advisory (TA)?"
) do |question|
  question.option_a = "Yes, immediately"
  question.option_b = "No, a TA alone does not authorize deviation from an ATC clearance"
  question.option_c = "Yes, but only in Class B airspace"
  question.option_d = "Yes, whenever the other aircraft is visible"
  question.correct_option = "B"
  question.explanation = "A TCAS Traffic Advisory is intended to help the pilot acquire traffic. Pilots should not deviate from an ATC clearance based solely on a TA."
  question.position = 8
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "What should a pilot generally do when receiving a TCAS II Resolution Advisory (RA)?"
) do |question|
  question.option_a = "Ignore it until ATC approves the maneuver"
  question.option_b = "Respond immediately as directed unless doing so would jeopardize the safe operation of the aircraft"
  question.option_c = "Treat it exactly like a Traffic Advisory"
  question.option_d = "Disconnect the transponder"
  question.correct_option = "B"
  question.explanation = "Pilots are expected to respond immediately to a TCAS II Resolution Advisory unless doing so would jeopardize the safe operation of the aircraft."
  question.position = 9
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "After responding to a TCAS Resolution Advisory that causes a deviation from an ATC clearance, what should the pilot do?"
) do |question|
  question.option_a = "Notify ATC as soon as practicable"
  question.option_b = "Wait until after landing to mention it"
  question.option_c = "Turn off TCAS"
  question.option_d = "Immediately cancel the flight plan"
  question.correct_option = "A"
  question.explanation = "When responding to an RA requires deviation from an ATC clearance, the pilot should notify ATC as soon as practicable."
  question.position = 10
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "Which ATC instruction requires a pilot readback?"
) do |question|
  question.option_a = "A general traffic advisory"
  question.option_b = "A hold short instruction"
  question.option_c = "A weather observation"
  question.option_d = "A suggestion to contact Flight Service"
  question.correct_option = "B"
  question.explanation = "Pilots must read back runway hold short instructions. Correct readbacks help prevent runway incursions and misunderstandings."
  question.position = 11
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "ATC says, 'Cessna 123AB, hold short of Runway 27.' What is the appropriate response?"
) do |question|
  question.option_a = "Roger"
  question.option_b = "Wilco"
  question.option_c = "Cessna 123AB, holding short Runway 27"
  question.option_d = "No response is necessary"
  question.correct_option = "C"
  question.explanation = "A hold short instruction should be read back with the runway designation so both the pilot and controller can verify the restriction."
  question.position = 12
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "Why should pilots read back altitude assignments and vectors?"
) do |question|
  question.option_a = "To verify that the clearance or instruction was correctly received"
  question.option_b = "Because every ATC transmission must be repeated word for word"
  question.option_c = "To cancel the previous clearance"
  question.option_d = "To transfer responsibility for the flight to ATC"
  question.correct_option = "A"
  question.explanation = "Reading back important assignments such as altitudes and vectors allows ATC and the pilot to detect misunderstandings before they create a problem."
  question.position = 13
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "Which statement best describes the PIC's responsibility when operating under ATC control?"
) do |question|
  question.option_a = "ATC assumes final responsibility for the aircraft"
  question.option_b = "The PIC remains responsible for the safe operation of the aircraft"
  question.option_c = "The PIC is responsible only when operating VFR"
  question.option_d = "The PIC may ignore any clearance without notifying ATC"
  question.correct_option = "B"
  question.explanation = "ATC provides clearances and instructions, but the pilot in command remains responsible for and has final authority over the safe operation of the aircraft."
  question.position = 14
end

atc_clearances_card.questions.find_or_create_by!(
  question_text: "Which statement best summarizes an ATC clearance?"
) do |question|
  question.option_a = "It is an authorization and does not relieve the PIC of responsibility for safety"
  question.option_b = "It guarantees terrain and obstacle clearance under all circumstances"
  question.option_c = "It transfers final authority from the PIC to ATC"
  question.option_d = "It is optional whenever the pilot disagrees with it"
  question.correct_option = "A"
  question.explanation = "An ATC clearance authorizes an aircraft to proceed under specified traffic conditions. It does not relieve the pilot in command of responsibility for safe operation."
  question.position = 15
end
