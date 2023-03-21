class TodoSerializer < ActiveModel::TodoSerializer
    attributes :id, :title, :description, :created_at

    #custom serializer
    def id_squared
        index = self.object.id.to_i
        index * index
    end
end