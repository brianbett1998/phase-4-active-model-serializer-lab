class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    object.content.length > 40 ? "#{object.content[0..39]}..." : object.content
  end
end
