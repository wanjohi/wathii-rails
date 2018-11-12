module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :interest, !types[Types::InterestType] do
      resolve -> (obj, args, ctx) {
        Interest.all
      }
    end
  end
end
