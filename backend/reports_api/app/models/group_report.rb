class GroupReport < ApplicationRecord
  belongs_to :role
  belongs_to :report
  has_many :parameter
end
