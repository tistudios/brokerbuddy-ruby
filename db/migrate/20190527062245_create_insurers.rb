class CreateInsurers < ActiveRecord::Migration[5.2]
  def change
    create_table :insurers do |t|
      t.string :company

      t.timestamps
    end
  end
end
