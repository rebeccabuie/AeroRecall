card = @navigation.study_cards.find_or_initialize_by(
  title: "Chart Symbols (Airports, NAVAIDs & Obstacles)"
)

card.assign_attributes(
  description: "How to identify NAVAIDs, airport symbols, obstructions, and elevation information shown on sectional charts.",
  position: 3
)

card.save!

unless card.infographic.attached?
  card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Chart-Symbols-Airports-Navaids-Obstacles.jpg"
      )
    ),
    filename: "GroundSchool-Chart-Symbols-Airports-Navaids-Obstacles.jpg"
  )
end

card.questions.find_or_create_by!(
  question_text: "What information does a VOR provide?"
) do |question|
  question.option_a = "Magnetic bearing information using radials from the station"
  question.option_b = "Distance from the station only"
  question.option_c = "GPS position and altitude"
  question.option_d = "Weather information"
  question.correct_option = "A"
  question.explanation = "A VOR provides magnetic bearing information using radials extending from the station."
  question.position = 1
end

card.questions.find_or_create_by!(
  question_text: "What additional information does VOR/DME provide compared with a VOR alone?"
) do |question|
  question.option_a = "Airport elevation"
  question.option_b = "Distance information"
  question.option_c = "Weather information"
  question.option_d = "Runway heading"
  question.correct_option = "B"
  question.explanation = "VOR/DME combines VOR bearing information with DME distance information."
  question.position = 2
end

card.questions.find_or_create_by!(
  question_text: "What is a VORTAC?"
) do |question|
  question.option_a = "A VOR located at a towered airport"
  question.option_b = "A combination of a VOR and TACAN"
  question.option_c = "A type of NDB"
  question.option_d = "A GPS navigation station"
  question.correct_option = "B"
  question.explanation = "A VORTAC is a collocated VOR and TACAN facility, providing VOR bearing plus TACAN/DME distance capability."
  question.position = 3
end

card.questions.find_or_create_by!(
  question_text: "What does TACAN stand for?"
) do |question|
  question.option_a = "Terminal Air Control and Navigation"
  question.option_b = "Tactical Air Navigation"
  question.option_c = "Traffic Airway Control and Navigation"
  question.option_d = "Tower Approach Control Air Navigation"
  question.correct_option = "B"
  question.explanation = "TACAN stands for Tactical Air Navigation and provides bearing and distance information for equipped aircraft."
  question.position = 4
end

card.questions.find_or_create_by!(
  question_text: "What does NDB stand for?"
) do |question|
  question.option_a = "National Direction Beacon"
  question.option_b = "Navigation Distance Beacon"
  question.option_c = "Non-Directional Beacon"
  question.option_d = "Non-Distance Bearing"
  question.correct_option = "C"
  question.explanation = "NDB stands for Non-Directional Beacon. Its signal can be used by ADF equipment for bearing information."
  question.position = 5
end

card.questions.find_or_create_by!(
  question_text: "What does an open-circle NAVAID symbol located within an airport symbol indicate?"
) do |question|
  question.option_a = "The airport is closed"
  question.option_b = "A NAVAID is located on the airport"
  question.option_c = "The airport has no navigation facilities"
  question.option_d = "The airport has a rotating beacon"
  question.correct_option = "B"
  question.explanation = "An open circle within the airport configuration indicates a NAVAID located on the airport. The type of NAVAID is identified in its information box."
  question.position = 6
end

card.questions.find_or_create_by!(
  question_text: "What does a blue airport symbol indicate on a sectional chart?"
) do |question|
  question.option_a = "An airport without a control tower"
  question.option_b = "A military airport"
  question.option_c = "An airport with a control tower"
  question.option_d = "A seaplane base"
  question.correct_option = "C"
  question.explanation = "Blue is used for an airport with a control tower."
  question.position = 7
end

card.questions.find_or_create_by!(
  question_text: "What does a magenta airport symbol indicate on a sectional chart?"
) do |question|
  question.option_a = "An airport without a control tower"
  question.option_b = "An airport with a control tower"
  question.option_c = "A restricted airport"
  question.option_d = "A military airport"
  question.correct_option = "A"
  question.explanation = "Magenta is used for an airport without a control tower."
  question.position = 8
end

card.questions.find_or_create_by!(
  question_text: "What does the anchor-shaped airport symbol represent?"
) do |question|
  question.option_a = "A military airport"
  question.option_b = "A heliport"
  question.option_c = "A seaplane base"
  question.option_d = "An airport of entry"
  question.correct_option = "C"
  question.explanation = "The anchor-shaped symbol identifies a seaplane base."
  question.position = 9
end

card.questions.find_or_create_by!(
  question_text: "What do ticks around a basic airport symbol indicate?"
) do |question|
  question.option_a = "The airport has a control tower"
  question.option_b = "Fuel is available"
  question.option_c = "The airport is closed"
  question.option_d = "The airport has Class B airspace"
  question.correct_option = "B"
  question.explanation = "Ticks around the airport symbol indicate that fuel is available."
  question.position = 10
end

card.questions.find_or_create_by!(
  question_text: "What does a star-shaped airport symbol indicate?"
) do |question|
  question.option_a = "A rotating airport beacon"
  question.option_b = "A military training route"
  question.option_c = "A restricted airport"
  question.option_d = "A VORTAC"
  question.correct_option = "A"
  question.explanation = "The star-shaped symbol indicates a rotating airport beacon."
  question.position = 11
end

card.questions.find_or_create_by!(
  question_text: "What does the label OBJECTIONABLE associated with an airport indicate?"
) do |question|
  question.option_a = "The airport is permanently closed"
  question.option_b = "The airport has an airspace determination involving factors such as conflicting traffic patterns, runway conditions, or nearby obstacles"
  question.option_c = "The airport may only be used by military aircraft"
  question.option_d = "The airport has no fuel available"
  question.correct_option = "B"
  question.explanation = "OBJECTIONABLE indicates an airport with an airspace determination involving factors such as conflicting traffic patterns, runway conditions, or nearby obstacles."
  question.position = 12
end

card.questions.find_or_create_by!(
  question_text: "How are obstructions below 1,000 feet AGL distinguished from obstructions 1,000 feet AGL or higher?"
) do |question|
  question.option_a = "They use different obstruction symbols"
  question.option_b = "They are shown in different colors"
  question.option_c = "Only the taller obstructions appear on sectional charts"
  question.option_d = "There is no distinction"
  question.correct_option = "A"
  question.explanation = "Sectional charts use different symbols to distinguish obstructions below 1,000 feet AGL from those 1,000 feet AGL or higher."
  question.position = 13
end

card.questions.find_or_create_by!(
  question_text: "An obstruction is labeled 2249 (1457). What does 2249 represent?"
) do |question|
  question.option_a = "The obstacle height in feet AGL"
  question.option_b = "The elevation of the obstacle top in feet MSL"
  question.option_c = "The airport elevation"
  question.option_d = "The obstacle height in meters"
  question.correct_option = "B"
  question.explanation = "The number outside the parentheses gives the elevation of the top of the obstacle in feet MSL."
  question.position = 14
end

card.questions.find_or_create_by!(
  question_text: "An obstruction is labeled 2249 (1457). What does 1457 represent?"
) do |question|
  question.option_a = "The elevation of the obstacle top in feet MSL"
  question.option_b = "The height of the obstacle in feet AGL"
  question.option_c = "The airport traffic pattern altitude"
  question.option_d = "The obstacle elevation in meters"
  question.correct_option = "B"
  question.explanation = "The number in parentheses gives the height of the obstacle in feet AGL."
  question.position = 15
end

card.questions.find_or_create_by!(
  question_text: "What does MEF stand for on a sectional chart?"
) do |question|
  question.option_a = "Minimum Enroute Frequency"
  question.option_b = "Maximum Elevation Figure"
  question.option_c = "Minimum Elevation Floor"
  question.option_d = "Maximum Enroute Flight level"
  question.correct_option = "B"
  question.explanation = "MEF stands for Maximum Elevation Figure."
  question.position = 16
end

card.questions.find_or_create_by!(
  question_text: "What does the Maximum Elevation Figure represent?"
) do |question|
  question.option_a = "The highest airport elevation in the quadrant"
  question.option_b = "The highest elevation within the quadrant, accounting for terrain and vertical obstacles with an added safety allowance and upward rounding"
  question.option_c = "The minimum safe VFR cruising altitude"
  question.option_d = "The ceiling of Class E airspace"
  question.correct_option = "B"
  question.explanation = "The MEF represents the highest elevation within the quadrant, considering terrain and vertical obstacles, with an added safety allowance and upward rounding."
  question.position = 17
end

card.questions.find_or_create_by!(
  question_text: "An MEF is shown as a large 3 with a smaller 2. What elevation does this represent?"
) do |question|
  question.option_a = "320 feet MSL"
  question.option_b = "3,002 feet MSL"
  question.option_c = "3,200 feet MSL"
  question.option_d = "32,000 feet MSL"
  question.correct_option = "C"
  question.explanation = "MEFs are shown in hundreds of feet MSL. A large 3 with a smaller 2 represents 3,200 feet MSL."
  question.position = 18
end
