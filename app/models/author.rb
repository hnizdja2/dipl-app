class Author < ActiveRecord::Base
  has_many :theses
  validates :firstname,:surname, :presence => true
end
