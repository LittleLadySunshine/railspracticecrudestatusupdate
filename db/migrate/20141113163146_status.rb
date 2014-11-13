class Status < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :status
      t.string :user
      t.integer :number_of_likes
    end
  end
end
