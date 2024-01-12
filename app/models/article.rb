class Article < ApplicationRecord
  include PgSearch::Model

  belongs_to :author

  pg_search_scope :search_by_all,
    against: {
      title: 'A',
      content: 'B',
      year: 'C'
    },
    associated_against: {
      author: {
        first_name: 'A',
        last_name: 'B'
      }
    },
    using: {
      tsearch: { prefix: true, any_word: true }
    }
end
