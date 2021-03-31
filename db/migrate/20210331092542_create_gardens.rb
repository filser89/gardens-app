class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :city
      t.string :bio
      t.string :image_url

      t.timestamps
    end
  end
end
