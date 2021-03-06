class Guarantor < ActiveRecord::Base
  attr_accessible :person_id, :category
  belongs_to :person
  has_many :contracts, :through => :contract_guarantors
  
  def build
  	build_person
  	person.build
  end
end
