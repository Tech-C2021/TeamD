class CreateZer0s < ActiveRecord::Migration[7.0]
  def change
    create_table :zer0s do |t|
      t.references :title, null: false, foreign_key: true

      t.timestamps
    end
  end
end
