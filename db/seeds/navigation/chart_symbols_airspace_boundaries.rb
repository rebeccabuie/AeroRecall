card = @navigation.study_cards.find_or_initialize_by(
  title: "Chart Symbols (Airspace & Boundaries)"
)

card.assign_attributes(
  description: "How to identify controlled airspace, Class E floors, special use airspace, and other boundaries shown on sectional charts.",
  position: 2
)

card.save!

unless card.infographic.attached?
  card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Chart-Symbols-Airspace-Boundaries.jpg"
      )
    ),
    filename: "GroundSchool-Chart-Symbols-Airspace-Boundaries.jpg"
  )
end

card.questions.find_or_create_by!(
  question_text: "What does a solid blue line on a sectional chart indicate?"
) do |question|
  question.option_a = "Class B airspace"
  question.option_b = "Class C airspace"
  question.option_c = "Class D airspace"
  question.option_d = "Class E airspace"
  question.correct_option = "A"
  question.explanation = "A solid blue line is used to depict the boundaries of Class B airspace."
  question.position = 1
end

card.questions.find_or_create_by!(
  question_text: "What does a solid magenta line on a sectional chart indicate?"
) do |question|
  question.option_a = "Class B airspace"
  question.option_b = "Class C airspace"
  question.option_c = "Class D airspace"
  question.option_d = "Class G airspace"
  question.correct_option = "B"
  question.explanation = "A solid magenta line is used to depict the boundaries of Class C airspace."
  question.position = 2
end

card.questions.find_or_create_by!(
  question_text: "What does a dashed blue line surrounding an airport indicate?"
) do |question|
  question.option_a = "Class B airspace"
  question.option_b = "Class C airspace"
  question.option_c = "Class D airspace"
  question.option_d = "Class G airspace"
  question.correct_option = "C"
  question.explanation = "A dashed blue line indicates Class D airspace, typically surrounding a towered airport."
  question.position = 3
end

card.questions.find_or_create_by!(
  question_text: "A Class D airspace ceiling is shown as 40. What does this mean?"
) do |question|
  question.option_a = "400 feet MSL"
  question.option_b = "4,000 feet MSL"
  question.option_c = "4,000 feet AGL"
  question.option_d = "40,000 feet MSL"
  question.correct_option = "B"
  question.explanation = "Class D ceiling values are shown in hundreds of feet MSL. A value of 40 therefore represents 4,000 feet MSL."
  question.position = 4
end

card.questions.find_or_create_by!(
  question_text: "What does a minus sign before a Class D ceiling value indicate?"
) do |question|
  question.option_a = "The airspace begins below sea level"
  question.option_b = "The ceiling altitude is approximate"
  question.option_c = "The airspace extends up to but does not include that altitude"
  question.option_d = "The airport is closed"
  question.correct_option = "C"
  question.explanation = "A minus ceiling value indicates the Class D airspace extends up to but does not include the altitude shown."
  question.position = 5
end

card.questions.find_or_create_by!(
  question_text: "What does a dashed magenta boundary indicate?"
) do |question|
  question.option_a = "Class E airspace beginning at the surface"
  question.option_b = "Class E airspace beginning at 700 feet AGL"
  question.option_c = "Class D airspace"
  question.option_d = "Class G airspace beginning at the surface"
  question.correct_option = "A"
  question.explanation = "A dashed magenta boundary depicts Class E airspace that begins at the surface."
  question.position = 6
end

card.questions.find_or_create_by!(
  question_text: "What does a magenta vignette indicate about Class E airspace?"
) do |question|
  question.option_a = "Class E begins at the surface"
  question.option_b = "Class E begins at 700 feet AGL"
  question.option_c = "Class E begins at 7,000 feet MSL"
  question.option_d = "Class E ends at 700 feet AGL"
  question.correct_option = "B"
  question.explanation = "A magenta vignette indicates that Class E controlled airspace begins at 700 feet AGL."
  question.position = 7
end

card.questions.find_or_create_by!(
  question_text: "What does a blue vignette indicate about controlled airspace?"
) do |question|
  question.option_a = "It begins at the surface"
  question.option_b = "It begins at 700 feet AGL"
  question.option_c = "It begins at 1,200 feet AGL or higher"
  question.option_d = "It ends at 1,200 feet MSL"
  question.correct_option = "C"
  question.explanation = "A blue vignette indicates controlled airspace beginning at 1,200 feet AGL or higher."
  question.position = 8
end

card.questions.find_or_create_by!(
  question_text: "Which class of airspace is uncontrolled?"
) do |question|
  question.option_a = "Class B"
  question.option_b = "Class C"
  question.option_c = "Class E"
  question.option_d = "Class G"
  question.correct_option = "D"
  question.explanation = "Class G is uncontrolled airspace and exists below the overlying controlled airspace where applicable."
  question.position = 9
end

card.questions.find_or_create_by!(
  question_text: "Which types of areas may be depicted with a blue-hatched boundary?"
) do |question|
  question.option_a = "Prohibited, Restricted, or Warning Areas"
  question.option_b = "Class B, C, and D airspace"
  question.option_c = "Alert Areas and MOAs only"
  question.option_d = "TRSAs only"
  question.correct_option = "A"
  question.explanation = "Prohibited, Restricted, and Warning Areas may be depicted using blue-hatched boundaries."
  question.position = 10
end

card.questions.find_or_create_by!(
  question_text: "A magenta-hatched boundary may identify which type of area?"
) do |question|
  question.option_a = "Class B airspace"
  question.option_b = "An Alert Area or Military Operations Area"
  question.option_c = "A Mode C veil"
  question.option_d = "A TRSA"
  question.correct_option = "B"
  question.explanation = "Alert Areas and Military Operations Areas (MOAs) may be depicted with magenta-hatched boundaries."
  question.position = 11
end

card.questions.find_or_create_by!(
  question_text: "What does ADIZ stand for?"
) do |question|
  question.option_a = "Air Defense Identification Zone"
  question.option_b = "Airport Defense Information Zone"
  question.option_c = "Airspace Designated Identification Zone"
  question.option_d = "Air Defense Instrument Zone"
  question.correct_option = "A"
  question.explanation = "ADIZ stands for Air Defense Identification Zone. Special identification and reporting procedures apply."
  question.position = 12
end

card.questions.find_or_create_by!(
  question_text: "What does a Mode C veil generally surround?"
) do |question|
  question.option_a = "Every Class D airport"
  question.option_b = "Specified Class B primary airports"
  question.option_c = "All uncontrolled airports"
  question.option_d = "Military Operations Areas"
  question.correct_option = "B"
  question.explanation = "A Mode C veil generally extends within 30 NM of specified Class B primary airports, from the surface to 10,000 feet MSL."
  question.position = 13
end

card.questions.find_or_create_by!(
  question_text: "What does TRSA stand for?"
) do |question|
  question.option_a = "Terminal Restricted Security Area"
  question.option_b = "Terminal Radar Service Area"
  question.option_c = "Tower Radar Surveillance Area"
  question.option_d = "Terminal Route Separation Area"
  question.correct_option = "B"
  question.explanation = "TRSA stands for Terminal Radar Service Area."
  question.position = 14
end

card.questions.find_or_create_by!(
  question_text: "On a Military Training Route, what does the prefix IR indicate?"
) do |question|
  question.option_a = "International Route"
  question.option_b = "Instrument Restricted route"
  question.option_c = "IFR military training route"
  question.option_d = "Inactive Route"
  question.correct_option = "C"
  question.explanation = "The IR prefix identifies an IFR Military Training Route."
  question.position = 15
end

card.questions.find_or_create_by!(
  question_text: "On a Military Training Route, what does the prefix VR indicate?"
) do |question|
  question.option_a = "VFR military training route"
  question.option_b = "Vertical Route"
  question.option_c = "Victor airway route"
  question.option_d = "Variable Restricted route"
  question.correct_option = "A"
  question.explanation = "The VR prefix identifies a VFR Military Training Route."
  question.position = 16
end

card.questions.find_or_create_by!(
  question_text: "What is the purpose of a Class E floor altitude annotation such as 2400 MSL or 4500 MSL?"
) do |question|
  question.option_a = "It shows airport traffic pattern altitude"
  question.option_b = "It shows the maximum altitude for VFR flight"
  question.option_c = "It identifies differing Class E floors greater than 700 feet AGL"
  question.option_d = "It identifies the ceiling of Class G airspace in AGL only"
  question.correct_option = "C"
  question.explanation = "These annotations identify differing Class E airspace floors greater than 700 feet above the surface."
  question.position = 17
end

card.questions.find_or_create_by!(
  question_text: "You see a dashed magenta boundary around an airport. Where does the Class E controlled airspace begin inside that boundary?"
) do |question|
  question.option_a = "At the surface"
  question.option_b = "At 700 feet AGL"
  question.option_c = "At 1,200 feet AGL"
  question.option_d = "At 10,000 feet MSL"
  question.correct_option = "A"
  question.explanation = "A dashed magenta boundary indicates surface-based Class E airspace, so the controlled airspace begins at the surface."
  question.position = 18
end
