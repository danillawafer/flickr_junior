class CreateTablePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.string :description
  		t.belongs_to :user
  		t.belongs_to :album

  		t.timestamps
  	end
  end
end
