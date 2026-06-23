@rules_and_regs = StudyDeck.find_or_create_by!(
  name: "Rules & Regulations"
) do |deck|
  deck.description = "FAA rules, regulations, and operating limitations."
end

load Rails.root.join(
  "db/seeds/rules_and_regulations/altitudes_and_speed_limits.rb"
)