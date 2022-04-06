# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chanel.create(
    name: "HikakinTV ",
    url:"https://www.youtube.com/user/HikakinTV",
    detail:"日本のトップYoutubeチャンネルの1つ",
    tag1:"ヒカキン",
    tag2:"チャンネル登録者数1000万人越え",
    tag3:"ボイスパーカッション",
    tag4:"弟",
    tag5:"メガネ",
    assessment: 5
)

Chanel.create(
    name: "陣内智則のネタジン",
    url:"https://www.youtube.com/c/%E9%99%A3%E5%86%85%E6%99%BA%E5%89%87%E3%81%AE%E3%83%8D%E3%82%BF%E3%82%B8%E3%83%B3",
    detail:"お笑い芸人1",
    tag1:"声優",
)

Chanel.create(
    name: "沢野ぽぷら",
    url:"https://www.youtube.com/channel/UCwyzBrOA3sfi3RZjYj0x8gQ",
    detail:"声優2",
    tag1:"声優",
)

tagNameArray = Array[
    "ヒカキン","チャンネル登録者数1000万人越え","ボイスパーカッション",
    "弟","メガネ","ゆっくり","勉強","就職","歌","Vtuber","お笑い芸人",
    "声優","俳優","アイドル","ASMR"
]

tagNameArray.each{|tagName|
    Tag.create(
        name: tagName
    )
}

