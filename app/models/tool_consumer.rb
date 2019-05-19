# frozen_string_literal: true

# == Schema Information
#
# Table name: tool_consumers
#
#  id                     :bigint           not null, primary key
#  instance_contact_email :string
#  instance_description   :string
#  instance_guid          :string
#  instance_name          :string
#  instance_url           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class ToolConsumer < ApplicationRecord
end
