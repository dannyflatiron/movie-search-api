class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :upvote
      t.string :downvote

      t.timestamps
    end
  end
end
