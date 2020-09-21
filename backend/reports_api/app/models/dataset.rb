class Dataset < ApplicationRecord
  belongs_to :parameter
  belongs_to :connection
end
