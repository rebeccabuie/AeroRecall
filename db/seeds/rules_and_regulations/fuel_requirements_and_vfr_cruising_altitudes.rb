fuel_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Fuel Requirements & VFR Cruising Altitudes"
)

fuel_card.assign_attributes(
  description: "Day and night VFR fuel reserves, plus VFR cruising altitude rules based on magnetic course.",
  position: 14
)

fuel_card.save!

unless fuel_card.infographic.attached?
  fuel_card.infographic.attach(
    io: File.open(Rails.root.join("db/seed_images/GroundSchool-Fuel-Requirements-and-VFR-Cruising-Altitudes.jpg")),
    filename: "GroundSchool-Fuel-Requirements-and-VFR-Cruising-Altitudes.jpg"
  )
end

fuel_card.questions.find_or_create_by!(
  question_text: "How much fuel reserve is required for a daytime VFR flight?"
) do |question|
  question.option_a = "20 minutes at cruise speed"
  question.option_b = "30 minutes at normal cruising speed after reaching the intended landing point"
  question.option_c = "45 minutes at normal cruising speed"
  question.option_d = "1 hour at any speed"

  question.correct_option = "B"
  question.explanation = "For day VFR, enough fuel must remain to fly for at least 30 minutes at normal cruising speed after reaching the first point of intended landing."
  question.position = 1
end

fuel_card.questions.find_or_create_by!(
  question_text: "How much fuel reserve is required for a night VFR flight?"
) do |question|
  question.option_a = "30 minutes at cruise speed"
  question.option_b = "45 minutes at normal cruising speed after reaching the intended landing point"
  question.option_c = "1 hour after takeoff"
  question.option_d = "No reserve is required"

  question.correct_option = "B"
  question.explanation = "Night VFR requires enough fuel to fly for at least 45 minutes at normal cruising speed after reaching the first point of intended landing."
  question.position = 2
end

fuel_card.questions.find_or_create_by!(
  question_text: "When are the required VFR fuel reserves measured?"
) do |question|
  question.option_a = "Before takeoff"
  question.option_b = "At the halfway point of the flight"
  question.option_c = "After reaching the intended landing point at normal cruising speed"
  question.option_d = "At engine shutdown"

  question.correct_option = "C"
  question.explanation = "Fuel reserve requirements apply after reaching the first point of intended landing while flying at normal cruising speed."
  question.position = 3
end

fuel_card.questions.find_or_create_by!(
  question_text: "Which cruising altitude is appropriate for a VFR flight on a magnetic course of 090°?"
) do |question|
  question.option_a = "4,500 feet MSL"
  question.option_b = "5,500 feet MSL"
  question.option_c = "6,500 feet MSL"
  question.option_d = "8,500 feet MSL"

  question.correct_option = "B"
  question.explanation = "Eastbound VFR flights (0°–179° magnetic course) use odd thousands plus 500 feet, such as 3,500, 5,500, or 7,500 feet."
  question.position = 4
end

fuel_card.questions.find_or_create_by!(
  question_text: "Which cruising altitude is appropriate for a VFR flight on a magnetic course of 270°?"
) do |question|
  question.option_a = "3,500 feet MSL"
  question.option_b = "5,500 feet MSL"
  question.option_c = "6,500 feet MSL"
  question.option_d = "7,500 feet MSL"

  question.correct_option = "C"
  question.explanation = "Westbound VFR flights (180°–359° magnetic course) use even thousands plus 500 feet, such as 4,500, 6,500, or 8,500 feet."
  question.position = 5
end

fuel_card.questions.find_or_create_by!(
  question_text: "VFR cruising altitude rules are based on:"
) do |question|
  question.option_a = "Magnetic heading"
  question.option_b = "True course"
  question.option_c = "Magnetic course"
  question.option_d = "Compass heading"

  question.correct_option = "C"
  question.explanation = "VFR cruising altitudes are based on the aircraft's magnetic course, not its magnetic heading."
  question.position = 6
end

fuel_card.questions.find_or_create_by!(
  question_text: "At what altitude do VFR cruising altitude rules begin to apply?"
) do |question|
  question.option_a = "Above 1,000 feet AGL"
  question.option_b = "Above 2,000 feet AGL"
  question.option_c = "More than 3,000 feet AGL"
  question.option_d = "Above 10,000 feet MSL"

  question.correct_option = "C"
  question.explanation = "The hemispherical cruising altitude rule applies when operating more than 3,000 feet above the surface."
  question.position = 7
end

fuel_card.questions.find_or_create_by!(
  question_text: "A VFR aircraft is flying on a magnetic course of 135°. Which altitude is appropriate?"
) do |question|
  question.option_a = "4,500 feet MSL"
  question.option_b = "6,500 feet MSL"
  question.option_c = "7,500 feet MSL"
  question.option_d = "8,500 feet MSL"

  question.correct_option = "C"
  question.explanation = "A magnetic course of 135° is eastbound, so VFR cruising altitudes use odd thousands plus 500 feet."
  question.position = 8
end

fuel_card.questions.find_or_create_by!(
  question_text: "Why do VFR cruising altitudes use an additional 500 feet?"
) do |question|
  question.option_a = "To improve fuel efficiency"
  question.option_b = "To separate VFR aircraft from IFR traffic using standard cruising altitudes"
  question.option_c = "To avoid Class B airspace"
  question.option_d = "To improve radio reception"

  question.correct_option = "B"
  question.explanation = "The 500-foot offset helps separate VFR traffic from IFR aircraft using standard cruising altitudes."
  question.position = 9
end

fuel_card.questions.find_or_create_by!(
  question_text: "Which memory aid helps pilots remember VFR cruising altitudes?"
) do |question|
  question.option_a = "North is odd, south is even"
  question.option_b = "Odd below, even above"
  question.option_c = "East is odd, west is even"
  question.option_d = "East is even, west is odd"

  question.correct_option = "C"
  question.explanation = "The common memory trick is 'East is odd, West is even' for VFR cruising altitudes."
  question.position = 10
end
