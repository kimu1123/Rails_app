class Plan < ApplicationRecord
validates :title, presence: true, length: { maximum: 20}
validates :start_date, presence: true
validates :end_date, presence: true

validate :start_end_check

def start_end_check
  if start_date.present?
  errors.add(:end_date, "の日付を正しく記入してください") 
  start_date > end_date
  end
 end


validates :sche_memo, length: { maximum: 100}
end