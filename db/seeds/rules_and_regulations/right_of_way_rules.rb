right_of_way_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Right-of-Way Rules"
)

right_of_way_card.assign_attributes(
  description: "FAA right-of-way rules for aircraft operations.",
  position: 3
)

right_of_way_card.save!

unless right_of_way_card.infographic.attached?
  right_of_way_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Right-of-Way-Rules.jpg")
    ),
    filename: "GroundSchool-Right-of-Way-Rules.jpg"
  )
end

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "Which aircraft always has the highest right-of-way priority?"
)

question.assign_attributes(
  option_a: "Balloon",
  option_b: "Glider",
  option_c: "Aircraft in distress",
  option_d: "Aircraft towing another aircraft",
  correct_option: "C",
  explanation: "An aircraft in distress has the right-of-way over all other air traffic. All other aircraft must give way.",
  position: 1
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "Which aircraft has the right-of-way when a glider and an airplane are converging?"
)

question.assign_attributes(
  option_a: "The airplane",
  option_b: "The glider",
  option_c: "The faster aircraft",
  option_d: "The aircraft at the higher altitude",
  correct_option: "B",
  explanation: "A glider has the right-of-way over an airplane because it has less ability to maneuver or remain airborne without engine power.",
  position: 2
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "Which statement correctly describes right-of-way priority between different categories of aircraft?"
)

question.assign_attributes(
  option_a: "Rotorcraft always have priority over airplanes",
  option_b: "Airplanes always have priority over rotorcraft",
  option_c: "Balloons have priority over all other categories, and gliders have priority over powered aircraft",
  option_d: "The fastest aircraft always has priority",
  correct_option: "C",
  explanation: "Balloons have the right-of-way over every other category of aircraft. Gliders have priority over airships and powered aircraft. Airplanes and rotorcraft do not automatically have priority over one another.",
  position: 3
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "What special right-of-way priority does an aircraft towing or refueling another aircraft have?"
)

question.assign_attributes(
  option_a: "It has priority only over rotorcraft",
  option_b: "It has priority over all other engine-driven aircraft",
  option_c: "It has priority over balloons and gliders",
  option_d: "It has no special priority",
  correct_option: "B",
  explanation: "An aircraft towing or refueling another aircraft has the right-of-way over all other engine-driven aircraft.",
  position: 4
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "When two aircraft of the same category are converging at approximately the same altitude, which aircraft has the right-of-way?"
)

question.assign_attributes(
  option_a: "The aircraft on the left",
  option_b: "The faster aircraft",
  option_c: "The aircraft on the right",
  option_d: "The higher aircraft",
  correct_option: "C",
  explanation: "When aircraft of the same category are converging at approximately the same altitude, the aircraft to the other's right has the right-of-way. The aircraft on the left must give way.",
  position: 5
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "When two aircraft are approaching each other head-on or nearly head-on, what should both pilots do?"
)

question.assign_attributes(
  option_a: "Alter course to the left",
  option_b: "Climb",
  option_c: "Descend",
  option_d: "Alter course to the right",
  correct_option: "D",
  explanation: "When aircraft are approaching head-on or nearly head-on, each pilot must alter course to the right.",
  position: 6
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "Which aircraft must give way when one aircraft overtakes another?"
)

question.assign_attributes(
  option_a: "The aircraft being overtaken",
  option_b: "The slower aircraft",
  option_c: "The overtaking aircraft",
  option_d: "The lower aircraft",
  correct_option: "C",
  explanation: "The aircraft being overtaken has the right-of-way. The overtaking aircraft must alter course to the right and pass well clear.",
  position: 7
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "When giving way to another aircraft, which action must a pilot avoid?"
)

question.assign_attributes(
  option_a: "Turning away from the other aircraft",
  option_b: "Adjusting speed or course",
  option_c: "Passing over, under, or ahead of the aircraft with the right-of-way",
  option_d: "Maintaining visual separation",
  correct_option: "C",
  explanation: "The yielding aircraft must avoid passing over, under, or ahead of the aircraft with the right-of-way unless it will pass well clear.",
  position: 8
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "When two aircraft are approaching an airport to land, which aircraft normally has the right-of-way?"
)

question.assign_attributes(
  option_a: "The aircraft at the higher altitude",
  option_b: "The aircraft at the lower altitude",
  option_c: "The faster aircraft",
  option_d: "The aircraft closest to the control tower",
  correct_option: "B",
  explanation: "When two or more aircraft are approaching an airport to land, the aircraft at the lower altitude has the right-of-way. It may not cut in front of or overtake another aircraft already established on final approach.",
  position: 9
)

question.save!

question = right_of_way_card.questions.find_or_initialize_by(
  question_text: "When an aircraft and another aircraft or vessel on the water are crossing, which has the right-of-way?"
)

question.assign_attributes(
  option_a: "The aircraft",
  option_b: "The vessel",
  option_c: "The aircraft or vessel on the right",
  option_d: "The faster aircraft or vessel",
  correct_option: "C",
  explanation: "When crossing on the water, the aircraft or vessel to the other's right has the right-of-way.",
  position: 10
)

question.save!
