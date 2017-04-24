ActiveRecord::Schema.define(version: 20170417085937) do
  create_table 'active_admin_comments', force: :cascade do |t|
     t.string   'namespace'
     t.text     'body'
     t.string   'resource_id', null: false
     t.string   'resource_type', null: false
     t.string   'author_type'
     t.integer  'author_id'
     t.datetime 'created_at', null: false
     t.datetime 'updated_at', null: false
     t.index ['author_type', 'author_id'],
        name: 'index_active_admin_comments_on_author_type_and_author_id'
     t.index ['namespace'],
        name: 'index_active_admin_comments_on_namespace'
     t.index ['resource_type', 'resource_id'],
        name: 'index_active_admin_comments_on_resource_type_and_resource_id'
  end

  create_table 'admin_users', force: :cascade do |t|
    t.string   'email', default: '', null: false
    t.string   'encrypted_password', default: '', null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip'
    t.string   'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'],
    name: 'index_admin_users_on_reset_password_token',
    unique: true
  end

  create_table 'assigns', force: :cascade do |t|
    t.integer  'user_id'
    t.integer  'project_id'
    t.string   'status', default: 'Incomplete'
    t.datetime 'created_at',                        null: false
    t.datetime 'updated_at',                        null: false
    t.index ['project_id'], name: 'index_assigns_on_project_id'
    t.index ['user_id'], name: 'index_assigns_on_user_id'
  end

  create_table 'projects', force: :cascade do |t|
    t.string   'name', null: false
    t.string   'requirements'
    t.string   'domain'
    t.string   'final_status', default: 'Incomplete'
    t.integer  'user_id'
    t.string   'avatar_file_name'
    t.string   'avatar_content_type'
    t.integer  'avatar_file_size'
    t.datetime 'avatar_updated_at'
    t.string   'document_file_name'
    t.string   'document_content_type'
    t.integer  'document_file_size'
    t.datetime 'document_updated_at'
    t.index ['user_id'], name: 'index_projects_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string   'email', default: '', null: false
    t.string   'encrypted_password', default: '', null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string   'role'
    t.string   'name'
    t.string   'provider'
    t.string   'uid'
    t.string   'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string   'unconfirmed_email'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'],
    name: 'index_users_on_reset_password_token', unique: true
  end
end
