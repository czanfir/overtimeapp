class Post < ApplicationRecord
  enum status: { submitted: 'submitted', approved: 'approved', rejected: 'rejected' }
  validates_presence_of :date, :rationale
  belongs_to :user
end
