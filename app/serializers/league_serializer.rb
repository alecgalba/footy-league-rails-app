class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :user


  def comment_list
    object.comments.map do |comment|
      {
        id: comment.id,
        user: {
          id: comment.user_id,
          name: User.find(comment.user_id).email
        },
        content: comment.content
      }
    end
  end
end
