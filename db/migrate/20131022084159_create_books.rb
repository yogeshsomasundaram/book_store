class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
	t.string :book_name
    t.integer:year
    t.string :language
    t.string :author
    t.string :publication
	t.timestamps
    end
  end
end
