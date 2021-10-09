class Hunter < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  belongs_to :playbook
end
