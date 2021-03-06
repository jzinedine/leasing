# encoding: utf-8
class Person < ActiveRecord::Base
  attr_accessible :birthdate, :fathername, :firstname,
                  :gender, :identity_issue_city, :identity_issue_date,
                  :identity_no, :identity_serial, :lastname,
                  :marital_status, :nationalno,
                  :title, :job_title, :job_position, :job_company,
                  :job_industry, :education, :addresses_attributes #,:primary_address_id
  has_one :customer
  has_one :guarantor

  has_many :addresses, :dependent => :destroy
  #has_one :primary_address, :class_name => 'Address'
  accepts_nested_attributes_for :addresses , :reject_if => :all_blank, :allow_destroy => true
  #,:reject_if => proc { |attributes| attributes['name'].blank? }#, :allow_destroy => true

  #TODO turn on validation
  #validates :nationalno, :nationalno => true, :uniqueness => true
  #validates :firstname, :lastname, :gender, :nationalno, :marital_status, :presence => true
  #validates :addresses, :length => {:minimum => 1}
  #validates :gender, :inclusion => {:in => lambda {|_| GENDERS }}
  #validates :marital_status, :inclusion => {:in => lambda {|_| MARITAL_STATUSES }}

  validates :education, :inclusion => {:in => lambda {|_| EDUCATIONS }}, :allow_blank => true

  GENDERS = %w[Male Female]
  MARITAL_STATUSES = %w[Married Single]
  EDUCATIONS = %w[Illiterate UnderDiploma Diploma Bachelor Master PhD Hawzah]

  normalize_attributes :marital_status, :gender

  def build
    if addresses.empty?
      addresses.build
      addresses.each { |e| e.build }
    end
  end

  def to_s
    "#{firstname || ' '} #{lastname || ' '}"
  end

end

