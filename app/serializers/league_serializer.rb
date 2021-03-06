class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :user
  has_many :comments


  def comment_list
    object.comments.map do |comment|
      {
        id: comment.id,
        user: {
          id: comment.user_id,
          email: User.find(comment.user_id).email
        },
        content: comment.content
      }
    end
  end
end
