require 'open-uri'

# # Clear existing data (optional, for idempotency)
# Character.delete_all
# Affiliation.delete_all
# NenAbility.delete_all
# NenAbilityRelation.delete_all
# Episode.delete_all
# EpisodeRelation.delete_all

# # Reset primary key sequences (optional, for idempotency)
# tables = %w(characters affiliations nen_abilities nen_ability_relations episodes episode_relations)
# tables.each do |table|
#   ActiveRecord::Base.connection.execute("SELECT setval(pg_get_serial_sequence('#{table}', 'id'), COALESCE(MAX(id)+1, 1), false) FROM #{table}")
# end

# Affiliation データの追加
affiliations = Affiliation.create([
  { name: "くじら島" },
  { name: "ゾルディック家" },
  { name: "ノストラードファミリー" },
  { name: "十二支ん" },
  { name: "幻影旅団" },
  { name: "心源流拳法" },
  { name: "GIプレイヤー" },
  { name: "陰獣" },
  { name: "GIゲームマスター" },
  { name: "ハンター協会 会長" }
])



# Character, NenAbility, Episode, etc. data creation would go here

# Character データの追加
Character.create([
  { debut_episode: 1, name: "ゴン＝フリークス", affiliation: affiliations[0] },
  { debut_episode: 6, name: "キルア＝ゾルディック", affiliation: affiliations[1] },
  { debut_episode: 2, name: "クラピカ", affiliation: affiliations[2] },
  { debut_episode: 2, name: "レオリオ＝パラディナイト", affiliation: affiliations[3] },
  { debut_episode: 5, name: "ヒソカ＝モロウ", affiliation: affiliations[4] },
  { debut_episode: 1, name: "カイト", affiliation: affiliations[0] },
  { debut_episode: 36, name: "アルミ＝ゾルディック", affiliation: affiliations[1] },
  { debut_episode: 46, name: "ウイング", affiliation: affiliations[5] },
  { debut_episode: 46, name: "ズシ", affiliation: affiliations[5] },
  { debut_episode: 131, name: "ビスケット＝クルーガー", affiliation: affiliations[6] },
  { debut_episode: 25, name: "ネテロ", affiliation: affiliations[9] },
  { debut_episode: 67, name: "ネオンノストラード", affiliation: affiliations[2] },
  { debut_episode: 67, name: "センリツ", affiliation: affiliations[2] },
  { debut_episode: 70, name: "梟", affiliation: affiliations[7] },
  { debut_episode: 156, name: "レイザー", affiliation: affiliations[8] },
  { debut_episode: 1, name: "ジン＝フリークス", affiliation: affiliations[3] },
  { debut_episode: 131, name: "ゲンスルー", affiliation: affiliations[6] },
  { debut_episode: 80, name: "クロロ＝ルシルフル", affiliation: affiliations[4] }
])

# NenAbility データの追加
nen_abilities = NenAbility.create([
  { aura_type: "強化系" },
  { aura_type: "変化系" },
  { aura_type: "具現化系" },
  { aura_type: "特質系" },
  { aura_type: "放出系" },
  { aura_type: "操作系" }
])

# Episode データの追加
episodes = Episode.create([
  { name: "ハンター試験編" },
  { name: "天空競技場編" },
  { name: "ヨークシン編" },
  { name: "GI編" },
  { name: "キメラアント編" },
  { name: "会長選挙編" },
  { name: "くじら島" }
])

# NenAbilityRelation データの追加
NenAbilityRelation.create([
  { character: Character.find(1), nen_ability: NenAbility.find(1) },
  { character: Character.find(2), nen_ability: NenAbility.find(2) },
  { character: Character.find(3), nen_ability: NenAbility.find(3) },
  { character: Character.find(3), nen_ability: NenAbility.find(4) },
  { character: Character.find(4), nen_ability: NenAbility.find(5) },
  { character: Character.find(5), nen_ability: NenAbility.find(2) },
  { character: Character.find(6), nen_ability: NenAbility.find(3) },
  { character: Character.find(7), nen_ability: NenAbility.find(6) },
  { character: Character.find(8), nen_ability: NenAbility.find(1) },
  { character: Character.find(9), nen_ability: NenAbility.find(6) },
  { character: Character.find(10), nen_ability: NenAbility.find(2) },
  { character: Character.find(11), nen_ability: NenAbility.find(1) },
  { character: Character.find(12), nen_ability: NenAbility.find(4) },
  { character: Character.find(13), nen_ability: NenAbility.find(5) },
  { character: Character.find(14), nen_ability: NenAbility.find(6) },
  { character: Character.find(15), nen_ability: NenAbility.find(5) },
  { character: Character.find(17), nen_ability: NenAbility.find(3) },
  { character: Character.find(18), nen_ability: NenAbility.find(4) }
])


# EpisodeRelation データの追加
EpisodeRelation.create([
  { character: Character.find(1), episode: Episode.find(1) },
  { character: Character.find(1), episode: Episode.find(2) },
  { character: Character.find(1), episode: Episode.find(3) },
  { character: Character.find(1), episode: Episode.find(4) },
  { character: Character.find(1), episode: Episode.find(5) },
  { character: Character.find(1), episode: Episode.find(6) },
  { character: Character.find(2), episode: Episode.find(1) },
  { character: Character.find(2), episode: Episode.find(2) },
  { character: Character.find(2), episode: Episode.find(3) },
  { character: Character.find(2), episode: Episode.find(4) },
  { character: Character.find(2), episode: Episode.find(5) },
  { character: Character.find(2), episode: Episode.find(6) },
  { character: Character.find(3), episode: Episode.find(1) },
  { character: Character.find(3), episode: Episode.find(3) },
  { character: Character.find(4), episode: Episode.find(1) },
  { character: Character.find(4), episode: Episode.find(3) },
  { character: Character.find(4), episode: Episode.find(6) },
  { character: Character.find(5), episode: Episode.find(1) },
  { character: Character.find(5), episode: Episode.find(2) },
  { character: Character.find(5), episode: Episode.find(3) },
  { character: Character.find(5), episode: Episode.find(4) },
  { character: Character.find(6), episode: Episode.find(7) },
  { character: Character.find(6), episode: Episode.find(5) },
  { character: Character.find(7), episode: Episode.find(1) },
  { character: Character.find(7), episode: Episode.find(3) },
  { character: Character.find(8), episode: Episode.find(2) },
  { character: Character.find(9), episode: Episode.find(2) },
  { character: Character.find(10), episode: Episode.find(4) },
  { character: Character.find(11), episode: Episode.find(1) },
  { character: Character.find(11), episode: Episode.find(5) },
  { character: Character.find(12), episode: Episode.find(3) },
  { character: Character.find(13), episode: Episode.find(3) },
  { character: Character.find(14), episode: Episode.find(3) },
  { character: Character.find(15), episode: Episode.find(4) },
  { character: Character.find(16), episode: Episode.find(6) },
  { character: Character.find(17), episode: Episode.find(4) },
  { character: Character.find(18), episode: Episode.find(3) }
])

# Picture データの追加
Character.find_each do |character|
  case character.id
  when 1
    character.image.attach(io: URI.open('https://dengekionline.com/images/4PYD/1qaf/8H4Y/3So9/CkBqflznRpCSV2zzzF2I8SoCseBkTHSB8xNPLEX2v7pZ2J4N66pUQMwhCmpBrGYuILpSNaIzAwvaXVXO_main.jpg'), filename: 'gon.jpg')
  when 2
    character.image.attach(io: URI.open('https://www.chibakan-yachiyo.net/wp-content/uploads/fig-kirua-i.jpg'), filename: 'killua.jpg')
  when 3
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154047a.jpg?impolicy=fitin&ww=480&hh=270'), filename: 'kurapika.jpg')
  when 4
    character.image.attach(io: URI.open('https://animemiru.jp/wp-content/uploads/2018/05/rr01-1-480x271.jpg'), filename: 'leorio.jpg')
  when 5
    character.image.attach(io: URI.open('https://e0.pxfuel.com/wallpapers/52/248/desktop-wallpaper-anime-hunter-x-hunter-hisoka.jpg'), filename: 'hisoka.jpg')
  when 6
    character.image.attach(io: URI.open('https://pbs.twimg.com/media/EODWorVWsAAvbbt.jpg'), filename: 'kaito.jpg')
  when 7
    character.image.attach(io: URI.open('https://renote.net/files/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMDRQTHc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5af99d4feffb6731bb72d693ec351d90a972839e/irumi.jpg'), filename: 'irumi.jpg')
  when 8
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154028a.jpg?impolicy=fitin&ww=640&hh=380'), filename: 'wing.jpg')
  when 9
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/574-720x405.jpg'), filename: 'zusi.jpg')
  when 10
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/117-720x407.jpg'), filename: 'bisk.jpg')
  when 11
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/65.jpg'), filename: 'netero.jpg')
  when 12
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154041a.jpg?impolicy=fitin&ww=640&hh=380'), filename: 'neon.jpg')
  when 13
    character.image.attach(io: URI.open('https://res.cloudinary.com/macm/image/upload/c_fill,h_400,w_700/z3npmom7hm6jz3s5rk90.jpg'), filename: 'senritsu.jpg')
  when 14
    character.image.attach(io: URI.open('https://huncyclopedia.com/wp-content/uploads/426-720x405.jpg'), filename: 'nennjyu.jpg')
  when 15
    character.image.attach(io: URI.open('https://meigenkakugen.net/wp-content/uploads/razor.jpg'), filename: 'ruyzer.jpg')
  when 16
    character.image.attach(io: URI.open('https://ipcprlegislative.org/wp-content/uploads/2022/01/zin.jpg'), filename: 'gine.jpg')
  when 17
    character.image.attach(io: URI.open('https://renote.net/files/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBd2JIZ2c9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--4d48dc2f3d610ae9581b613be6a3bba031d218e9/FC62056C-3348-4006-BE72-5462D189E683.jpeg'), filename: 'gensrue.jpg')
  when 18
    character.image.attach(io: URI.open('https://image2.b-ch.com/ttl2/3154/3154051a.jpg?impolicy=fitin&ww=640&hh=380'), filename: 'kuroro.jpg')
  end
end