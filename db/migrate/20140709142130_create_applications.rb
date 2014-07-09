class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :answer1
      t.text :answer2
      t.text :answer3
      t.text :answer4
      t.timestamps
    end
  end
end

