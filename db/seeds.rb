Photo.create!([
  {image_file_name: "tumblr_m4jlgfCtI21qm4rc3.jpg", image_content_type: "image/jpeg", image_file_size: 57282, image_updated_at: "2015-11-10 07:53:49", post_id: 9},
  {image_file_name: "tumblr_nle8u30olk1ts00t9o1_500.jpg", image_content_type: "image/jpeg", image_file_size: 108069, image_updated_at: "2015-11-10 07:54:30", post_id: 10},
  {image_file_name: "18737778865_3e2662f298.jpg", image_content_type: "image/jpeg", image_file_size: 145451, image_updated_at: "2015-11-10 19:31:40", post_id: 11}
])
Post.create!([
  {title: "Tilikum Crossing", content: "This is a bike, transit and pedestrian bridge that links SE portland to SW Waterfront", user_id: nil, cart_id: 4, price: 1250, latitude: 45.5041957, longitude: -122.6682026, address: "Tilikum Crossing, portland"},
  {title: "Hawthorne Bridge", content: "Truss Bridge with a Vertical Lift connecting downtown with SE portland", user_id: nil, cart_id: 3, price: 1000, latitude: 45.5132416, longitude: -122.6709838, address: "Hawthorne Bridge, portland"},
  {title: "Golden Gate Bridge", content: "A suspension bridge that facilitates getting people from SF to marin", user_id: nil, cart_id: 5, price: 1500, latitude: 37.8199286, longitude: -122.4782551, address: "Golden Gate bridge, SF"}
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
