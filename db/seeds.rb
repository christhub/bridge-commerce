User.create!([
  {name: "christian", email: "christian.lei1@gmail.com", encrypted_password: "$2a$10$7u84gHjOgNlm6EUCKDcU6eVgC3ji.SCTgqgaJa0B335kzJcnXJnWm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-04 19:22:52", last_sign_in_at: "2015-11-04 19:22:52", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true, latitude: nil, longitude: nil}
])
Cart.create!([
  {user_id: 1}
])
Post.create!([
  {title: "golden gate bridge", content: "ds;afkld", user_id: nil, image_file_name: "GoldenGateBridge-001.jpg", image_content_type: "image/jpeg", image_file_size: 3108075, image_updated_at: "2015-11-04 22:33:23", cart_id: 1, price: 124, latitude: 37.8199286, longitude: -122.4782551, address: "golden gate bridge, san francisco, ca"},
  {title: "Hawthorne Bridge", content: "Bridge", user_id: nil, image_file_name: "800px-Hawthorne_Bridge_(Portland__Oregon)_from_southwest__2012.jpg", image_content_type: "image/jpeg", image_file_size: 89984, image_updated_at: "2015-11-04 19:46:06", cart_id: 1, price: 1044, latitude: 45.5132416, longitude: -122.6709838, address: "hawthorne bridge, Portland, OR 97214"}
])
