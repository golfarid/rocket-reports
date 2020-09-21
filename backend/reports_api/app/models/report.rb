class Report < ApplicationRecord
  belongs_to :dataset
  belongs_to :template
end
