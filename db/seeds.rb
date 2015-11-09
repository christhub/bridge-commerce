User.create!([
  {name: "christian", email: "christian.lei1@gmail.com", encrypted_password: "$2a$10$D0/svyrC5auQ6YVDb/k/o..lWA2g9ksofl1468FVuJVi4HblWhB1K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2015-11-02 05:25:29", last_sign_in_at: "2015-11-02 03:48:49", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true, latitude: nil, longitude: nil},
  {name: "christian", email: "test@test.com", encrypted_password: "$2a$10$mqODPkQl9nXm8IWOz2qjTegDSMpK/Zk3ZvT9vzPPKSKVJ/NteAgcG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-02 05:28:25", last_sign_in_at: "2015-11-02 05:28:25", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil, latitude: nil, longitude: nil}
])
Cart.create!([
  {user_id: nil},
  {user_id: nil},
  {user_id: 1},
  {user_id: 2}
])
Comment.create!([
  {content: "dsfaadf", user_id: 1, post_id: 3},
  {content: "this is a comment", user_id: 1, post_id: 6},
  {content: "hello", user_id: 2, post_id: 9}
])
Post.create!([
  {title: "Hawthorne Bridge", content: "Truss Bridge with a Vertical Lift connecting downtown with SE portland", user_id: nil, image_file_name: "Hawthorne_Bridge.jpg", image_content_type: "image/jpeg", image_file_size: 2795915, image_updated_at: "2015-10-29 23:23:58", cart_id: 3, price: 1000},
  {title: "Golden Gate Bridge", content: "A suspension bridge that facilitates getting people from SF to marin", user_id: nil, image_file_name: "sea-city-mountains-landmark.jpg", image_content_type: "image/jpeg", image_file_size: 9508880, image_updated_at: "2015-10-29 22:22:24", cart_id: 4, price: 1500},
  {title: "Tilikum Crossing", content: "This is a bike, transit and pedestrian bridge that links SE portland to SW Waterfront", user_id: nil, image_file_name: "6a00d8341c86d053ef01b8d0642d99970c-500wi.jpg", image_content_type: "image/jpeg", image_file_size: 32828, image_updated_at: "2015-10-29 23:56:25", cart_id: 4, price: 1250}
])
Post::HABTM_Tags.create!([
  {tag_id: 5, post_id: 10},
  {tag_id: 5, post_id: 11},
  {tag_id: 5, post_id: 9}
])
Tag.create!([
  {title: "bridge"}
])
Tag::HABTM_Posts.create!([
  {tag_id: 5, post_id: 10},
  {tag_id: 5, post_id: 11},
  {tag_id: 5, post_id: 9}
])
