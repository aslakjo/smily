class CreateSmilies < ActiveRecord::Migration
  def self.up
    create_table :smilies do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :smilies
  end
end
