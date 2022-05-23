module Resolvers
  class BaseResolver < GraphQL::Schema::Resolver
    include Rails.application.routes.url_helpers
  end
end
