class User < ApplicationRecord
    include Visible
    has_many: comments, dependent: :destroy
    has_many: articles, dependent: :destroy

    validates :username, presence: true
    validates :password, presence: true, length: { minimum: 6 }
  end