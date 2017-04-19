class Project < ApplicationRecord
  has_many :assigns
  has_many :users ,:through=>"assigns"

  has_attached_file :avatar,:styles => {
      :thumb => "200x200#",
      :small  => "400x400>",
      :medium => "800x800" }

  validates_attachment :avatar,content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
#validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(
  application/pdf application/msword application/vnd.openxmlformats-
  officedocument.wordprocessingml.document) } 
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :requirements, presence: true
  validates :domain, presence: true
end
