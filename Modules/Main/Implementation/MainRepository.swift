import DependencyInjection

protocol MainRepositoryProtocol {
    var buttonTitle: String { get }
}

final class MainRepository: MainRepositoryProtocol {
    @Inject private var localDataSource: MainLocalDataSourceProtocol

    var buttonTitle: String {
        localDataSource.buttonTitle
    }
}
