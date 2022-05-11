class Relationship < ApplicationRecord
  belongs_to :follower.class_name :"User"
  belongs_to :followed.claas_name :"User"
end
