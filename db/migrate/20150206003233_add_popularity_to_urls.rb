class AddPopularityToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :popularity, :integer, :default => 0
  end
end
