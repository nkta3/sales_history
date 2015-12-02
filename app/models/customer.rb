# == Schema Information
#
# Table name: customers
#
#  id               :integer          not null, primary key
#  company_name     :string
#  zip              :string
#  address          :string
#  tel              :string
#  responsible_name :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Customer < ActiveRecord::Base
  has_many :histories
  validates :company_name, :zip , :address, :tel, :responsible_name, presence: {present: true, message: "必須入力です。記入をお願いします。"}
end
