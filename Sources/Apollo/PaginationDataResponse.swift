#if !COCOAPODS
import ApolloAPI
#endif

/// The response object of a `GraphQLPaginatedQueryWatcher`
public struct PaginationDataResponse<Query: GraphQLQuery, T> {
  /// All responses, in page-order
  public let allResponses: [T]

  /// The response which triggered the watcher to update
  public let mostRecent: T

  /// The source of that most recent trigger
  public let source: GraphQLResult<Query.Data>.Source

  /// Designated initializer
  /// - Parameters:
  ///   - allResponses: All responses, in page-order
  ///   - mostRecent: The response which triggered the watcher to update
  ///   - source: The source of that most recent trigger
  public init(allResponses: [T], mostRecent: T, source: GraphQLResult<Query.Data>.Source) {
    self.allResponses = allResponses
    self.mostRecent = mostRecent
    self.source = source
  }
}
