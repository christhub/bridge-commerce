class CreateDb < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :string

      t.timestamp
    end

    create_table :tags do |t|
      t.column :title, :string
    end
  end
end
