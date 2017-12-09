def time_rand
  from = Time.local(2017)
  to = Time.now
  rand(from .. to)
end

0.upto(19) do |idx|
  PurchaseHistory.seed(:id,
    {
      id: idx + 1,
      user_id: rand(1..User.all.size),
      item_id: rand(1..Item.all.size),
      status: rand(0..4),
      created_at: time_rand
    }
  )
end