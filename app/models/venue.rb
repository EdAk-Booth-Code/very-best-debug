# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  address      :string
#  name         :string
#  neighborhood :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Venue < ApplicationRecord

  def comments
    my_id = self.id
    matching_comments = Comment.where({ :venue_id => my_id })
    return matching_comments
  end

  def poster
    my_id = self.id
    matching_poster = User.where({ :id => my_id})
    return matching_poster
  end
end
