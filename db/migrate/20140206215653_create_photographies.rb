class CreatePhotographies < ActiveRecord::Migration
  def change
    create_table :photographies do |t|
      t.string :photo_image

      t.timestamps
    end
  end
end
