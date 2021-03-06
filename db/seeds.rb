# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8



History.delete_all

StaffInfo.delete_all

StaffInfo.create(:id => 1,
                 :name => '高田 幸弘')
StaffInfo.create(:id => 2,
                 :name => '田中 健二')
StaffInfo.create(:id => 3,
                 :name => '中田 正弘')
StaffInfo.create(:id => 4,
                 :name => '高口 政義')
StaffInfo.create(:id => 5,
                 :name => '牧田 西武')
StaffInfo.create(:id => 6,
                 :name => '高橋 由伸')
StaffInfo.create(:id => 7,
                 :name => '吉川 光男')



Customer.delete_all

Customer.create(:id => 1,
                :company_name => '醤油株式会社',
                :zip => '111-1111',
                :address => '東京都港区ミナトミライ4-26-1',
                :tel => '092-111-111',
                :responsible_name => '中田')

Customer.create(:id => 2,
                :company_name => '卵販売株式会社',
                :zip => '131-1441',
                :address => '福岡県福岡市東区和白東5-20-30',
                :tel => '092-112-112',
                :responsible_name => '棚田')

Customer.create(:id => 3,
                :company_name => '桃の木株式会社',
                :zip => '880-1221',
                :address => '大阪府大阪市南区柳町5-11-11',
                :tel => '092-144-511',
                :responsible_name => '三木')

Customer.create(:id => 4,
                :company_name => '年甲株式会社',
                :zip => '880-1221',
                :address => '京都府京都市南区柳町5-11-11',
                :tel => '092-144-511',
                :responsible_name => '三谷')

Customer.create(:id => 5,
                :company_name => '亀羅株式会社',
                :zip => '880-1221',
                :address => '佐賀県佐賀市柳町5-11-11',
                :tel => '092-144-511',
                :responsible_name => '谷')


# History.create(:id => 1,
#                :activity_time => DateTime.new(1993,2,24,12,30,45),
#                :customer_id => 1,
#                :sales_category => '商品案内',
#                :sales_achievement => '達成',
#                :detail => 'メモ',
#                :staff_info_id => 1)

# History.create(:id => 2,
#                :activity_time => DateTime.new(1993,2,24,12,30,45),
#                :customer_id => 2,
#                :sales_category => '契約',
#                :sales_achievement => '継続',
#                :detail => 'メモ',
#                :staff_info_id => 2)

# History.create(:id => 3,
#                :activity_time => DateTime.new(1993,2,24,12,30,45),
#                :customer_id => 3,
#                :sales_category => 'クレーム処理',
#                :sales_achievement => '失敗',
#                :detail => 'メモ',
#                :staff_info_id => 3)

History.transaction do
  1000.times do |i|
    History.create(activity_time: Time.now,
                   customer_id:   [1,2,3,4,5].sample,
                   sales_category: %w{商品案内 契約 フォロー クレーム処理}.sample,
                   sales_achievement: %w{達成 継続 失敗}.sample,
                   detail: "test",
                   staff_info_id: [1,2,3,1,2,4,2,5,6,4,6,7].sample)
  end
end