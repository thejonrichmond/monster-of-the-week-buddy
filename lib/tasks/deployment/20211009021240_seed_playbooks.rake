namespace :after_party do
  desc 'Deployment task: seed_playbooks'
  task seed_playbooks: :environment do
    puts "Running deploy task 'seed_playbooks'"

    Playbook.create name: "The Chosen"
    Playbook.create name: "The Crooked"
    Playbook.create name: "The Divine"
    Playbook.create name: "The Expert"
    Playbook.create name: "The Flake"
    Playbook.create name: "The Initiate"
    Playbook.create name: "The Monstrous"
    Playbook.create name: "The Mundane"
    Playbook.create name: "The Professional"
    Playbook.create name: "The Spell-Slinger"
    Playbook.create name: "The Spooky"
    Playbook.create name: "The Wronged"
    Playbook.create name: "The Gumshoe"
    Playbook.create name: "The Hex"
    Playbook.create name: "The Pararomantic"
    Playbook.create name: "The Searcher"

    # Update task as completed.  If you remove the line below, the task will
    # run with every deploy (or every time you call after_party:run).
    AfterParty::TaskRecord
      .create version: AfterParty::TaskRecorder.new(__FILE__).timestamp
  end
end
