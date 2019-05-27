class CreateUnderwriters < ActiveRecord::Migration[5.2]
  def change
    create_table :underwriters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.references :insurer, foreign_key: true

      t.timestamps
    end
  end
end
