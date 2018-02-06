class Resolvers::TaskSearch < GraphQL::Function
  argument :limit, types.Int, default_value: 25
  argument :page, types.Int, default_value: 1

  type !types[Types::TaskType]

  def call(obj, args, ctx)
    op = ::Tasks::Search.new
    op.execute(args.to_h.deep_symbolize_keys)
  end
end
