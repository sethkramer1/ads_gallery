class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_attached_file :image, styles: { medium: "700x500>"}

 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/




 def self.search(search)
   where("company LIKE ?", "%#{search}%")
 end


end
