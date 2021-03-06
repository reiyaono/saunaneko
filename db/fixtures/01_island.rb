Island.seed(:id,
  { name: '田代島', is_near_from_city: false, prefecture: Prefecture.find(4) },
  { name: '佐柳島', is_near_from_city: false, prefecture: Prefecture.find(37) },
  { name: '男木島', is_near_from_city: true, prefecture: Prefecture.find(37) },
  { name: '高見島', is_near_from_city: false, prefecture: Prefecture.find(37) },
  { name: '真鍋島', is_near_from_city: false, prefecture: Prefecture.find(33) },
  { name: '青島', is_near_from_city: false, prefecture: Prefecture.find(38) },
  { name: '睦月島', is_near_from_city: false, prefecture: Prefecture.find(38) },
  { name: '祝島', is_near_from_city: false, prefecture: Prefecture.find(35) },
  { name: '相島', is_near_from_city: false, prefecture: Prefecture.find(40) },
  { name: '藍島', is_near_from_city: false, prefecture: Prefecture.find(40) },
  { name: '馬島', is_near_from_city: false, prefecture: Prefecture.find(40) },
  { name: '湯島', is_near_from_city: false, prefecture: Prefecture.find(43) },
  { name: '池島', is_near_from_city: false, prefecture: Prefecture.find(42) },
  { name: '久高島', is_near_from_city: false, prefecture: Prefecture.find(47) },
  { name: '竹富島', is_near_from_city: true, prefecture: Prefecture.find(47) },
  { name: '渡嘉敷島', is_near_from_city: true, prefecture: Prefecture.find(47) },
  { name: '城ヶ島', is_near_from_city: true, prefecture: Prefecture.find(13) },
  { name: '江ノ島', is_near_from_city: true, prefecture: Prefecture.find(14) }
)