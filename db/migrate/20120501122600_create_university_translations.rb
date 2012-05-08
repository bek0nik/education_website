class CreateUniversityTranslations < ActiveRecord::Migration
  def up
    University.create_translation_table!({
      name: :string,
      description: :text
    }, {
      migrate_data: true
    })
  end

  def down
    University.drop_translation_table! migrate_data: true
  end
end
