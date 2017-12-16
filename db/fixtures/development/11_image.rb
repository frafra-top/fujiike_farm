
Image.seed(:id,
{
	id: 1,
  item_id: 1,
  file: Rails.root.join("db/fixtures/images/milk_720.jpg").open
	},

{
	id: 2,
  item_id: 2,
  file: Rails.root.join("db/fixtures/images/milk_200.jpg").open
	},

{
	id: 3,
  item_id: 3,
  file: Rails.root.join("db/fixtures/images/yoguht.jpg").open
	},

{
	id: 4,
  item_id: 4,
  file: Rails.root.join("db/fixtures/images/butter.jpg").open
	}
)
