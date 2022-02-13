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

attrs = [
  %{
    scripture: "바른신학",
    chapter: 1,
    verse: "1",
    chapter_verse: "1",
    title: "바른 신학",
    book_number: 32,
    page: 18,
    book_url: books["32"]
  },
  %{
    scripture: "성경신학",
    chapter: 1,
    verse: "1",
    chapter_verse: "1",
    title: "성경 신학",
    book_number: 32,
    page: 222,
    book_url: books["32"]
  },
  %{
    scripture: "사도신경 강해",
    chapter: 1,
    verse: "1",
    chapter_verse: "1",
    title: "사도신경 강해",
    book_number: 32,
    page: 284,
    book_url: books["32"]
  },
  %{
    scripture: "칼빈주의 5대 교리",
    chapter: 1,
    verse: "1",
    chapter_verse: "1",
    title: "칼빈주의 5대 교리",
    book_number: 32,
    page: 408,
    book_url: books["32"]
  },
]

alias Leeyongkyu.Sermons

Enum.map(attrs, fn attrs ->
  Sermons.create_sermon(attrs)
end)
