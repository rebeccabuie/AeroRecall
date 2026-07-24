icing_card = @weather.study_cards.find_or_initialize_by(
  title: "Icing and Freezing Rain"
)

icing_card.assign_attributes(
  description: "Airframe icing, freezing rain, sleet, types of ice, and why icing is dangerous.",
  position: 2
)

icing_card.save!

unless icing_card.infographic.attached?
  icing_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Icing-and-Freezing-Rain.jpg"
      )
    ),
    filename: "GroundSchool-Icing-and-Freezing-Rain.jpg"
  )
end

icing_questions = [
  {
    question_text: "What conditions are required for airframe icing?",
    option_a: "Liquid water and freezing temperatures",
    option_b: "Dry air and warm temperatures",
    option_c: "Clear skies and calm winds",
    option_d: "High pressure and descending air",
    correct_option: "A",
    explanation: "Airframe icing requires liquid water and freezing temperatures. Supercooled water droplets freeze when they strike the aircraft.",
    position: 1
  },
  {
    question_text: "Which type of ice forms from small droplets and has a rough, milky appearance?",
    option_a: "Clear ice",
    option_b: "Rime ice",
    option_c: "Mixed ice",
    option_d: "Freezing rain",
    correct_option: "B",
    explanation: "Rime ice forms from small supercooled droplets that freeze quickly, producing a rough, milky appearance.",
    position: 2
  },
  {
    question_text: "Which type of ice forms from large droplets that spread before freezing?",
    option_a: "Rime ice",
    option_b: "Clear ice",
    option_c: "Mixed ice",
    option_d: "Frost",
    correct_option: "B",
    explanation: "Clear ice forms from large supercooled droplets that spread across the aircraft surface before freezing, creating a smooth, glassy coating.",
    position: 3
  },
  {
    question_text: "What is mixed ice?",
    option_a: "A combination of rime and clear ice",
    option_b: "Snow mixed with freezing rain",
    option_c: "Frost mixed with sleet",
    option_d: "Ice found only in thunderstorms",
    correct_option: "A",
    explanation: "Mixed ice combines the characteristics of rime and clear ice and often forms an irregular shape that can be difficult to predict.",
    position: 4
  },
  {
    question_text: "Which icing condition produces the most rapid and severe structural icing?",
    option_a: "Mist",
    option_b: "Snow",
    option_c: "Freezing rain",
    option_d: "Fog",
    correct_option: "C",
    explanation: "Freezing rain contains large supercooled droplets that spread over aircraft surfaces before freezing, creating rapid and severe ice accumulation.",
    position: 5
  },
  {
    question_text: "What do ice pellets at the surface indicate?",
    option_a: "Freezing rain may exist aloft",
    option_b: "A thunderstorm is directly overhead",
    option_c: "The air above is entirely below freezing",
    option_d: "Structural icing is no longer possible",
    correct_option: "A",
    explanation: "Ice pellets form when melted precipitation refreezes before reaching the ground, indicating a warm layer and possible freezing rain aloft.",
    position: 6
  },
  {
    question_text: "How does ice accumulation affect aircraft performance?",
    option_a: "It increases lift and lowers stall speed",
    option_b: "It reduces drag and improves climb performance",
    option_c: "It reduces lift, increases drag, and increases stall speed",
    option_d: "It reduces aircraft weight",
    correct_option: "C",
    explanation: "Ice disrupts airflow, reducing lift and increasing drag. It also increases aircraft weight and raises stall speed.",
    position: 7
  },
  {
    question_text: "Can airframe ice form when the outside air temperature is slightly above freezing?",
    option_a: "No, icing is impossible above 32°F",
    option_b: "Yes, if the aircraft surface is colder than the surrounding air",
    option_c: "Yes, but only in clear skies",
    option_d: "No, unless snow is falling",
    correct_option: "B",
    explanation: "Ice can form when the outside air temperature is slightly above freezing if the aircraft surface remains below freezing.",
    position: 8
  }
]

question_texts = icing_questions.map { |attributes| attributes[:question_text] }

icing_card.questions
          .where.not(question_text: question_texts)
          .destroy_all

icing_questions.each do |attributes|
  question = icing_card.questions.find_or_initialize_by(
    question_text: attributes[:question_text]
  )

  question.assign_attributes(attributes.except(:question_text))
  question.save!
end
