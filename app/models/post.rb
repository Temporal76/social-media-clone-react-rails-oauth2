class Post < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
    has_many :comments
    has_many :likes, as: :likeable

    after_update :like_count

    def like_count
      self.likes.count
    end

    
  end
  