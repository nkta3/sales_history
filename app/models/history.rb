# == Schema Information
#
# Table name: histories
#
#  id                :integer          not null, primary key
#  activity_time     :datetime
#  customer_id       :integer
#  sales_category    :string
#  sales_achievement :string
#  detail            :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class History < ActiveRecord::Base
  belongs_to :customer

  validates :activity_time, :customer_id, :sales_category, :sales_achievement,presence: {present: true, message: "必須入力です。記入をお願いします。"}
end
