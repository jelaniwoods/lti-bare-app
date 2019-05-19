# frozen_string_literal: true

# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  roles      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  context_id :integer
#  user_id    :integer
#

class Enrollment < ApplicationRecord
  has_one :launch, dependent: :destroy
  has_many :submissions, dependent: :destroy
  belongs_to :context
  belongs_to :user
end
