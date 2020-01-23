class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string        :title
      t.string        :bio
      t.integer       :age
      t.string        :gender
      t.string        :sexual_orientation
      t.string        :religion
      t.string        :audio_url
      t.string        :image_url
      
      t.st_point      :location, geographic: true
      t.date          :published_date
      t.text          :transcript
      t.integer       :user_id
      t.boolean       :published
      t.text          :list_of_tags
      t.timestamps
    end
  end
end
