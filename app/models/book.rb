class Book < ApplicationRecord

 validates :title, presence: true
 validates :body, presence: true,length: { maximum: 200 }

 belongs_to :user
 has_many :book_comments,dependent: :destroy
 has_many :favorite, dependent: :destroy

 def favorites_by?
  favorites.where(user_id: user.id).exsits?
 end

# 	attachment :profile_image
#user側のprofile_imageを参照させる=bookには必要ない
end
