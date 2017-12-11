
Image.seed(:id,
{
  id: 1,
  item_id: 1,
  file: Rails.root.join("db/fixtures/images/milk-750.jpg").open
  },

{
  id: 2,
  item_id: 2,
  file: Rails.root.join("db/fixtures/images/milk-200.jpg").open
  },

{
  id: 3,
  item_id: 3,
  file: Rails.root.join("db/fixtures/images/yoghurt.jpg").open
  },

{
  id: 4,
  item_id: 4,
  file: Rails.root.join("db/fixtures/images/butter.jpg").open
  }
)
