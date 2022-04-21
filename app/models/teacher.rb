class Teacher < ApplicationRecord
include Sortable

validates :name, :school, :school_year, presence: true
end
