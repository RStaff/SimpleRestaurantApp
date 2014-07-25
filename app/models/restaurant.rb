class Restaurant < ActiveRecord::Base
	validates :name, presence: true,
	length: {minimum: 2 }

  belongs_to :owner
  has_many :reservations, :dependent => :destroy
  accepts_nested_attributes_for :reservations

  mount_uploader :image, ImageUploader
  mount_uploader :menu, MenuUploader
end

