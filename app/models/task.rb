class Task < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :value, presence: true
  validates :due_date, presence: true

  after_initialize :set_status

  def set_status
    self.status ||= false
  end

  def self.toggle_status(task)
    task.status = task.status ? false : true
    task.save
  end
end
