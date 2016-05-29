class Poll < ApplicationRecord
  before_save :delete_votes

  private
  def delete_votes
    Vote.delete_all
  end
end
