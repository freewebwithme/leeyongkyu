# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Leeyongkyu.Repo.insert!(%Leeyongkyu.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
books = %{
  "1" =>"https://leeyongkyu.s3-us-west-1.amazonaws.com/1.prepare_the_way_of_the_lord.pdf",
  "2" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/2.exposition_on_song_of_songs.pdf",
  "3" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/3.work_out_your_salvation.pdf",
  "4" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/4.prepare_for_the_lord's_second_coming.pdf",
  "5" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/5.the_imperishable_crown.pdf",
  "6" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/6.Zechariah.pdf",
  "7" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/7.the_way_to_overcome_a_crisis.pdf",
  "8" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/8.god_sovereignty_and_man_life.pdf",
  "9" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/9.ruth.pdf",
  "10" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/10.things_to_accomplish_in_the_new_mil.pdf",
  "11" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/11.Life_with_no_regrets.pdf",
  "12" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/12.duty_of_those_who_receive_salvation.pdf",
  "13" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/13.arise_shine.pdf",
  "14" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/14.hidden_treasure_and_pearl.pdf",
  "15" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/15.heavens_citizenship.pdf",
  "16" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/16.true_peace.pdf",
  "17" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/17.promise_of_God.pdf",
  "18" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/18.doctrine_of_the_cross.pdf",
  "19" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/19.awaken_the_dawn.pdf",
  "20" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/20.mans_blessed_commission.pdf",
  "21" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/21.righteous_path_of_life.pdf",
  "22" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/22.victorious_life_of_faith.pdf",
  "23" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/23.sheep_and_the_good_shepherd.pdf",
  "24" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/24.great_inheritance_of_faith.pdf",
  "25" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/25.God_who_cannot_be_eascaped.pdf",
  "26" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/26.Philippians.pdf",
  "27" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/27.life_everlasting.pdf",
  "28" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/28.highway_to_zion.pdf",
  "29" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/29.peter.pdf",
  "30" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/30.blessings_of_chosen_people.pdf",
  "31" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/31.God_in_our_mist.pdf",
  "32" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/32.summary_of_theology.pdf",
  "33" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/33.enduring_city_that_is_to_come.pdf",
  "34" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/34.great_love.pdf",
  "35" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/35.thessalonians.pdf",
  "36" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/36.great_mountain_become_a_plain.pdf",
  "37" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/37.holy_christian_life.pdf",
  "38" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/38.walk_in_the_good_ancient_path.pdf",
  "39" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/39.victory_of_Christ.pdf",
  "40" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/40.double_portion_of_spirit.pdf",
  "41" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/41.hear_the_sound_of_low_whisper.pdf",
  "42" => "https://leeyongkyu.s3-us-west-1.amazonaws.com/42.eternal_freedom_of_christians.pdf"
}


# Genesis sermons

genesis_attrs = [
  %{
  scripture: "창세기",
  chapter: 1,
  verse: "26-28",
  chapter_verse: "1:26-28, 2:7",
  title: "하나님의 인간 창조",
  book_number: 40,
  page: 93,
  book_url: books["40"]
  },
  %{
  scripture: "창세기",
  chapter: 1,
  verse: "27-28",
  chapter_verse: "1:27-28",
  title: "인간의 복된 사명",
  book_number: 20,
  page: 293,
  book_url: books["20"]
  },
  %{
  scripture: "창세기",
  chapter: 2,
  verse: "7-8",
  chapter_verse: "2:7-8",
  title: "에덴동산의 사람들",
  book_number: 3,
  page: 325,
  book_url: books["3"]
  },
  %{
  scripture: "창세기",
  chapter: 2,
  verse: "7-17",
  chapter_verse: "2:7-17",
  title: "에덴동산의 축복",
  book_number: 41,
  page: 263,
  book_url: books["41"]
  },
  %{
  scripture: "창세기",
  chapter: 2,
  verse: "8,9, 15-17",
  chapter_verse: "2:8,9, 15-17",
  title: "선악과를 먹지 말라",
  book_number: 33,
  page: 257,
  book_url: books["33"]
  },
  %{
  scripture: "창세기",
  chapter: 2,
  verse: "18-25",
  chapter_verse: "2:18-25",
  title: "최초의 결혼",
  book_number: 11,
  page: 191,
  book_url: books["11"]
  },
  %{
  scripture: "창세기",
  chapter: 2,
  verse: "20-25",
  chapter_verse: "2:20-25",
  title: "행복한 가정",
  book_number: 25,
  page: 195,
  book_url: books["25"]
  },
  %{
  scripture: "창세기",
  chapter: 3,
  verse: "15",
  chapter_verse: "3:15",
  title: "최초의 기쁜 소식",
  book_number: 30,
  page: 397,
  book_url: books["30"]
  },
  %{
  scripture: "창세기",
  chapter: 4,
  verse: "1-8",
  chapter_verse: "4:1-8",
  title: "하나님의 열납 하시는 제물",
  book_number: 25,
  page: 179,
  book_url: books["25"]
  },
  %{
  scripture: "창세기",
  chapter: 4,
  verse: "3-14",
  chapter_verse: "4:3-14",
  title: "가인의 살인 죄",
  book_number: 34,
  page: 265,
  book_url: books["34"]
  },
  %{
  scripture: "창세기",
  chapter: 5,
  verse: "21-24",
  chapter_verse: "5:21-24",
  title: "에녹의 승천",
  book_number: 20,
  page: 137,
  book_url: books["20"]
  },
  %{
  scripture: "창세기",
  chapter: 6,
  verse: "1-8",
  chapter_verse: "6:1-8",
  title: "홍수의 심판",
  book_number: 34,
  page: 157,
  book_url: books["34"]
  },
  %{
  scripture: "창세기",
  chapter: 6,
  verse: "14-22",
  chapter_verse: "6:14-22",
  title: "노아의 방주",
  book_number: 34,
  page: 171,
  book_url: books["34"]
  },
  %{
  scripture: "창세기",
  chapter: 8,
  verse: "13-22",
  chapter_verse: "8:13-22",
  title: "노아의 새 출발",
  book_number: 15,
  page: 11,
  book_url: books["15"]
  },
  %{
  scripture: "창세기",
  chapter: 9,
  verse: "20-27",
  chapter_verse: "9:20-27",
  title: "노아의 실수",
  book_number: 34,
  page: 185,
  book_url: books["34"]
  },
  %{
  scripture: "창세기",
  chapter: 11,
  verse: "1-9",
  chapter_verse: "11:1-9",
  title: "바벨탑 건축의 죄악",
  book_number: 36,
  page: 379,
  book_url: books["36"]
  },
  %{
  scripture: "창세기",
  chapter: 12,
  verse: "1-4",
  chapter_verse: "12:1-4",
  title: "말씀을 좇아간 아브라함",
  book_number: 23,
  page: 83,
  book_url: books["23"]
  },
  %{
  scripture: "창세기",
  chapter: 12,
  verse: "10-20",
  chapter_verse: "12:10-20",
  title: "아브라함의 실책",
  book_number: 15,
  page: 167,
  book_url: books["15"]
  },
  %{
  scripture: "창세기",
  chapter: 13,
  verse: "5-15",
  chapter_verse: "13:5-15",
  title: "아브라함과 롯의 분리",
  book_number: 37,
  page: 357,
  book_url: books["37"]
  },
  %{
  scripture: "창세기",
  chapter: 13,
  verse: "14-18",
  chapter_verse: "13:14-18",
  title: "아브라함의 선택과 보상",
  book_number: 23,
  page: 187,
  book_url: books["23"]
  },
  %{
  scripture: "창세기",
  chapter: 14,
  verse: "12-23",
  chapter_verse: "14:12-23",
  title: "아브라함의 승리",
  book_number: 11,
  page: 141,
  book_url: books["11"]
  },
  %{
  scripture: "창세기",
  chapter: 15,
  verse: "8-11",
  chapter_verse: "15:8-11",
  title: "응답 받는 제사",
  book_number: 13,
  page: 253,
  book_url: books["13"]
  },
  %{
  scripture: "창세기",
  chapter: 16,
  verse: "1-12",
  chapter_verse: "16:1-12",
  title: "아브라함의 가정불화",
  book_number: 28,
  page: 177,
  book_url: books["28"]
  },
  %{
  scripture: "창세기",
  chapter: 19,
  verse: "12-17",
  chapter_verse: "19:12-17",
  title: "생명을 보존하라",
  book_number: 18,
  page: 35,
  book_url: books["18"]
  },
  %{
  scripture: "창세기",
  chapter: 21,
  verse: "1-6",
  chapter_verse: "21:1-6",
  title: "하나님의 권고",
  book_number: 11,
  page: 45,
  book_url: books["11"]
  },
  %{
  scripture: "창세기",
  chapter: 22,
  verse: "1-14",
  chapter_verse: "22:1-14",
  title: "여호와이레",
  book_number: 5,
  page: 51,
  book_url: books["5"]
  },
  %{
  scripture: "창세기",
  chapter: 22,
  verse: "9-12",
  chapter_verse: "22:9-12, 26:13-22, 27:18-23",
  title: "이삭의 믿음",
  book_number: 40,
  page: 133,
  book_url: books["40"]
  },
  %{
  scripture: "창세기",
  chapter: 25,
  verse: "21-26",
  chapter_verse: "25:21-26",
  title: "야곱과 에서의 싸움",
  book_number: 28,
  page: 367,
  book_url: books["28"]
  },
  %{
  scripture: "창세기",
  chapter: 27,
  verse: "1-4",
  chapter_verse: "27:1-4",
  title: "이삭의 가정의 불행",
  book_number: 19,
  page: 159,
  book_url: books["19"]
  },
  %{
  scripture: "창세기",
  chapter: 28,
  verse: "10-22",
  chapter_verse: "28:10-22",
  title: "벧엘의 계시",
  book_number: 13,
  page: 311,
  book_url: books["13"]
  },
  %{
  scripture: "창세기",
  chapter: 32,
  verse: "24-32",
  chapter_verse: "32:24-32",
  title: "천사와 씨름한 야곱",
  book_number: 18,
  page: 61,
  book_url: books["18"]
  },
  %{
  scripture: "창세기",
  chapter: 32,
  verse: "24-32",
  chapter_verse: "32:24-32",
  title: "천사와 야곱의 씨름",
  book_number: 21,
  page: 401,
  book_url: books["21"]
  },
  %{
  scripture: "창세기",
  chapter: 32,
  verse: "24-32",
  chapter_verse: "32:24-32",
  title: "야곱의 회개와 새 출발",
  book_number: 39,
  page: 21,
  book_url: books["39"]
  },
  %{
  scripture: "창세기",
  chapter: 33,
  verse: "1-11",
  chapter_verse: "33:1-11",
  title: "에서와 야곱의 화해",
  book_number: 8,
  page: 99,
  book_url: books["8"]
  },
  %{
  scripture: "창세기",
  chapter: 35,
  verse: "1-13",
  chapter_verse: "35:1-13",
  title: "벧엘로 올라가자",
  book_number: 16,
  page: 21,
  book_url: books["16"]
  },
  %{
  scripture: "창세기",
  chapter: 37,
  verse: "5-11",
  chapter_verse: "37:5-11",
  title: "요셉의 꿈과 그 실현",
  book_number: 28,
  page: 353,
  book_url: books["28"]
  },
  %{
  scripture: "창세기",
  chapter: 39,
  verse: "1-23",
  chapter_verse: "39:1-23",
  title: "하나님이 함께 하신 요셉",
  book_number: 21,
  page: 307,
  book_url: books["21"]
  },
  %{
  scripture: "창세기",
  chapter: 39,
  verse: "1-6",
  chapter_verse: "39:1-6",
  title: "하나님이 함께 하신 요셉",
  book_number: 33,
  page: 47,
  book_url: books["33"]
  },
  %{
  scripture: "창세기",
  chapter: 41,
  verse: "37-45",
  chapter_verse: "41:37-45",
  title: "애굽의 총리가 된 요셉",
  book_number: 34,
  page: 251,
  book_url: books["34"]
  },
  %{
  scripture: "창세기",
  chapter: 45,
  verse: "1-8",
  chapter_verse: "45:1-8",
  title: "하나님의 섭리를 믿는 생활",
  book_number: 3,
  page: 241,
  book_url: books["3"]
  },
  %{
  scripture: "창세기",
  chapter: 45,
  verse: "1-15",
  chapter_verse: "45:1-15",
  title: "요셉과 형제들의 만남",
  book_number: 12,
  page: 217,
  book_url: books["12"]
  },
  %{
  scripture: "창세기",
  chapter: 48,
  verse: "15-22",
  chapter_verse: "48:15-22",
  title: "야곱의 임종 교훈",
  book_number: 41,
  page: 393,
  book_url: books["41"]
  },
]


alias Leeyongkyu.Sermons

Enum.map(genesis_attrs, fn attrs ->
  Sermons.create_sermon(attrs)
end)
