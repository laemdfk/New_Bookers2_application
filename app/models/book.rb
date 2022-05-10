class Book < ApplicationRecord

 validates :title, presence: true
 validates :body, presence: true,length: { maximum: 200 }

 belongs_to :user
 has_many :book_comments,dependent: :destroy

# 	attachment :profile_image
#user側のprofile_imageを参照させる=bookには必要ない
end
