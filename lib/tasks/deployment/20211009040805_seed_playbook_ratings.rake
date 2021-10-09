namespace :after_party do
  desc 'Deployment task: seed_playbook_ratings'
  task seed_playbook_ratings: :environment do
    puts "Running deploy task 'seed_playbook_ratings'"

    chosen = Playbook.find_by name: 'The Chosen'
    chosen.ratings = [
      { 
        charm: 2,
        cool: -1,
        sharp: 1,
        tough: 2,
        weird: -1
      },
      { 
        charm: -1,
        cool: 2,
        sharp: 1,
        tough: 2,
        weird: -1
      },
      { 
        charm: 1,
        cool: 2,
        sharp: 1,
        tough: 1,
        weird: -1
      },
      { 
        charm: -1,
        cool: 1,
        sharp: 2,
        tough: -1,
        weird: 2
      },
      { 
        charm: 1,
        cool: 2,
        sharp: -1,
        tough: -1,
        weird: 2
      }
    ]
    chosen.save

    crooked = Playbook.find_by name: 'The Crooked'
    crooked.ratings = [
      { 
        charm: 1,
        cool: 1,
        sharp: 2,
        tough: 0,
        weird: -1
      },
      { 
        charm: -1,
        cool: 1,
        sharp: 1,
        tough: 2,
        weird: 0
      },
      { 
        charm: -1,
        cool: 2,
        sharp: 2,
        tough: 0,
        weird: -1
      },
      { 
        charm: 2,
        cool: 1,
        sharp: 1,
        tough: 0,
        weird: -1
      },
      { 
        charm: 2,
        cool: 0,
        sharp: 1,
        tough: -1,
        weird: 1
      }
    ]
    crooked.save

    divine = Playbook.find_by name: 'The Divine'
    divine.ratings = [
      { 
        charm: 1,
        cool: 1,
        sharp: -1,
        tough: 2,
        weird: 0
      },
      { 
        charm: -1,
        cool: 2,
        sharp: -1,
        tough: 2,
        weird: 0
      },
      { 
        charm: -1,
        cool: 0,
        sharp: 1,
        tough: 2,
        weird: 1
      },
      { 
        charm: 1,
        cool: 1,
        sharp: 0,
        tough: 2,
        weird: -1
      },
      { 
        charm: -1,
        cool: 1,
        sharp: 0,
        tough: 2,
        weird: 1
      }
    ]
    divine.save

    expert = Playbook.find_by name: 'The Expert'
    expert.ratings = [
      { 
        charm: -1,
        cool: 1,
        sharp: 2,
        tough: 1,
        weird: 0
      },
      { 
        charm: 0,
        cool: 1,
        sharp: 2,
        tough: -1,
        weird:1 
      },
      { 
        charm: 1,
        cool: -1,
        sharp: 2,
        tough: 1,
        weird: 0
      },
      { 
        charm: -1,
        cool: 1,
        sharp: 2,
        tough: 0,
        weird: 1
      },
      { 
        charm: -1,
        cool: 0,
        sharp: 2,
        tough: -1,
        weird: 2
      }
    ]
    expert.save   

    # Update task as completed.  If you remove the line below, the task will
    # run with every deploy (or every time you call after_party:run).
    AfterParty::TaskRecord
      .create version: AfterParty::TaskRecorder.new(__FILE__).timestamp
  end
end
