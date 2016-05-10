class AddAttachmentImageToBios < ActiveRecord::Migration
  def self.up
    change_table :bios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bios, :image
  end
end
