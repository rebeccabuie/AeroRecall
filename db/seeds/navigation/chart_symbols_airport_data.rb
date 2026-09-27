card = @navigation.study_cards.find_or_initialize_by(
  title: "Chart Symbols (Airport Data)"
)

card.assign_attributes(
  description: "How to interpret airport data shown on sectional charts, including frequencies, elevation, runway length, lighting, traffic patterns, and airport services.",
  position: 1
)

card.save!

unless card.infographic.attached?
  card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Chart-Symbols-Airport-Data.jpg"
      )
    ),
    filename: "GroundSchool-Chart-Symbols-Airport-Data.jpg"
  )
end

card.questions.find_or_create_by!(
  question_text: "What does FSS shown in an airport data grouping indicate?"
) do |question|
  question.option_a = "A Flight Service Station is located on the field"
  question.option_b = "The airport has full-time security services"
  question.option_c = "The airport is restricted to scheduled service"
  question.option_d = "Flight following is required"
  question.correct_option = "A"
  question.explanation = "FSS indicates a Flight Service Station on the field."
  question.position = 1
end

card.questions.find_or_create_by!(
  question_text: "What does NO SVFR shown above an airport name indicate?"
) do |question|
  question.option_a = "VFR operations are prohibited"
  question.option_b = "Fixed-wing Special VFR operations are prohibited"
  question.option_c = "The airport is closed during IFR conditions"
  question.option_d = "Special VFR requires a flight plan"
  question.correct_option = "B"
  question.explanation = "NO SVFR indicates that fixed-wing Special VFR operations are prohibited."
  question.position = 2
end

card.questions.find_or_create_by!(
  question_text: "In an airport data grouping, what does CT followed by a frequency identify?"
) do |question|
  question.option_a = "The control tower's primary frequency"
  question.option_b = "The CTAF only"
  question.option_c = "The airport's UNICOM frequency"
  question.option_d = "The Flight Service frequency"
  question.correct_option = "A"
  question.explanation = "CT identifies the primary control tower frequency."
  question.position = 3
end

card.questions.find_or_create_by!(
  question_text: "What does a circled C following a frequency indicate on a sectional chart?"
) do |question|
  question.option_a = "Clearance delivery"
  question.option_b = "Class C airspace"
  question.option_c = "The Common Traffic Advisory Frequency (CTAF)"
  question.option_d = "A frequency available only when the tower is open"
  question.correct_option = "C"
  question.explanation = "A circled C identifies the Common Traffic Advisory Frequency (CTAF)."
  question.position = 4
end

card.questions.find_or_create_by!(
  question_text: "What does a star associated with an airport communication facility indicate?"
) do |question|
  question.option_a = "The airport is military"
  question.option_b = "The operation is part-time"
  question.option_c = "The airport has pilot-controlled lighting"
  question.option_d = "The airport is attended continuously"
  question.correct_option = "B"
  question.explanation = "The star indicates part-time operation. Check the appropriate publication for operating hours."
  question.position = 5
end

card.questions.find_or_create_by!(
  question_text: "What does the letter L in an airport data grouping indicate?"
) do |question|
  question.option_a = "The runway is longer than 5,000 feet"
  question.option_b = "Runway lighting operates sunset to sunrise"
  question.option_c = "The airport has low-intensity lighting only"
  question.option_d = "Lighting is available only by prior request"
  question.correct_option = "B"
  question.explanation = "L indicates runway edge lighting is in operation from sunset to sunrise."
  question.position = 6
end

card.questions.find_or_create_by!(
  question_text: "An airport data grouping shows an elevation of 285. What does this mean?"
) do |question|
  question.option_a = "The airport elevation is 2,850 feet AGL"
  question.option_b = "The airport elevation is 285 feet AGL"
  question.option_c = "The airport elevation is 285 feet MSL"
  question.option_d = "The traffic pattern altitude is 285 feet MSL"
  question.correct_option = "C"
  question.explanation = "Airport elevation is shown in feet above or below mean sea level. Here, 285 means 285 feet MSL."
  question.position = 7
end

card.questions.find_or_create_by!(
  question_text: "The runway-length figure in an airport data grouping is 72. Approximately how long is the longest runway?"
) do |question|
  question.option_a = "720 feet"
  question.option_b = "7,200 feet"
  question.option_c = "72 feet"
  question.option_d = "72,000 feet"
  question.correct_option = "B"
  question.explanation = "The length of the longest runway is shown in hundreds of feet. A value of 72 represents approximately 7,200 feet."
  question.position = 8
end

card.questions.find_or_create_by!(
  question_text: "What does ATIS provide to pilots?"
) do |question|
  question.option_a = "Only runway closure information"
  question.option_b = "Continuous recorded airport and terminal-area information"
  question.option_c = "Air traffic control clearances"
  question.option_d = "Only en route weather forecasts"
  question.correct_option = "B"
  question.explanation = "ATIS provides pilots with routinely updated terminal information, including airport and weather information."
  question.position = 9
end

card.questions.find_or_create_by!(
  question_text: "What does RP 23, 34 indicate in an airport data grouping?"
) do |question|
  question.option_a = "Runways 23 and 34 are restricted"
  question.option_b = "Runways 23 and 34 use right traffic patterns"
  question.option_c = "Runways 23 and 34 are closed"
  question.option_d = "Runways 23 and 34 have pilot-controlled lighting"
  question.correct_option = "B"
  question.explanation = "RP followed by runway numbers identifies runways that use right traffic patterns."
  question.position = 10
end

card.questions.find_or_create_by!(
  question_text: "What is the primary purpose of a UNICOM frequency?"
) do |question|
  question.option_a = "To obtain an IFR clearance from ATC"
  question.option_b = "To provide an aeronautical advisory communication facility"
  question.option_c = "To contact an ARTCC"
  question.option_d = "To activate Class B airspace"
  question.correct_option = "B"
  question.explanation = "UNICOM is an aeronautical advisory communication facility and may be used for airport advisory information."
  question.position = 11
end

card.questions.find_or_create_by!(
  question_text: "What does AOE indicate in an airport data grouping?"
) do |question|
  question.option_a = "Airport of Entry"
  question.option_b = "Airport Operating Environment"
  question.option_c = "Airspace Operations Exempt"
  question.option_d = "Automated Observation Equipment"
  question.correct_option = "A"
  question.explanation = "AOE means Airport of Entry."
  question.position = 12
end

card.questions.find_or_create_by!(
  question_text: "An airport data grouping contains '285 L 72'. What information does this provide?"
) do |question|
  question.option_a = "285-foot MSL elevation, sunset-to-sunrise lighting, and a longest runway of approximately 7,200 feet"
  question.option_b = "2,850-foot MSL elevation, limited lighting, and a 720-foot runway"
  question.option_c = "285-foot traffic pattern altitude, left traffic, and runway 72"
  question.option_d = "285-foot AGL elevation, low-intensity lighting, and a 7,200-meter runway"
  question.correct_option = "A"
  question.explanation = "This combines three chart items: 285 is airport elevation in feet MSL, L indicates lighting sunset to sunrise, and 72 represents a longest runway of approximately 7,200 feet."
  question.position = 13
end

card.questions.find_or_create_by!(
  question_text: "An airport data grouping shows 'CT 118.3' followed by a circled C. What should a pilot understand?"
) do |question|
  question.option_a = "118.3 is only a UNICOM frequency"
  question.option_b = "118.3 is the control tower frequency and is also identified for CTAF use"
  question.option_c = "118.3 is a Flight Service frequency"
  question.option_d = "118.3 may be used only for IFR aircraft"
  question.correct_option = "B"
  question.explanation = "CT identifies the primary tower frequency, while the circled C identifies the Common Traffic Advisory Frequency."
  question.position = 14
end

card.questions.find_or_create_by!(
  question_text: "When airport data on a sectional chart is not sufficient for details such as operating hours or lighting limitations, where should a pilot look?"
) do |question|
  question.option_a = "The aircraft registration"
  question.option_b = "The Chart Supplement"
  question.option_c = "The airworthiness certificate"
  question.option_d = "The aircraft maintenance logbook"
  question.correct_option = "B"
  question.explanation = "The Chart Supplement provides additional airport information that cannot readily be depicted on the chart, including operating hours and lighting information."
  question.position = 15
end
