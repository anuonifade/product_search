class Product < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :title, presence: true
  validates :country, presence: true
  validates :price, presence: true

  mappings dynamic: false do
    indexes :title, type: :text
    indexes :description, type: :text, analyzer: :english
    indexes :country, type: :text, analyzer: :english
    indexes :tags, type: :text, analyzer: :english
    indexes :price, type: :float
  end
end
