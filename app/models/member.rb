class Member < ApplicationRecord
  belongs_to :team

  include AlgoliaSearch

  algoliasearch do
    attribute :name, :phone, :email, :position
  end
end
