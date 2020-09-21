class GroupReport < ApplicationRecord
  belongs_to :role
  belongs_to :report
  belongs_to :parameter
end
