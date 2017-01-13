class CreateDrawings < ActiveRecord::Migration[5.0]
  def change
    create_table :drawings do |t|
      t.string :html, null: false
      t.string :santized_html, null: false
      t.timestamps
    end
  end
end
