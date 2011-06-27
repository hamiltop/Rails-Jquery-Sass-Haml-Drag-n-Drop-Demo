class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :color

      t.timestamps
    end
  end
end
