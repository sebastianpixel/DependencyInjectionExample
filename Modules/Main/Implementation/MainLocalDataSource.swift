protocol MainLocalDataSourceProtocol {
    var buttonTitle: String { get }
}

final class MainLocalDataSource: MainLocalDataSourceProtocol {
    let buttonTitle = "Go to detail page"
}
