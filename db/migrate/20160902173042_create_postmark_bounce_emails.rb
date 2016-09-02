class CreatePostmarkBounceEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :postmark_bounce_emails do |t|
      t.boolean :hidden, default: false
      t.integer :bounce_id
      t.string :kind
      t.string :name
      t.string :message_id
      t.text :description
      t.string :details
      t.string :email
      t.datetime :bounced_at
      t.string :subject

      t.timestamps
    end
  end
end
