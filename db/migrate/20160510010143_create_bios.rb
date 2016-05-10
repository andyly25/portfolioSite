class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
