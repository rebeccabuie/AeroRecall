stability_card = @weather.study_cards.find_or_initialize_by(
  title: "Stability of Air Masses"
)

stability_card.assign_attributes(
  description: "Stable air, unstable air, lapse rate, orographic lift, and temperature inversions",
  position: 1
)

stability_card.save!

unless stability_card.infographic.attached?
  stability_card.infographic.attach(
    io: File.open(
      Rails.root.join(
        "db/seed_images/GroundSchool-Stability-of-air-masses.jpg"
      )
    ),
    filename: "GroundSchool-Stability-of-air-masses.jpg"
  )
end

stability_questions = [
  {
    question_text: "Which type of cloud is commonly associated with stable air?",
    option_a: "Cumulonimbus",
    option_b: "Stratus",
    option_c: "Towering cumulus",
    option_d: "Lenticular",
    correct_option: "B",
    explanation: "Stable air resists vertical motion, so it commonly produces layered stratus clouds.",
    position: 1
  },
  {
    question_text: "Which combination of conditions is most commonly associated with stable air?",
    option_a: "Turbulence, towering cumulus clouds, and brief heavy showers",
    option_b: "Strong updrafts, excellent visibility, and thunderstorms",
    option_c: "Smooth air, poor visibility, and continuous precipitation",
    option_d: "Dust devils, thermals, and cumulus clouds",
    correct_option: "C",
    explanation: "Stable air resists vertical motion, producing smooth flying conditions, reduced visibility from haze or smoke, and widespread continuous precipitation.",
    position: 2
  },
  {
    question_text: "As the environmental lapse rate increases, the atmosphere becomes:",
    option_a: "More stable",
    option_b: "More unstable",
    option_c: "Less humid",
    option_d: "More likely to develop a temperature inversion",
    correct_option: "B",
    explanation: "A greater lapse rate means temperature decreases more rapidly with altitude, making the atmosphere more unstable.",
    position: 3
  },
  {
    question_text: "Which condition is most commonly associated with unstable air?",
    option_a: "Stratus clouds and smooth air",
    option_b: "Poor visibility and continuous drizzle",
    option_c: "Clouds with vertical development and turbulence",
    option_d: "A temperature inversion and calm air",
    correct_option: "C",
    explanation: "Unstable air promotes rising motion, producing clouds with vertical development and turbulent flying conditions.",
    position: 4
  },
  {
    question_text: "When moist, stable air is forced over a mountain, what type of cloud commonly forms?",
    option_a: "Cumulonimbus",
    option_b: "Towering cumulus",
    option_c: "Stratus",
    option_d: "Cirrus",
    correct_option: "C",
    explanation: "As moist, stable air rises over terrain, it cools and condenses into layered stratus clouds, often producing steady precipitation.",
    position: 5
  },
  {
    question_text: "Steady precipitation ahead of a warm front usually indicates:",
    option_a: "Stable air",
    option_b: "Unstable air",
    option_c: "Strong convective activity",
    option_d: "Severe turbulence",
    correct_option: "A",
    explanation: "Widespread, steady precipitation ahead of a warm front is commonly associated with stable air.",
    position: 6
  },
  {
    question_text: "What happens to temperature with altitude during a temperature inversion?",
    option_a: "Temperature decreases rapidly",
    option_b: "Temperature increases",
    option_c: "Temperature remains constant",
    option_d: "Temperature immediately falls below freezing",
    correct_option: "B",
    explanation: "During a temperature inversion, temperature increases with altitude instead of decreasing normally.",
    position: 7
  },
  {
    question_text: "Low-level temperature inversions most commonly form under which conditions?",
    option_a: "Hot afternoons with strong winds",
    option_b: "Cool nights with light winds",
    option_c: "During thunderstorms",
    option_d: "Behind fast-moving cold fronts",
    correct_option: "B",
    explanation: "On cool nights with light winds, the ground loses heat through terrestrial radiation and cools the air directly above it, allowing an inversion to form.",
    position: 8
  },
  {
    question_text: "What is a common effect of a temperature inversion?",
    option_a: "Improved visibility",
    option_b: "Trapped smoke, haze, or pollution near the surface",
    option_c: "Increased convective activity",
    option_d: "Rapid thunderstorm development",
    correct_option: "B",
    explanation: "The stable inversion layer limits vertical mixing and traps smoke, haze, and pollution near the surface.",
    position: 9
  }
]

question_texts = stability_questions.map { |attributes| attributes[:question_text] }

stability_card.questions
              .where.not(question_text: question_texts)
              .destroy_all

stability_questions.each do |attributes|
  question = stability_card.questions.find_or_initialize_by(
    question_text: attributes[:question_text]
  )

  question.assign_attributes(attributes.except(:question_text))
  question.save!
end