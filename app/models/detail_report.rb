class DetailReport < ApplicationRecord
    belongs_to :report, optional: true
end
