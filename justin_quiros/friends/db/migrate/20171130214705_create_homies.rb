class CreateHomies < ActiveRecord::Migration
  def change
    create_table :homies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :receiver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
