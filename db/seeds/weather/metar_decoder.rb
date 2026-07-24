metar_card = @weather.study_cards.find_or_create_by!(
  title: "Reading a METAR"
) do |card|
  card.description = "Decode station identifiers, time, wind, visibility, weather, clouds, temperature, dew point, and altimeter settings."
  card.position = 9
end

unless metar_card.infographic.attached?
  metar_card.infographic.attach(
    io: File.open(
      Rails.root.join("db/seed_images/GroundSchool-METAR-Decoder.jpg")
    ),
    filename: "GroundSchool-METAR-Decoder.jpg"
  )
end

metar_card.questions.find_or_create_by!(
  question_text: "In the METAR code KSLC, what does KSLC identify?"
) do |question|
  question.option_a = "The reporting airport or weather station"
  question.option_b = "The forecast issue time"
  question.option_c = "The wind direction"
  question.option_d = "The cloud ceiling"

  question.correct_option = "A"
  question.explanation = "The first group in a METAR is the station identifier. KSLC identifies Salt Lake City International Airport."
  question.position = 1
end

metar_card.questions.find_or_create_by!(
  question_text: "What does 121753Z mean in a METAR?"
) do |question|
  question.option_a = "The 12th day at 17:53 Zulu time"
  question.option_b = "December 17 at 5:30 local time"
  question.option_c = "Wind from 120° at 17 knots"
  question.option_d = "Visibility of 12 miles at 17:53"

  question.correct_option = "A"
  question.explanation = "The first two digits give the day of the month, the next four digits give the time, and Z means Zulu or UTC time."
  question.position = 2
end

metar_card.questions.find_or_create_by!(
  question_text: "How should 18012G20KT be interpreted?"
) do |question|
  question.option_a = "Wind from 180° at 12 knots, gusting to 20 knots"
  question.option_b = "Wind toward 180° at 20 knots"
  question.option_c = "Wind from 120° at 18 knots, gusting to 20 knots"
  question.option_d = "Variable wind between 180° and 200°"

  question.correct_option = "A"
  question.explanation = "The wind is coming from 180°, its sustained speed is 12 knots, and G20 means gusting to 20 knots."
  question.position = 3
end

metar_card.questions.find_or_create_by!(
  question_text: "What does 10SM indicate in a METAR?"
) do |question|
  question.option_a = "Visibility is 10 statute miles"
  question.option_b = "Visibility is 10 nautical miles"
  question.option_c = "Clouds are at 10,000 feet"
  question.option_d = "Wind speed is 10 knots"

  question.correct_option = "A"
  question.explanation = "Visibility in a U.S. METAR is reported in statute miles, so 10SM means visibility of 10 statute miles."
  question.position = 4
end

metar_card.questions.find_or_create_by!(
  question_text: "What does the weather code -RA mean?"
) do |question|
  question.option_a = "Light rain"
  question.option_b = "Heavy rain"
  question.option_c = "Freezing rain"
  question.option_d = "Rain showers"

  question.correct_option = "A"
  question.explanation = "RA means rain, and the minus sign indicates light intensity."
  question.position = 5
end

metar_card.questions.find_or_create_by!(
  question_text: "What does the cloud group FEW050 SCT120 mean?"
) do |question|
  question.option_a = "Few clouds at 5,000 feet and scattered clouds at 12,000 feet"
  question.option_b = "Few clouds at 500 feet and scattered clouds at 1,200 feet"
  question.option_c = "Overcast clouds at 5,000 feet and broken clouds at 12,000 feet"
  question.option_d = "Visibility is 5 miles with clouds extending 120 miles"

  question.correct_option = "A"
  question.explanation = "Cloud heights are reported in hundreds of feet. Therefore, 050 means 5,000 feet and 120 means 12,000 feet."
  question.position = 6
end

metar_card.questions.find_or_create_by!(
  question_text: "Which cloud coverage reports are considered ceilings?"
) do |question|
  question.option_a = "FEW and SCT"
  question.option_b = "SCT and BKN"
  question.option_c = "BKN and OVC"
  question.option_d = "FEW and OVC"

  question.correct_option = "C"
  question.explanation = "A ceiling is the lowest layer reported as broken or overcast, or the vertical visibility into an obscuration."
  question.position = 7
end

metar_card.questions.find_or_create_by!(
  question_text: "In the METAR group 24/10, what do the numbers represent?"
) do |question|
  question.option_a = "Temperature 24°C and dew point 10°C"
  question.option_b = "Temperature 10°C and dew point 24°C"
  question.option_c = "Wind direction 240° and speed 10 knots"
  question.option_d = "Visibility 24 miles and cloud base 1,000 feet"

  question.correct_option = "A"
  question.explanation = "The temperature is listed first and the dew point second. Both are reported in degrees Celsius."
  question.position = 8
end

metar_card.questions.find_or_create_by!(
  question_text: "What does the altimeter group A2992 mean?"
) do |question|
  question.option_a = "The altimeter setting is 29.92 inches of mercury"
  question.option_b = "The pressure altitude is 2,992 feet"
  question.option_c = "The altimeter setting is 2,992 millibars"
  question.option_d = "The airport elevation is 2,992 feet"

  question.correct_option = "A"
  question.explanation = "The letter A indicates an altimeter setting in inches of mercury. A2992 means 29.92 inches of mercury."
  question.position = 9
end

metar_card.questions.find_or_create_by!(
  question_text: "Which sequence follows the major parts of a METAR in the correct order?"
) do |question|
  question.option_a = "Station, time, wind, visibility, weather, clouds, remarks, temperature/dew point, altimeter"
  question.option_b = "Time, station, visibility, wind, clouds, weather, altimeter, remarks, temperature"
  question.option_c = "Station, wind, time, weather, visibility, temperature, clouds, remarks, altimeter"
  question.option_d = "Visibility, station, time, wind, temperature, weather, clouds, altimeter, remarks"

  question.correct_option = "A"
  question.explanation = "A helpful memory sequence is: Where, when, wind, see, weather, ceiling, notes, temperature, pressure."
  question.position = 10
end
