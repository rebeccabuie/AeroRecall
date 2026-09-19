class_b_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Operations in Class B Airspace"
)

class_b_card.assign_attributes(
  description: "Class B entry requirements, equipment, student pilot requirements, and the important distinction between Class B clearance and Class C or D communications.",
  position: 18
)

class_b_card.save!

unless class_b_card.infographic.attached?
  class_b_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Operations-in-Class-B-Airspace.jpg"
      )
    ),
    filename: "GroundSchool-Operations-in-Class-B-Airspace.jpg"
  )
end

class_b_card.questions.find_or_create_by!(
  question_text: "What must a VFR pilot receive before entering Class B airspace?"
) do |question|
  question.option_a = "A discrete transponder code only"
  question.option_b = "An explicit ATC clearance"
  question.option_c = "A weather briefing"
  question.option_d = "Permission from the airport manager"
  question.correct_option = "B"
  question.explanation = "A VFR aircraft must receive an ATC clearance before entering Class B airspace. Merely establishing radio communication with ATC is not sufficient."
  question.position = 1
end

class_b_card.questions.find_or_create_by!(
  question_text: "You contact Approach before entering Class B airspace and ATC responds, 'Cessna 123AB, standby.' May you enter the Class B?"
) do |question|
  question.option_a = "Yes, because ATC used your call sign"
  question.option_b = "Yes, if your transponder is operating"
  question.option_c = "No, because you have not received a Class B clearance"
  question.option_d = "Yes, if you remain VFR"
  question.correct_option = "C"
  question.explanation = "Hearing your call sign does not constitute a Class B clearance. You must receive an explicit clearance before entering Class B airspace."
  question.position = 2
end

class_b_card.questions.find_or_create_by!(
  question_text: "Which phrase would clearly authorize a VFR pilot to enter Class B airspace?"
) do |question|
  question.option_a = "Cessna 123AB, standby"
  question.option_b = "Cessna 123AB, radar contact"
  question.option_c = "Cessna 123AB, cleared into the Bravo"
  question.option_d = "Cessna 123AB, squawk 0421"
  question.correct_option = "C"
  question.explanation = "The important concept is that ATC must explicitly clear the aircraft into Class B airspace. A transponder code, radar contact, or acknowledgment alone is not an entry clearance."
  question.position = 3
end

class_b_card.questions.find_or_create_by!(
  question_text: "Which equipment is normally required for VFR operations in Class B airspace?"
) do |question|
  question.option_a = "Two-way radio, appropriate transponder with altitude reporting, and ADS-B Out where required"
  question.option_b = "Only a handheld radio"
  question.option_c = "Only an ELT and magnetic compass"
  question.option_d = "No special communication or surveillance equipment"
  question.correct_option = "A"
  question.explanation = "Class B operations normally require appropriate two-way radio communications and transponder equipment with altitude reporting. ADS-B Out is also required in Class B airspace unless an applicable exception or authorization applies."
  question.position = 4
end

class_b_card.questions.find_or_create_by!(
  question_text: "What communication equipment is generally required to operate in Class B airspace?"
) do |question|
  question.option_a = "A receive-only radio"
  question.option_b = "An operable two-way radio capable of communications with ATC"
  question.option_c = "A satellite telephone"
  question.option_d = "No radio when operating VFR"
  question.correct_option = "B"
  question.explanation = "An operable two-way radio capable of communicating with the appropriate ATC facility is normally required for operations in Class B airspace."
  question.position = 5
end

class_b_card.questions.find_or_create_by!(
  question_text: "What is the general upper limit of Class B airspace?"
) do |question|
  question.option_a = "2,500 feet AGL"
  question.option_b = "10,000 feet MSL"
  question.option_c = "12,500 feet MSL"
  question.option_d = "18,000 feet MSL"
  question.correct_option = "B"
  question.explanation = "Class B airspace generally extends from the surface to 10,000 feet MSL around the nation's busiest airports, although the exact configuration is individually tailored."
  question.position = 6
end

class_b_card.questions.find_or_create_by!(
  question_text: "May a student pilot conduct solo flight in Class B airspace?"
) do |question|
  question.option_a = "No, student pilots are never permitted in Class B"
  question.option_b = "Yes, when the applicable training and endorsement requirements have been met"
  question.option_c = "Yes, without additional training if visibility is at least 5 miles"
  question.option_d = "Yes, but only at night"
  question.correct_option = "B"
  question.explanation = "Student pilots may conduct certain solo operations in Class B airspace when the applicable training and logbook endorsement requirements have been satisfied."
  question.position = 7
end

class_b_card.questions.find_or_create_by!(
  question_text: "For a student pilot to conduct solo flight in Class B airspace, the required logbook endorsement must have been made within what period?"
) do |question|
  question.option_a = "30 calendar days"
  question.option_b = "60 calendar days"
  question.option_c = "90 calendar days"
  question.option_d = "12 calendar months"
  question.correct_option = "C"
  question.explanation = "The applicable student pilot Class B endorsement must be made within the preceding 90 calendar days."
  question.position = 8
end

class_b_card.questions.find_or_create_by!(
  question_text: "A student's training and endorsement for solo flight in Class B airspace must be specific to what?"
) do |question|
  question.option_a = "Any Class B airspace in the United States"
  question.option_b = "The specific Class B airspace in which the solo flight will occur"
  question.option_c = "Only the aircraft make and model"
  question.option_d = "The student's home airport only"
  question.correct_option = "B"
  question.explanation = "The student must receive the required ground and flight training for the specific Class B airspace in which the solo flight will occur and receive the appropriate endorsement."
  question.position = 9
end

class_b_card.questions.find_or_create_by!(
  question_text: "What is an important additional consideration for a student pilot conducting solo operations to, from, or at an airport located within Class B airspace?"
) do |question|
  question.option_a = "Specific training and endorsement requirements apply to that airport"
  question.option_b = "No endorsement is required if ATC approves the flight"
  question.option_c = "The student only needs a Class C endorsement"
  question.option_d = "Student pilots may operate at every Class B airport"
  question.correct_option = "A"
  question.explanation = "Solo operations to, from, or at an airport located within Class B airspace have specific training and endorsement requirements, and some Class B primary airports prohibit student pilot operations."
  question.position = 10
end

class_b_card.questions.find_or_create_by!(
  question_text: "What is the key VFR entry difference between Class B airspace and Class C or D airspace?"
) do |question|
  question.option_a = "Class B requires an explicit ATC clearance, while Class C and D generally require establishment of two-way radio communications before entry"
  question.option_b = "Class C requires an explicit clearance but Class B does not"
  question.option_c = "Class B has no radio requirement"
  question.option_d = "There is no difference"
  question.correct_option = "A"
  question.explanation = "For VFR entry into Class B, the pilot must receive an ATC clearance. For Class C and D, the central entry requirement is establishing the required two-way radio communications before entering."
  question.position = 11
end

class_b_card.questions.find_or_create_by!(
  question_text: "You call a Class C tower and hear your aircraft call sign in the controller's response. What does that generally indicate?"
) do |question|
  question.option_a = "Two-way radio communication has been established"
  question.option_b = "You have been cleared into Class B airspace"
  question.option_c = "You have been cleared to land"
  question.option_d = "You may disregard all further ATC instructions"
  question.correct_option = "A"
  question.explanation = "For Class C entry, two-way radio communication is established when ATC responds using the aircraft's call sign. This differs from Class B, where an explicit clearance is required."
  question.position = 12
end

class_b_card.questions.find_or_create_by!(
  question_text: "ATC responds to your Class C call with 'Aircraft calling, standby' without using your call sign. Has two-way radio communication been established for Class C entry?"
) do |question|
  question.option_a = "Yes"
  question.option_b = "No"
  question.option_c = "Yes, if your transponder is on"
  question.option_d = "Yes, if you can see the airport"
  question.correct_option = "B"
  question.explanation = "If ATC responds without using your aircraft call sign, the required two-way radio communication has not yet been established for Class C entry."
  question.position = 13
end

class_b_card.questions.find_or_create_by!(
  question_text: "Which statement is the best memory rule for VFR entry into Class B airspace?"
) do |question|
  question.option_a = "If ATC can hear you, enter"
  question.option_b = "A transponder code is a clearance"
  question.option_c = "No clearance, no Bravo"
  question.option_d = "Flight following automatically clears you into Bravo"
  question.correct_option = "C"
  question.explanation = "For the knowledge test, remember the central Class B rule: a VFR pilot needs an explicit ATC clearance before entering. Simply talking to ATC, receiving flight following, or receiving a squawk code is not enough."
  question.position = 14
end
