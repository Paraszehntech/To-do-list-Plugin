
require_dependency File.expand_path('../lib/todo_list_sidebar_hook', __FILE__)

Redmine::Plugin.register :todo_list do
  name 'Todo List plugin'
  author 'Paras'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  project_module :todo_list do
    permission :view_todo, { todos: [:index] }
    permission :add_todo, { todos: [:new, :create] }
    permission :edit_todo, { todos: [:edit, :update] }
    permission :delete_todo, { todos: [:destroy] }
  end
  menu :application_menu, :todo_list, { controller: 'todos', action: 'index' }, caption: 'Todo List'

end
