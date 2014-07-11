class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
    	t.string :name
    	t.text :description
    	t.timestamps
    end
    # add_index :images, :gallery_id
  end
end
