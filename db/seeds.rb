# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

content_providers = ContentProvider.create([
  {name: "Twentieth Century Fox", concurrent_stream_limit: 500},
  {name: "Paramount Pictures", concurrent_stream_limit: 350},
  {name: "Warner Bros", concurrent_stream_limit: 400}
])

credit_cards = CreditCard.create([
  {card_number: "111111111111", subscriber_id: 1},
  {card_number: "222222222222", subscriber_id: 2},
  {card_number: "333333333333", subscriber_id: 3},
  {card_number: "444444444444", subscriber_id: 4}
])

invoices = Invoice.create([
  {balance: 100, subscriber_id: 1, due_date: Time.now},
  {balance: 0, subscriber_id: 2, due_date: Time.now},
  {balance: 50, subscriber_id: 3, due_date: Time.now},
  {balance: 0, subscriber_id: 4, due_date: Time.now},
  {balance: 150, subscriber_id: 5, due_date: Time.now}
])

streams = Stream.create([
  {subscriber_id: 1, video_id: 1},
  {subscriber_id: 4, video_id: 6},
  {subscriber_id: 1, video_id: 5},
  {subscriber_id: 3, video_id: 7},
  {subscriber_id: 5, video_id: 4},
  {subscriber_id: 2, video_id: 3},
  {subscriber_id: 5, video_id: 2},
  {subscriber_id: 4, video_id: 2},
  {subscriber_id: 3, video_id: 6},
  {subscriber_id: 2, video_id: 1},
  {subscriber_id: 5, video_id: 3},
  {subscriber_id: 3, video_id: 1}
])

subscribers = Subscriber.create([
  {name: "Tony Danza", available_stream_time: 75},
  {name: "Tiny Tim", available_stream_time: 33},
  {name: "Edmond Dantes", available_stream_time: 12},
  {name: "Napoleon Bonaparte", available_stream_time: 0},
  {name: "Johnny Bach", available_stream_time: 0}
])

subscription_tiers = SubscriptionTier.create([
  {monthly_streaming_limit: 300, name: "Bronze", price: 0},
  {monthly_streaming_limit: 1000, name: "Silver", price: 25},
  {monthly_streaming_limit: 10000, name: "Gold", price: 50}
])

subscriptions = Subscription.create([
  {payment_method: "Card"},
  {payment_method: "Card"},
  {payment_method: "Check"},
  {payment_method: "Card"},
  {payment_method: "Check"}
])

videos = Video.create([
  {title: "Avatar", length: 162, content_provider_id: 1},
  {title: "Star Wars: Episode I - The Phantom Menace", length: 136, content_provider_id: 1},
  {title: "Titanic", length: 194, content_provider_id: 2},
  {title: "Forrest Gump", length: 142, content_provider_id: 2},
  {title: "Star Trek", length: 127, content_provider_id: 2},
  {title: "The Dark Knight", length: 152, content_provider_id: 3},
  {title: "Inception", length: 148, content_provider_id: 3}
])
