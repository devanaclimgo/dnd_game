# Clear existing data
Character.destroy_all
Scenario.destroy_all
Action.destroy_all
Item.destroy_all

# Create Actions
actions = {
  fight: { difficulty: 15, description: "Engage in combat", success_text: "You defeated your foe!", failure_text: "You take damage in the fight!"},
  talk: { difficulty: 10, description: "Attempt diplomacy", success_text: "They agree to your terms.", failure_text: "They don't trust you."},
  flee: { difficulty: 5, description: "Run away", success_text: "You escaped safely.", failure_text: "Yo trip while running."},
  flirt: { difficulty: 18, description: "Try to charm", success_text: "They're charmed by your wit.", failure_text: "They're not impressed."},
  inspect: { difficulty: 12, description: "Examine carefully", success_text: "You notice important details.", failure_text: "You miss something important."},
  steal: { difficulty: 20, description: "Attempt to steal", success_text: "You successfully take the item!", failure_text: "You're caught red-handed!"},
  cast_spell: { difficulty: 15, description: "Use magic", success_text: "Your spell worked perfectly!", failure_text: "Your spell backfires!"}
}