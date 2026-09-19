special_use_airspace_card = @rules_and_regs.study_cards.find_or_initialize_by(
  title: "Special Use Airspace"
)

special_use_airspace_card.assign_attributes(
  description: "Prohibited, restricted, warning, military operations, and alert areas, including their hazards and VFR operating considerations.",
  position: 17
)

special_use_airspace_card.save!

unless special_use_airspace_card.infographic.attached?
  special_use_airspace_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Special-Use-Airspace.jpg"
      )
    ),
    filename: "GroundSchool-Special-Use-Airspace.jpg"
  )
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "What is the purpose of a prohibited area?"
) do |question|
  question.option_a = "To identify areas of unusually high student-pilot activity"
  question.option_b = "To prohibit flight over an area for security or other reasons associated with national welfare"
  question.option_c = "To separate VFR traffic from Class B airspace"
  question.option_d = "To identify military training routes"
  question.correct_option = "B"
  question.explanation = "Prohibited areas are established for security or other reasons associated with national welfare. Flight through a prohibited area is not permitted without permission from the using agency."
  question.position = 1
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "May a pilot fly through a prohibited area without authorization?"
) do |question|
  question.option_a = "Yes, when operating VFR"
  question.option_b = "Yes, when receiving flight following"
  question.option_c = "No"
  question.option_d = "Yes, whenever the weather is VFR"
  question.correct_option = "C"
  question.explanation = "A pilot may not operate within a prohibited area without permission from the using agency."
  question.position = 2
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Why are restricted areas established?"
) do |question|
  question.option_a = "Because they contain unusual, often invisible hazards to aircraft"
  question.option_b = "To prevent all VFR operations near large airports"
  question.option_c = "Only to protect presidential travel"
  question.option_d = "To identify areas where radios are not required"
  question.correct_option = "A"
  question.explanation = "Restricted areas contain activities considered hazardous to nonparticipating aircraft, such as artillery firing or aerial gunnery."
  question.position = 3
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "A restricted area is active. What should a pilot generally do before entering it?"
) do |question|
  question.option_a = "Enter freely when operating VFR"
  question.option_b = "Obtain authorization from the controlling or using agency as appropriate"
  question.option_c = "Squawk 1200 and enter without contacting anyone"
  question.option_d = "Enter as long as visibility exceeds 3 miles"
  question.correct_option = "B"
  question.explanation = "When a restricted area is active, operations within it are restricted because of potentially hazardous activity. Authorization is required as applicable."
  question.position = 4
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "What may happen when a joint-use restricted area is inactive and released to the controlling agency?"
) do |question|
  question.option_a = "It automatically becomes Class B airspace"
  question.option_b = "ATC may permit aircraft to operate through it"
  question.option_c = "It becomes a prohibited area"
  question.option_d = "Only military aircraft may enter"
  question.correct_option = "B"
  question.explanation = "When a joint-use restricted area is not active and has been released to the controlling agency, ATC may permit aircraft to operate through the area."
  question.position = 5
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "What is the primary purpose of a Military Operations Area (MOA)?"
) do |question|
  question.option_a = "To prohibit all civilian aircraft"
  question.option_b = "To separate certain military training activities from IFR traffic and identify the area for VFR pilots"
  question.option_c = "To protect major sporting events"
  question.option_d = "To provide additional controlled airspace around airports"
  question.correct_option = "B"
  question.explanation = "MOAs separate certain military training activities from IFR traffic and identify for VFR pilots where those activities are conducted."
  question.position = 6
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Is an ATC clearance required for a VFR pilot to fly through a MOA?"
) do |question|
  question.option_a = "Yes, always"
  question.option_b = "No, but pilots should exercise extreme caution when military activity is being conducted"
  question.option_c = "Yes, but only above 10,000 feet MSL"
  question.option_d = "No, and military activity does not need to be considered"
  question.correct_option = "B"
  question.explanation = "A VFR pilot does not need an ATC clearance merely to enter an MOA, but should exercise extreme caution when military activity is being conducted."
  question.position = 7
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "What is a warning area?"
) do |question|
  question.option_a = "Airspace containing activity that may be hazardous to nonparticipating aircraft over domestic or international waters"
  question.option_b = "Airspace that VFR aircraft may never enter"
  question.option_c = "Airspace surrounding every towered airport"
  question.option_d = "An area reserved exclusively for student pilots"
  question.correct_option = "A"
  question.explanation = "A warning area contains activity that may be hazardous to nonparticipating aircraft. It may be located over domestic or international waters, or both."
  question.position = 8
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Where does a warning area typically begin in relation to the U.S. coast?"
) do |question|
  question.option_a = "At the airport traffic area boundary"
  question.option_b = "Three nautical miles outward from the U.S. coast"
  question.option_c = "Twelve nautical miles inland"
  question.option_d = "At 18,000 feet MSL"
  question.correct_option = "B"
  question.explanation = "Warning areas extend from three nautical miles outward from the coast of the United States and warn pilots of potentially hazardous activity."
  question.position = 9
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "What is the purpose of an alert area?"
) do |question|
  question.option_a = "To prohibit civilian aircraft"
  question.option_b = "To inform pilots of areas containing a high volume of pilot training or unusual aerial activity"
  question.option_c = "To identify permanent presidential security airspace"
  question.option_d = "To establish IFR-only routes"
  question.correct_option = "B"
  question.explanation = "Alert areas inform pilots of areas that may contain a high volume of pilot training or an unusual type of aerial activity."
  question.position = 10
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Who is responsible for collision avoidance within an alert area?"
) do |question|
  question.option_a = "Only ATC"
  question.option_b = "Only pilots participating in the activity"
  question.option_c = "All pilots, including participating and transiting pilots"
  question.option_d = "Only VFR pilots"
  question.correct_option = "C"
  question.explanation = "Pilots participating in activities within an alert area and pilots transiting the area are equally responsible for collision avoidance."
  question.position = 11
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Does the depiction of special use airspace on a sectional chart necessarily mean the area is active at that moment?"
) do |question|
  question.option_a = "Yes, charted special use airspace is always active"
  question.option_b = "No, pilots should obtain current information about its status"
  question.option_c = "Yes, but only during daylight hours"
  question.option_d = "No, because special use airspace is never active under VFR conditions"
  question.correct_option = "B"
  question.explanation = "A chart shows the location and boundaries of special use airspace, but pilots need current information to determine applicable times and activity status."
  question.position = 12
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Which type of special use airspace should make a VFR pilot think 'military activity may be occurring, use caution' rather than 'entry is prohibited'?"
) do |question|
  question.option_a = "Prohibited area"
  question.option_b = "Military Operations Area"
  question.option_c = "Class B airspace"
  question.option_d = "Class C airspace"
  question.correct_option = "B"
  question.explanation = "A Military Operations Area may contain military training activity. VFR flight is not prohibited simply because the aircraft would enter an MOA, but pilots should exercise extreme caution."
  question.position = 13
end

special_use_airspace_card.questions.find_or_create_by!(
  question_text: "Which statement correctly distinguishes a restricted area from a prohibited area?"
) do |question|
  question.option_a = "Restricted areas may contain hazardous activity, while prohibited areas are established for security or national-welfare reasons"
  question.option_b = "Restricted and prohibited areas have exactly the same purpose"
  question.option_c = "Prohibited areas are intended only for military training"
  question.option_d = "Restricted areas may never be entered under any circumstances"
  question.correct_option = "A"
  question.explanation = "Restricted areas generally protect aircraft from potentially hazardous activities. Prohibited areas are established for security or other reasons associated with national welfare."
  question.position = 14
end
