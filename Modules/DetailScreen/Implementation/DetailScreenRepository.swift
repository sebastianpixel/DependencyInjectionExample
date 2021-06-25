import DependencyInjection

protocol DetailScreenRepositoryProtocol {
    var buttonTitle: String { get }
}

final class DetailScreenRepository: DetailScreenRepositoryProtocol {
    @Inject private var localDataSource: DetailScreenLocalDataSourceProtocol

    var buttonTitle: String {
        localDataSource.buttonTitle
    }
}
