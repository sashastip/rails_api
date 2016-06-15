class AddFatherToSons < ActiveRecord::Migration
  def change
    add_reference :sons, :father, index: true, foreign_key: true
  end
end
