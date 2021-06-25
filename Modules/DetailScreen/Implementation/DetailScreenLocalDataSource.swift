protocol DetailScreenLocalDataSourceProtocol {
    var buttonTitle: String { get }
}

final class DetailScreenLocalDataSource: DetailScreenLocalDataSourceProtocol {
    let buttonTitle = "Go back"
}
