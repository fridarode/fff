class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :strain
      t.string :comment
      t.timestamps
    end
  end
end
