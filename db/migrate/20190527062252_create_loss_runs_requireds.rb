class CreateLossRunsRequireds < ActiveRecord::Migration[5.2]
  def change
    create_table :loss_runs_requireds do |t|
      t.string :status

      t.timestamps
    end
  end
end
