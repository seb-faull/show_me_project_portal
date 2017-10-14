class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.boolean :html
      t.boolean :css
      t.boolean :javascript
      t.boolean :jquery
      t.boolean :bootstrap
      t.boolean :ruby
      t.boolean :rails
      t.boolean :sql
      t.boolean :php
      t.boolean :python
      t.boolean :csharp
      t.boolean :java

      t.timestamps
    end
  end
end
