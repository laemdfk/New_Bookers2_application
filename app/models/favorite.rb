class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book

#バリデーション追加
  validates_uniqueness_of :book_id, scope: :user_id
  #validates_uniqueness_of　属性の値が一意であることをバリデーション
  #scope　範囲を指定して、一意かどうかをチェックする
  
end
