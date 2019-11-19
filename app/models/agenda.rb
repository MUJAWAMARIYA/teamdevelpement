class Agenda < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :articles, dependent: :destroy
  accepts_nested_attributes_for :articles, :allow_destroy => true
end
