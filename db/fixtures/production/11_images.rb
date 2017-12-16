
Image.seed(:id,
{
  id: 1,
  item_id: 1,
  file: Rails.root.join("db/fixtures/images/牛乳_720ml_1_定番のシンプルな味わいです.jpg").open
  },

{
  id: 2,
  item_id: 2,
  file: Rails.root.join("db/fixtures/images/牛乳_共通_2_毎朝の食卓にいかがでしょうか.jpg").open
  },

{
  id: 3,
  item_id: 3,
  file: Rails.root.join("db/fixtures/images/ヨーグルト_1_シンプルながらも深い味わいです.jpg").open
  },

{
  id: 4,
  item_id: 4,
  file: Rails.root.join("db/fixtures/images/バター_1_特製パッケージに入れて配送しています.jpg").open
  }
)
