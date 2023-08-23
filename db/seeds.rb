# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cartoonist.destroy_all
Publisher.destroy_all

# publishers = [
#   { company_name: "講談社" },
#   { company_name: "小学館" },
#   { company_name: "集英社" },
#   { company_name: "KADOKAWA" },
#   { company_name: "秋田書店" },
#   { company_name: "双葉社" },
#   { company_name: "日本文芸社" },
#   { company_name: "一迅社" },
#   { company_name: "海王社" },
#   { company_name: "白泉社" },
#   { company_name: "徳間書店（Chara）" },
#   { company_name: "竹書房" },
#   { company_name: "新書館" },
#   { company_name: "芳文社" },
#   { company_name: "リブレ" },
#   { company_name: "幻冬舎コミックス" },
#   { company_name: "祥伝社" },
#   { company_name: "少年画報社" },
#   { company_name: "マッグガーデン" },
#   { company_name: "オーバーラップ" },
#   { company_name: "シュークリームPOP" },
#   { company_name: "新潮社" },
#   { company_name: "スクウェア・エニックス" },
#   { company_name: "その他" }
# ]

# publishers.each do |publisher|
#   Publisher.create!(publisher)
# end