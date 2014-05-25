class Sponsor < ActiveRecord::Base
  attr_accessible :name, :description, :logo, :url

  
  validates_format_of :url, :with => URI::regexp(%w(http https))
  validates :name, presence: true, uniqueness: true
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
