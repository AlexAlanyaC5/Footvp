class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :is_captain, {default:false}
      t.integer :team_id
      t.integer :age
      t.string :gender
      t.string :password_digest
    end
  end
end
