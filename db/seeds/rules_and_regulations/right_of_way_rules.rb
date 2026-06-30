right_of_way_card = @rules_and_regs.study_cards.find_or_create_by!(
  title: "Right-of-Way Rules"
) do |card|
  card.description = "FAA right-of-way rules for aircraft operations."
  card.position = 3
end

unless right_of_way_card.infographic.attached?
  right_of_way_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Right-of-Way-Rules.jpg")
    ),
    filename: "GroundSchool-Right-of-Way-Rules.jpg"
  )
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "Which aircraft always has the highest right-of-way priority?"
) do |question|
  question.option_a = "Balloon"
  question.option_b = "Glider"
  question.option_c = "Aircraft in distress"
  question.option_d = "Airship"

  question.correct_option = "C"
  question.explanation = "An aircraft in distress always has the highest right-of-way priority. All other aircraft must give way to assist in the safe resolution of the emergency."
  question.position = 1
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "Which aircraft has the right-of-way over an airplane during normal operations?"
) do |question|
  question.option_a = "Helicopter"
  question.option_b = "Glider"
  question.option_c = "Rotorcraft"
  question.option_d = "Military aircraft"

  question.correct_option = "B"
  question.explanation = "According to FAA right-of-way rules, gliders have priority over airplanes because they have limited ability to maneuver without engine power."
  question.position = 2
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "Which sequence correctly lists aircraft from highest to lowest right-of-way priority?"
) do |question|
  question.option_a = "Airplane, Rotorcraft, Airship, Glider, Balloon"
  question.option_b = "Balloon, Glider, Airship, Airplane, Rotorcraft"
  question.option_c = "Balloon, Airplane, Glider, Airship, Rotorcraft"
  question.option_d = "Glider, Balloon, Airplane, Airship, Rotorcraft"

  question.correct_option = "B"
  question.explanation = "The correct priority order is Balloon, Glider, Airship, Airplane, and Rotorcraft. Remember that an aircraft in distress always takes priority over all others."
  question.position = 3
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "When two aircraft of the same category are converging at approximately the same altitude, which aircraft has the right-of-way?"
) do |question|
  question.option_a = "The aircraft on the left"
  question.option_b = "The faster aircraft"
  question.option_c = "The aircraft on the right"
  question.option_d = "The higher aircraft"

  question.correct_option = "C"
  question.explanation = "When aircraft of the same category are converging, the aircraft on the right has the right-of-way. The pilot on the left must give way."
  question.position = 4
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "When two aircraft are approaching each other head-on, what should both pilots do?"
) do |question|
  question.option_a = "Turn left"
  question.option_b = "Climb"
  question.option_c = "Descend"
  question.option_d = "Turn right"

  question.correct_option = "D"
  question.explanation = "When approaching head-on, both pilots should alter course to the right to reduce the risk of a collision."
  question.position = 5
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "Which aircraft must give way when one aircraft overtakes another?"
) do |question|
  question.option_a = "The aircraft being overtaken"
  question.option_b = "The slower aircraft"
  question.option_c = "The overtaking aircraft"
  question.option_d = "The lower aircraft"

  question.correct_option = "C"
  question.explanation = "The overtaking aircraft must alter course to the right and remain well clear of the aircraft being passed."
  question.position = 6
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "When giving way to another aircraft, which action should a pilot avoid?"
) do |question|
  question.option_a = "Turning away from the other aircraft"
  question.option_b = "Adjusting speed or course"
  question.option_c = "Passing over, under, or directly ahead of the other aircraft"
  question.option_d = "Maintaining visual separation"

  question.correct_option = "C"
  question.explanation = "A pilot should never pass over, under, or directly ahead of another aircraft when giving way. Instead, make an early, safe maneuver to maintain adequate separation."
  question.position = 7
end

right_of_way_card.questions.find_or_create_by!(
  question_text: "Which statement about aircraft on final approach is correct?"
) do |question|
  question.option_a = "The higher aircraft always has priority."
  question.option_b = "The faster aircraft has priority."
  question.option_c = "An aircraft established on final approach has the right-of-way, but should not cut in front of another aircraft already on final."
  question.option_d = "Departing aircraft always have priority over landing aircraft."

  question.correct_option = "C"
  question.explanation = "Aircraft established on final approach or landing have the right-of-way, but they should not use this rule to cut in front of another aircraft already established on final."
  question.position = 8
end
