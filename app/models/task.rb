class Task < ApplicationRecord
  validates :titre, :content, presence: true
  end