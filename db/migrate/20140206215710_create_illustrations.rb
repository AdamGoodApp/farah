class CreateIllustrations < ActiveRecord::Migration
  def change
    create_table :illustrations do |t|
      t.string :illustration_image

      t.timestamps
    end
  end
end
