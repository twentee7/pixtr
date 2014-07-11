class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content
    	t.timestamps
    	t.belongs_to :image, index: true
    	t.belongs_to :user
    end
  end
end
