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
