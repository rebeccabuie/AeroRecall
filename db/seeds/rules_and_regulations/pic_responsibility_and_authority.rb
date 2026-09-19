pic_responsibility_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "PIC Responsibility & Authority"
)

pic_responsibility_card.assign_attributes(
  description: "Pilot in command responsibility, emergency authority, reporting requirements, and careless or reckless operations.",
  position: 19
)

pic_responsibility_card.save!

unless pic_responsibility_card.infographic.attached?
  pic_responsibility_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-PIC-Responsibility-and-Authority.jpg"
      )
    ),
    filename: "GroundSchool-PIC-Responsibility-and-Authority.jpg"
  )
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "Who is directly responsible for and the final authority as to the operation of an aircraft?"
) do |question|
  question.option_a = "The aircraft owner"
  question.option_b = "The pilot in command"
  question.option_c = "The nearest ATC facility"
  question.option_d = "The aircraft manufacturer"
  question.correct_option = "B"
  question.explanation = "The pilot in command is directly responsible for, and is the final authority as to, the operation of the aircraft."
  question.position = 1
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "When may the pilot in command deviate from a rule in Part 91?"
) do |question|
  question.option_a = "Whenever following the rule would cause a delay"
  question.option_b = "During any cross-country flight"
  question.option_c = "In an in-flight emergency requiring immediate action, to the extent required to meet the emergency"
  question.option_d = "Whenever ATC is too busy to respond"
  question.correct_option = "C"
  question.explanation = "In an in-flight emergency requiring immediate action, the PIC may deviate from Part 91 to the extent required to meet that emergency."
  question.position = 2
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "During an emergency, how much may the PIC deviate from Part 91?"
) do |question|
  question.option_a = "Only from weather minimums"
  question.option_b = "Only from ATC instructions"
  question.option_c = "To the extent required to meet the emergency"
  question.option_d = "From every aviation regulation for the remainder of the flight"
  question.correct_option = "C"
  question.explanation = "Emergency authority is not unlimited. The PIC may deviate from Part 91 only to the extent required to meet the emergency."
  question.position = 3
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "After a PIC deviates from Part 91 under emergency authority, when is a written report required?"
) do |question|
  question.option_a = "After every emergency"
  question.option_b = "Within 24 hours"
  question.option_c = "Only upon request of the FAA Administrator"
  question.option_d = "Only if passengers were aboard"
  question.correct_option = "C"
  question.explanation = "A PIC who deviates under the emergency authority of §91.3 must, upon request of the Administrator, send a written report of that deviation to the Administrator."
  question.position = 4
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "Who has the final authority to determine whether a flight can be safely conducted?"
) do |question|
  question.option_a = "The pilot in command"
  question.option_b = "The aircraft owner"
  question.option_c = "A passenger"
  question.option_d = "The airport manager"
  question.correct_option = "A"
  question.explanation = "The PIC is responsible for the operation of the aircraft and has final authority over that operation."
  question.position = 5
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "What should a PIC do if an ATC clearance cannot be safely followed?"
) do |question|
  question.option_a = "Follow it regardless because ATC has final authority"
  question.option_b = "Exercise PIC authority and communicate with ATC as appropriate"
  question.option_c = "Turn off the radio"
  question.option_d = "Transfer responsibility for the flight to ATC"
  question.correct_option = "B"
  question.explanation = "ATC clearances do not transfer the PIC's responsibility for the safe operation of the aircraft. The PIC retains final authority and should communicate with ATC when a clearance cannot safely be followed."
  question.position = 6
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "Which statement best describes the relationship between ATC and PIC authority?"
) do |question|
  question.option_a = "ATC becomes responsible for the aircraft whenever radar contact is established"
  question.option_b = "ATC always has final authority over the operation of the aircraft"
  question.option_c = "The PIC retains responsibility and final authority for the operation of the aircraft"
  question.option_d = "The aircraft owner has final authority whenever ATC issues a clearance"
  question.correct_option = "C"
  question.explanation = "Even when receiving ATC services, the pilot in command remains directly responsible for and the final authority as to the operation of the aircraft."
  question.position = 7
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "What does the careless or reckless operation rule prohibit?"
) do |question|
  question.option_a = "Any flight conducted at night"
  question.option_b = "Operating an aircraft in a careless or reckless manner so as to endanger the life or property of another"
  question.option_c = "All flights conducted in poor weather"
  question.option_d = "Flying without receiving flight following"
  question.correct_option = "B"
  question.explanation = "14 CFR §91.13 prohibits operating an aircraft in a careless or reckless manner so as to endanger the life or property of another."
  question.position = 8
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "Which situation could be an example of careless or reckless aircraft operation?"
) do |question|
  question.option_a = "Maintaining a safe altitude over a populated area"
  question.option_b = "Conducting a normal preflight inspection"
  question.option_c = "Buzzing people or buildings in a manner that creates a hazard"
  question.option_d = "Checking NOTAMs before departure"
  question.correct_option = "C"
  question.explanation = "Hazardous low-level flight or buzzing people or property may constitute careless or reckless operation when it endangers the life or property of another."
  question.position = 9
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "A pilot continues toward severe weather even though a safe alternative is available and the decision creates a serious hazard. Which rule may become relevant?"
) do |question|
  question.option_a = "The prohibition against careless or reckless operation"
  question.option_b = "The Class B entry rule only"
  question.option_c = "The aircraft registration rule only"
  question.option_d = "The VFR cruising altitude rule only"
  question.correct_option = "A"
  question.explanation = "A hazardous operational decision may implicate the careless or reckless operation rule if the manner of operation endangers the life or property of another."
  question.position = 10
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "Which statement about emergency authority is correct?"
) do |question|
  question.option_a = "An emergency automatically transfers final authority to ATC"
  question.option_b = "The PIC may take action required to safely address an in-flight emergency"
  question.option_c = "The PIC must wait for ATC approval before taking emergency action"
  question.option_d = "Part 91 contains no emergency deviation authority"
  question.correct_option = "B"
  question.explanation = "The PIC has emergency authority to take the action necessary to meet an in-flight emergency requiring immediate action."
  question.position = 11
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "During an in-flight emergency requiring immediate action, ATC issues an instruction that would prevent the PIC from safely handling the emergency. What is the PIC's primary responsibility?"
) do |question|
  question.option_a = "Follow the instruction regardless of the consequences"
  question.option_b = "Take the action required to safely meet the emergency"
  question.option_c = "Wait until ATC cancels the instruction"
  question.option_d = "Allow a passenger to decide"
  question.correct_option = "B"
  question.explanation = "The PIC is the final authority for the operation of the aircraft and may exercise emergency authority to the extent required to meet an in-flight emergency."
  question.position = 12
end

pic_responsibility_card.questions.find_or_create_by!(
  question_text: "Which statement is the best memory rule for PIC authority?"
) do |question|
  question.option_a = "ATC is always the final authority"
  question.option_b = "The owner is always the final authority"
  question.option_c = "PIC = responsibility plus final authority"
  question.option_d = "PIC authority applies only when flying VFR"
  question.correct_option = "C"
  question.explanation = "The central concept is that the pilot in command is directly responsible for and has final authority over the operation of the aircraft."
  question.position = 13
end
