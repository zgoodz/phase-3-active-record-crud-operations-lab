class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |c|
      c.string :title
      c.integer :release_date
      c.string :director
      c.string :lead
      c.boolean :in_theaters
    end
  end
end
