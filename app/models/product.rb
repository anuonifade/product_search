class Product < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :title, presence: true
  validates :country, presence: true
  validates :price, presence: true
end
