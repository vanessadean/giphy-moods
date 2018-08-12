class CreateMoods < ActiveRecord::Migration[5.2]
  def up
    create_table :moods do |t|
      t.string  :mood
      t.string  :image_url
    end
  end

  def down
    drop_table :moods
  end
end
