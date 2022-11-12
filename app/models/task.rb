class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: %w[Not-Started In-Progress Complete] }

  STATUS_OPTIONS = [
    ['Not started', 'Not-Started'],
    ['In progress', 'In-Progress'],
    ['Complete', 'Complete']
  ]
end
