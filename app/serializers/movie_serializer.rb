class MovieSerializer
  include JSONAPI::Serializer
  attributes :title, :upvote, :downvote, :id
end
