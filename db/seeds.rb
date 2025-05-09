# Clear existing data
Character.destroy_all
Scenario.destroy_all
Action.destroy_all
Item.destroy_all

# Create Actions
actions = {
  fight: { difficulty: 15, description: "Engage in combat", success_text: "You defeated your foe!", failure_text: "You take damage in the fight!" },
  talk: { difficulty: 10, description: "Attempt diplomacy", success_text: "They agree to your terms.", failure_text: "They don't trust you." },
  flee: { difficulty: 5, description: "Run away", success_text: "You escaped safely.", failure_text: "You trip while running!" },
  flirt: { difficulty: 18, description: "Try to charm", success_text: "They're charmed by your wit.", failure_text: "They're not impressed." },
  inspect: { difficulty: 12, description: "Examine carefully", success_text: "You notice important details.", failure_text: "You miss something important." },
  steal: { difficulty: 20, description: "Attempt to steal", success_text: "You successfully take the item!", failure_text: "You're caught red-handed!" },
  cast_spell: { difficulty: 15, description: "Use magic", success_text: "Your spell works perfectly!", failure_text: "Your spell backfires!" }
}

actions.each do |name, attrs|
  Action.create!(name: name.to_s,**attrs)
end

# Create Items
items = [
  { name: "Health Potion", description: "Restores 5 health points", effect: "heal:5" },
  { name: "Dagger", description: "A small but sharp blade", effect: "damage:3" },
  { name: "Lucky Charm", description: "Gives +2 to all rolls", effect: "bonus:2" },
  { name: "Cloak", description: "Helps you hide in shadows", effect: "stealth:3" },
]

items.each { |item| Item.create!(item) }

# Create Scenarios with associated actions
scenarios = [
  {
    description: "You encounter a goblin in the dark forest. What do you do?",
    actions: [:fight, :talk, :flee, :flirt]
  },
  {
    description: "A mysterious stranger offers you a quest. How do you respond?",
    actions: [:talk, :flirt, :inspect]
  },
  {
    description: "You find a treasure chest! Do you open it?",
    actions: [:inspect, :steal, :cast_spell]
  },
]

scenarios.each do |scenario|
  s = Scenario.create!(
    description: scenario[:description],
  )

  scenario[:actions].each do |action_name|
    action = Action.find_by(name: action_name.to_s)
    s.actions << action if action
  end
end

puts "Database seeded successfully!"