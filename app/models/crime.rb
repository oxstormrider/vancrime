class Crime < ApplicationRecord
  belongs_to :site
  belongs_to :offence
end
