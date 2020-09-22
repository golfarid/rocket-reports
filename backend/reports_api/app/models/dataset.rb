class Dataset < ApplicationRecord
  belongs_to :parameter
  has_many :connection
end
