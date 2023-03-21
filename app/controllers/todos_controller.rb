class TodosController < ApplicationController
    def get_todos
        render json: Todo.all
    end

    def create
        # title = todo_params[:title]
        # description = todo_params[:description]
        # priority = todo_params[:priority]

        # #add todo in DB
        # todo = Todo.create(title: title, description: description, priority: priority)

        todo = Todo.create(todo_params)
        if todo.valid?
        render json: todo, serializer: TodoSerializer
        else
            render json: todo.errors
        end
    end

    def update
        id = params[:id]
        todo = Todo.find_by(id.to_i)
        todo.update(todo_params)
        render json: {message: "Updated Todo Succcessfully"}
    end

    private
    def todo_params
        params.permit(:title, :description, :priority, :status)
    end
end
