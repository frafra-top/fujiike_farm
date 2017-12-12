User.seed(:id,
  {
    id: 1,
    email: "fujike_farm@mail.com",
    password: "password",
    name: "admin",
    contact_name: "ふじいけ",
    contact_address: "群馬県",
    contact_postal_code: "100-1000",
    phone: "08011112222",
    admin: true
  },

  {
    id: 2,
    email: "test1@mail.com",
    password: "password",
    name: "test1",
    contact_name: "テストさん壱号",
    contact_address: "北海道",
    contact_postal_code: "300-3000",
    phone: "08033334444",
    admin: false
  },

  {
    id: 3,
    email: "test2@mail.com",
    password: "password",
    name: "test2",
    contact_name: "テストさん弐号",
    contact_address: "沖縄",
    contact_postal_code: "500-5000",
    phone: "08055556666",
    admin: false
  }
)