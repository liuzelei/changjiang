class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
      t.integer :car_id
      t.integer :image_id
      t.string :title

      t.timestamps
    end
  end
end
