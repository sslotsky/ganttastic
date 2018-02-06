Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allTasks, function: Resolvers::TaskSearch.new
end
