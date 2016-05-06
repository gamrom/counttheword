class Post < ActiveRecord::Base
    has_many :replies
    
    validates :title, presence: {message: "글이 비었습니다"}
end
