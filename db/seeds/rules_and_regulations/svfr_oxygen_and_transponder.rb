svfr_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "SVFR, Oxygen & Transponder Requirements"
)

svfr_card.assign_attributes(
  description: "Special VFR operations, supplemental oxygen requirements, and transponder/Mode C equipment requirements.",
  position: 13
)

svfr_card.save!

unless svfr_card.infographic.attached?
  svfr_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-SVFR-Oxygen-and-Transponder.jpg")),
    filename: "GroundSchool-SVFR-Oxygen-and-Transponder.jpg"
  )
end

svfr_card.questions.find_or_create_by!(
  question_text: "What is required before operating under Special VFR (SVFR)?"
) do |question|
  question.option_a = "A VFR flight plan"
  question.option_b = "ATC clearance"
  question.option_c = "An IFR clearance"
  question.option_d = "A transponder waiver"

  question.correct_option = "B"
  question.explanation = "Pilots must obtain an ATC Special VFR clearance before operating under SVFR within eligible controlled surface areas."
  question.position = 1
end

svfr_card.questions.find_or_create_by!(
  question_text: "What are the minimum weather requirements for fixed-wing Special VFR?"
) do |question|
  question.option_a = "3 SM visibility and 500 feet below clouds"
  question.option_b = "1 SM visibility and clear of clouds"
  question.option_c = "1 SM visibility and 500 feet below clouds"
  question.option_d = "Clear skies only"

  question.correct_option = "B"
  question.explanation = "Special VFR requires at least 1 statute mile visibility and the aircraft must remain clear of clouds."
  question.position = 2
end

svfr_card.questions.find_or_create_by!(
  question_text: "At night, when is Special VFR permitted in a fixed-wing aircraft?"
) do |question|
  question.option_a = "Whenever visibility is at least 1 SM"
  question.option_b = "Only if the pilot is instrument rated and the aircraft is IFR equipped"
  question.option_c = "Only in Class D airspace"
  question.option_d = "Never"

  question.correct_option = "B"
  question.explanation = "Night SVFR operations require an instrument-rated pilot and an aircraft equipped for IFR flight."
  question.position = 3
end

svfr_card.questions.find_or_create_by!(
  question_text: "When must required flight crew begin using supplemental oxygen?"
) do |question|
  question.option_a = "Immediately above 12,500 feet MSL"
  question.option_b = "After more than 30 minutes between 12,500 and 14,000 feet MSL"
  question.option_c = "Only above 15,000 feet MSL"
  question.option_d = "Only when carrying passengers"

  question.correct_option = "B"
  question.explanation = "Required flight crew must use supplemental oxygen after more than 30 minutes between 12,500 and 14,000 feet MSL."
  question.position = 4
end

svfr_card.questions.find_or_create_by!(
  question_text: "Above what altitude must required flight crew use supplemental oxygen continuously?"
) do |question|
  question.option_a = "10,000 feet MSL"
  question.option_b = "12,500 feet MSL"
  question.option_c = "14,000 feet MSL"
  question.option_d = "15,000 feet MSL"

  question.correct_option = "C"
  question.explanation = "Above 14,000 feet MSL, required flight crew must use supplemental oxygen during the entire flight at that altitude."
  question.position = 5
end

svfr_card.questions.find_or_create_by!(
  question_text: "Above what altitude must passengers be provided supplemental oxygen?"
) do |question|
  question.option_a = "12,500 feet MSL"
  question.option_b = "14,000 feet MSL"
  question.option_c = "15,000 feet MSL"
  question.option_d = "18,000 feet MSL"

  question.correct_option = "C"
  question.explanation = "Above 15,000 feet MSL, each passenger must be provided supplemental oxygen, although they are not required to use it."
  question.position = 6
end

svfr_card.questions.find_or_create_by!(
  question_text: "In which airspace is a transponder generally required?"
) do |question|
  question.option_a = "Only Class D"
  question.option_b = "Class A, Class C, within the Mode C veil, and above 10,000 feet MSL (with exceptions)"
  question.option_c = "Only Class G"
  question.option_d = "Only below 10,000 feet MSL"

  question.correct_option = "B"
  question.explanation = "Transponders are generally required in Class A and Class C airspace, within the 30 NM Mode C veil of Class B airports, and above 10,000 feet MSL, subject to regulatory exceptions."
  question.position = 7
end

svfr_card.questions.find_or_create_by!(
  question_text: "What is the purpose of the 30 NM Mode C veil?"
) do |question|
  question.option_a = "It marks Class D airspace"
  question.option_b = "It identifies the area around most Class B airports where an operating transponder is required"
  question.option_c = "It marks uncontrolled airspace"
  question.option_d = "It identifies military airspace"

  question.correct_option = "B"
  question.explanation = "The Mode C veil extends 30 NM around the primary airport of most Class B airspace and generally requires an operating altitude-reporting transponder."
  question.position = 8
end

svfr_card.questions.find_or_create_by!(
  question_text: "Which is an exception to the transponder requirement above 10,000 feet MSL?"
) do |question|
  question.option_a = "Flying at or below 2,500 feet AGL"
  question.option_b = "Flying at night"
  question.option_c = "Flying under Special VFR"
  question.option_d = "Flying on a weekday"

  question.correct_option = "A"
  question.explanation = "The transponder requirement above 10,000 feet MSL does not apply when operating at or below 2,500 feet AGL."
  question.position = 9
end

svfr_card.questions.find_or_create_by!(
  question_text: "Can a pilot declare Special VFR without contacting ATC?"
) do |question|
  question.option_a = "Yes, if visibility is at least 1 SM"
  question.option_b = "Yes, in Class E airspace"
  question.option_c = "No, Special VFR always requires an ATC clearance"
  question.option_d = "Only during daylight"

  question.correct_option = "C"
  question.explanation = "Pilots cannot self-authorize Special VFR. An ATC clearance is always required before operating under SVFR."
  question.position = 10
end
