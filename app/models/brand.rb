class Brand < ActiveRecord::Base
  
  has_many :variants
  
  validates :name,  :presence => true,       :length => { :maximum => 255 }
                    #:format   => { :with => CustomValidators::Names.name_validator }
end
