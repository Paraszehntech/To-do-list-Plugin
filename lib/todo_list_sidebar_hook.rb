
class TodoListSidebarHook < Redmine::Hook::ViewListener
    render_on :view_issues_sidebar_issues_bottom, partial: 'todos/todo_list'
end
