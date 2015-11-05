User.create!([
  {name: "Admin", email: "admin@admin.com", encrypted_password: "$2a$10$toRiEIAluhIJ1ufmvVYsmu2tqVnQ7DPAetnhWorvgFVvn6C8t6WB6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-05 17:27:49", last_sign_in_at: "2015-11-05 17:27:49", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true, latitude: nil, longitude: nil}
])
Cart.create!([
  {user_id: 1}
])
Post.create!([
  {title: "Tower Bridge", content: "Bridge crossing River Thames to connect London to Southbank, not the London bridge", user_id: nil, image_file_name: "3957289179_037a33fa3c.jpg", image_content_type: "image/jpeg", image_file_size: 251781, image_updated_at: "2015-11-05 19:28:16", cart_id: 1, price: 1400, latitude: 51.5054564, longitude: -0.0753565, address: "Tower Bridge London UK"},
  {title: "Hawthorne Bridge", content: "Bridge connecting SE Portland to Downtown across the Willamette River", user_id: nil, image_file_name: "tumblr_nle8u30olk1ts00t9o1_500.jpg", image_content_type: "image/jpeg", image_file_size: 108069, image_updated_at: "2015-11-05 19:28:27", cart_id: 1, price: 1044, latitude: 45.5132416, longitude: -122.6709838, address: "hawthorne bridge, Portland, OR 97214"},
  {title: "Gateshead Millennium Bridge", content: "This is a tilt bridge that looks similar to a winking eye when you look at it open so boats can pass undeneath", user_id: nil, image_file_name: "10845537694_e76ea27e6a.jpg", image_content_type: "image/jpeg", image_file_size: 174912, image_updated_at: "2015-11-05 19:28:37", cart_id: nil, price: 2000, latitude: 54.9697667, longitude: -1.5991776, address: "Gateshead Millennium Bridge "},
  {title: "Golden Gate Bridge", content: "Suspension bridge connecting the Presidio of San Francisco to Marin County over the golden gate", user_id: nil, image_file_name: "51mOtleqFOL.jpg", image_content_type: "image/jpeg", image_file_size: 54102, image_updated_at: "2015-11-05 19:28:46", cart_id: 1, price: 124, latitude: 37.8199286, longitude: -122.4782551, address: "golden gate bridge, san francisco, ca"},
  {title: "Brooklyn Bridge", content: "Connects Brooklyn to Lower Manhattan, a historic suspension bridge", user_id: nil, image_file_name: "10468.jpg", image_content_type: "image/jpeg", image_file_size: 49288, image_updated_at: "2015-11-05 20:13:45", cart_id: nil, price: 2500, latitude: 40.7060855, longitude: -73.9968643, address: "brooklyn bridge, new york, ny"}
])
