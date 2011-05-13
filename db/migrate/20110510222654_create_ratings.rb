class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.string :user
      t.integer :value
      t.references :mp3

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
