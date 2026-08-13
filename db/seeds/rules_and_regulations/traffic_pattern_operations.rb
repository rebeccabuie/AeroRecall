traffic_pattern_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Traffic Pattern Operations"
)

traffic_pattern_card.assign_attributes(
  description: "Traffic pattern legs, runway selection, pattern entry, and standard traffic procedures.",
  position: 2
)

traffic_pattern_card.save!

unless traffic_pattern_card.infographic.attached?
  traffic_pattern_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Traffic-Pattern-Operations.jpg")
    ),
    filename: "GroundSchool-Traffic-Pattern-Operations.jpg"
  )
end

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "Which leg of the traffic pattern is flown parallel to the runway in the opposite direction of landing?"
)

question.assign_attributes(
  option_a: "Base",
  option_b: "Final",
  option_c: "Downwind",
  option_d: "Crosswind",
  correct_option: "C",
  explanation: "The downwind leg is flown parallel to the runway in the direction opposite landing. Pilots commonly complete before-landing checks during this leg.",
  position: 1
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "What is the preferred method for entering a standard traffic pattern from the pattern side at a non-towered airport?"
)

question.assign_attributes(
  option_a: "Straight in to final",
  option_b: "Enter on the base leg",
  option_c: "Enter at approximately a 45° angle to the downwind leg",
  option_d: "Enter directly onto crosswind",
  correct_option: "C",
  explanation: "When entering from the pattern side, the preferred entry is approximately 45° to the downwind leg, abeam the midpoint of the runway, at traffic pattern altitude. The entry should not disrupt aircraft already established in the pattern.",
  position: 2
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "Which traffic pattern direction is standard unless otherwise published?"
)

question.assign_attributes(
  option_a: "Right traffic",
  option_b: "Clockwise traffic",
  option_c: "Left traffic",
  option_d: "The direction depends on runway length",
  correct_option: "C",
  explanation: "Left traffic is standard unless airport publications, markings, or traffic pattern indicators specify right traffic.",
  position: 3
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "What is the typical traffic pattern altitude for most light, propeller-driven aircraft?"
)

question.assign_attributes(
  option_a: "500 feet AGL",
  option_b: "800 feet AGL",
  option_c: "1,000 feet AGL",
  option_d: "1,500 feet AGL",
  correct_option: "C",
  explanation: "The recommended traffic pattern altitude for most light, propeller-driven aircraft is approximately 1,000 feet above ground level unless a different altitude is published.",
  position: 4
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "Where should a pilot look for a published traffic pattern altitude?"
)

question.assign_attributes(
  option_a: "The aircraft registration certificate",
  option_b: "The Chart Supplement",
  option_c: "The airworthiness certificate",
  option_d: "The aircraft maintenance logbook",
  correct_option: "B",
  explanation: "Airport-specific information, including a published traffic pattern altitude when available, can be found in the Chart Supplement.",
  position: 5
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "What information does a windsock provide?"
)

question.assign_attributes(
  option_a: "Runway length",
  option_b: "Wind direction and approximate wind speed",
  option_c: "Traffic pattern direction",
  option_d: "Airport elevation",
  correct_option: "B",
  explanation: "A windsock indicates the direction the wind is coming from and provides an approximate indication of wind speed.",
  position: 6
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "Why do pilots prefer taking off and landing into the wind?"
)

question.assign_attributes(
  option_a: "It shortens the physical length of the runway",
  option_b: "It improves radio reception",
  option_c: "It reduces groundspeed for a given airspeed and generally shortens the ground roll",
  option_d: "It keeps the airplane cooler",
  correct_option: "C",
  explanation: "Taking off and landing into the wind reduces groundspeed for a given airspeed. This generally shortens the takeoff and landing ground roll and improves takeoff performance.",
  position: 7
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "What is the normal sequence of traffic pattern legs after takeoff?"
)

question.assign_attributes(
  option_a: "Upwind, downwind, crosswind, final, base",
  option_b: "Upwind, crosswind, downwind, base, final",
  option_c: "Crosswind, upwind, base, downwind, final",
  option_d: "Upwind, base, downwind, crosswind, final",
  correct_option: "B",
  explanation: "The normal sequence is upwind, crosswind, downwind, base, and final. The aircraft climbs on upwind, turns crosswind, flies parallel to the runway on downwind, turns toward the runway on base, and aligns with the runway on final.",
  position: 8
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "What information can a segmented circle provide?"
)

question.assign_attributes(
  option_a: "Fuel availability",
  option_b: "Airport elevation only",
  option_c: "Runway alignment and traffic pattern direction",
  option_d: "Weather forecasts",
  correct_option: "C",
  explanation: "A segmented circle may include landing direction indicators and traffic pattern indicators that help pilots determine runway alignment and the direction of turns in the traffic pattern.",
  position: 9
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "Before making a straight-in approach at a non-towered airport, a pilot should:"
)

question.assign_attributes(
  option_a: "Assume the straight-in aircraft has priority",
  option_b: "Fly below traffic pattern altitude",
  option_c: "Ensure the approach will not conflict with aircraft already in the pattern",
  option_d: "Enter final without announcing their position",
  correct_option: "C",
  explanation: "A pilot making a straight-in approach should monitor and communicate with other traffic and ensure the approach does not disrupt aircraft already established in the traffic pattern.",
  position: 10
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "If you overshoot the runway while turning from base to final, what is the safest action?"
)

question.assign_attributes(
  option_a: "Increase the bank angle aggressively",
  option_b: "Apply excessive inside rudder",
  option_c: "Continue the landing regardless of alignment",
  option_d: "Go around if the approach becomes unstable",
  correct_option: "D",
  explanation: "Trying to force the airplane back toward the runway with excessive bank or rudder at low altitude can cause a stall and spin. A go-around is the safest response to an unstable approach.",
  position: 11
)

question.save!

question = traffic_pattern_card.questions.find_or_initialize_by(
  question_text: "Why should pilots avoid flying too close behind another aircraft in the traffic pattern?"
)

question.assign_attributes(
  option_a: "To avoid radio interference",
  option_b: "To avoid wake turbulence and maintain safe spacing",
  option_c: "To improve GPS reception",
  option_d: "To reduce engine temperature",
  correct_option: "B",
  explanation: "Maintaining proper spacing helps pilots avoid wake turbulence and provides enough room for a safe, stabilized approach and landing.",
  position: 12
)

question.save!
