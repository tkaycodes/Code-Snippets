class Snippet < ActiveRecord::Base
  belongs_to :language
  validates :title, uniqueness: {scope: :language_id}
end
