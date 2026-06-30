traffic_pattern_card = @rules_and_regs.study_cards.find_or_create_by!(
  title: "Traffic Pattern Operations"
) do |card|
  card.description = "Traffic pattern legs, runway selection, pattern entry, and standard traffic procedures."
  card.position = 2
end

unless traffic_pattern_card.infographic.attached?
  traffic_pattern_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-Traffic-Pattern-Operations.jpg")
    ),
    filename: "GroundSchool-Traffic-Pattern-Operations.jpg"
  )
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "Which leg of the traffic pattern is flown parallel to the runway in the opposite direction of landing?"
) do |question|
  question.option_a = "Base"
  question.option_b = "Final"
  question.option_c = "Downwind"
  question.option_d = "Crosswind"

  question.correct_option = "C"
  question.explanation = "The downwind leg is flown parallel to the runway in the opposite direction of landing. Pilots typically complete before-landing checks during this leg."
  question.position = 1
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "What is the recommended method for entering a standard traffic pattern at a non-towered airport?"
) do |question|
  question.option_a = "Straight in to final"
  question.option_b = "Enter on the base leg"
  question.option_c = "45° entry to the downwind leg"
  question.option_d = "Enter directly onto crosswind"

  question.correct_option = "C"
  question.explanation = "The recommended entry is a 45° angle to the midpoint of the downwind leg, allowing pilots to safely merge with existing traffic."
  question.position = 2
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "Which traffic pattern direction is standard unless otherwise published?"
) do |question|
  question.option_a = "Right traffic"
  question.option_b = "Clockwise traffic"
  question.option_c = "Left traffic"
  question.option_d = "Depends on runway length"

  question.correct_option = "C"
  question.explanation = "Left traffic is standard unless airport publications or traffic pattern indicators specify right traffic."
  question.position = 3
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "What is the typical traffic pattern altitude for most light aircraft?"
) do |question|
  question.option_a = "500 feet AGL"
  question.option_b = "800 feet AGL"
  question.option_c = "1,000 feet AGL"
  question.option_d = "1,500 feet AGL"

  question.correct_option = "C"
  question.explanation = "The standard traffic pattern altitude for most piston aircraft is approximately 1,000 feet above ground level unless otherwise published."
  question.position = 4
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "What information does a windsock provide?"
) do |question|
  question.option_a = "Runway length"
  question.option_b = "Wind direction and approximate wind speed"
  question.option_c = "Traffic pattern direction"
  question.option_d = "Airport elevation"

  question.correct_option = "B"
  question.explanation = "A windsock indicates the direction the wind is blowing from and provides an approximate indication of wind speed."
  question.position = 5
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "Why do pilots prefer taking off and landing into the wind?"
) do |question|
  question.option_a = "It shortens the runway"
  question.option_b = "It improves radio reception"
  question.option_c = "It reduces takeoff and landing distance while improving aircraft performance"
  question.option_d = "It keeps the airplane cooler"

  question.correct_option = "C"
  question.explanation = "Taking off and landing into the wind reduces ground roll, improves climb performance, and lowers landing speed."
  question.position = 6
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "What information can a segmented circle provide?"
) do |question|
  question.option_a = "Fuel availability"
  question.option_b = "Airport elevation only"
  question.option_c = "Traffic pattern direction and runway information"
  question.option_d = "Weather forecasts"

  question.correct_option = "C"
  question.explanation = "A segmented circle displays traffic pattern indicators and other visual aids that help pilots determine the correct traffic pattern direction and runway alignment."
  question.position = 7
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "Before making a straight-in approach at a non-towered airport, a pilot should:"
) do |question|
  question.option_a = "Assume they have priority"
  question.option_b = "Fly below traffic pattern altitude"
  question.option_c = "Ensure the approach will not conflict with aircraft already in the pattern"
  question.option_d = "Always enter on final regardless of traffic"

  question.correct_option = "C"
  question.explanation = "Pilots should ensure a straight-in approach can be safely completed without disrupting aircraft already established in the traffic pattern."
  question.position = 8
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "If you overshoot the runway while turning from base to final, what is the safest action?"
) do |question|
  question.option_a = "Increase bank angle aggressively"
  question.option_b = "Slip the airplane toward the runway"
  question.option_c = "Continue the landing no matter what"
  question.option_d = "Go around if the approach becomes unstable"

  question.correct_option = "D"
  question.explanation = "Trying to force the airplane back to the runway with excessive bank at low altitude can lead to a stall/spin accident. A go-around is the safest choice."
  question.position = 9
end

traffic_pattern_card.questions.find_or_create_by!(
  question_text: "Why should pilots avoid flying too close behind another aircraft on downwind?"
) do |question|
  question.option_a = "To avoid radio interference"
  question.option_b = "To prevent wake turbulence and allow proper spacing"
  question.option_c = "To improve GPS reception"
  question.option_d = "To reduce engine temperature"

  question.correct_option = "B"
  question.explanation = "Maintaining proper spacing helps avoid wake turbulence and provides enough room for a safe, stabilized approach to landing."
  question.position = 10
end
