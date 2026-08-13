altitudes_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Minimum Safe Altitudes & Speed Limits"
)

altitudes_card.assign_attributes(
  description: "FAA minimum safe altitude requirements and aircraft speed limitations.",
  position: 1
)

altitudes_card.save!

unless altitudes_card.infographic.attached?
  altitudes_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Speed-Limits-Safe-Altitudes.jpg")
    ),
    filename: "GroundSchool-Speed-Limits-Safe-Altitudes.jpg"
  )
end

def upsert_altitudes_question(card, question_text:, position:, option_a:, option_b:, option_c:, option_d:, correct_option:, explanation:)
  question = card.questions.find_or_initialize_by(question_text: question_text)

  question.assign_attributes(
    option_a: option_a,
    option_b: option_b,
    option_c: option_c,
    option_d: option_d,
    correct_option: correct_option,
    explanation: explanation,
    position: position
  )

  question.save!
end

upsert_altitudes_question(
  altitudes_card,
  question_text: "What is the minimum altitude over a congested area?",
  option_a: "500 ft AGL",
  option_b: "1,000 ft above the highest obstacle within 2,000 ft",
  option_c: "1,500 ft AGL",
  option_d: "2,000 ft MSL",
  correct_option: "B",
  explanation: "Except when necessary for takeoff or landing, an aircraft over a congested area must remain at least 1,000 feet above the highest obstacle within a horizontal radius of 2,000 feet.",
  position: 1
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "What is the general minimum altitude over an area that is not congested?",
  option_a: "500 ft above the surface",
  option_b: "1,000 ft above the highest obstacle",
  option_c: "1,500 ft above the surface",
  option_d: "Any altitude if no buildings are nearby",
  correct_option: "A",
  explanation: "Except over open water or sparsely populated areas, and except when necessary for takeoff or landing, an aircraft must remain at least 500 feet above the surface.",
  position: 2
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "Over open water or a sparsely populated area, how close may an aircraft operate to a person, vessel, vehicle, or structure?",
  option_a: "No closer than 200 ft",
  option_b: "No closer than 500 ft",
  option_c: "No closer than 1,000 ft",
  option_d: "There is no minimum distance",
  correct_option: "B",
  explanation: "Over open water or sparsely populated areas, an aircraft may not be operated closer than 500 feet to any person, vessel, vehicle, or structure.",
  position: 3
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "What minimum-altitude requirement applies wherever an aircraft is operated?",
  option_a: "Remain at least 500 ft AGL",
  option_b: "Remain within gliding distance of an airport",
  option_c: "Maintain enough altitude to make an emergency landing without undue hazard if a power unit fails",
  option_d: "Remain at least 1,000 ft above every obstacle",
  correct_option: "C",
  explanation: "Except when necessary for takeoff or landing, an aircraft must be operated at an altitude that permits an emergency landing without undue hazard to persons or property on the surface if a power unit fails.",
  position: 4
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "When do the general minimum safe altitude requirements allow an aircraft to operate lower?",
  option_a: "Whenever the flight is conducted under VFR",
  option_b: "When necessary for takeoff or landing",
  option_c: "Whenever the pilot is receiving flight following",
  option_d: "When flying over an airport",
  correct_option: "B",
  explanation: "The minimum safe altitude requirements of 14 CFR §91.119 allow lower operation when it is necessary for takeoff or landing.",
  position: 5
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "When may a helicopter operate below the minimum altitudes prescribed for airplanes?",
  option_a: "Whenever it remains below 500 ft AGL",
  option_b: "Only while receiving an ATC clearance",
  option_c: "When operated without hazard to persons or property and in compliance with any FAA-prescribed routes or altitudes",
  option_d: "Only during an emergency",
  correct_option: "C",
  explanation: "A helicopter may operate below the airplane minimum altitudes when the operation is conducted without hazard to persons or property on the surface and complies with any routes or altitudes prescribed by the FAA.",
  position: 6
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "What is the maximum indicated airspeed below 10,000 feet MSL?",
  option_a: "200 knots",
  option_b: "230 knots",
  option_c: "250 knots",
  option_d: "300 knots",
  correct_option: "C",
  explanation: "Unless otherwise authorized by the FAA, an aircraft may not exceed 250 knots indicated airspeed below 10,000 feet MSL.",
  position: 7
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "What is the maximum indicated airspeed at or below 2,500 feet above the surface and within 4 NM of the primary airport of Class C or Class D airspace?",
  option_a: "180 knots",
  option_b: "200 knots",
  option_c: "230 knots",
  option_d: "250 knots",
  correct_option: "B",
  explanation: "Unless otherwise authorized or required by ATC, aircraft are limited to 200 knots indicated airspeed at or below 2,500 feet above the surface and within 4 nautical miles of the primary airport of Class C or Class D airspace.",
  position: 8
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "What is the maximum indicated airspeed beneath a Class B shelf or within a VFR corridor through Class B airspace?",
  option_a: "180 knots",
  option_b: "200 knots",
  option_c: "230 knots",
  option_d: "250 knots",
  correct_option: "B",
  explanation: "Aircraft operating beneath a Class B shelf or within a VFR corridor through Class B airspace are limited to 200 knots indicated airspeed.",
  position: 9
)

upsert_altitudes_question(
  altitudes_card,
  question_text: "When may an aircraft legally exceed a speed limit in 14 CFR §91.117?",
  option_a: "During night operations",
  option_b: "Whenever operating under VFR",
  option_c: "When the aircraft's minimum safe airspeed for the operation is higher than the limit",
  option_d: "Whenever operating below 5,000 feet MSL",
  correct_option: "C",
  explanation: "If an aircraft's minimum safe airspeed for a particular operation is greater than the applicable maximum speed, it may be operated at that minimum safe airspeed.",
  position: 10
)
