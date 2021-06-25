import DependencyInjection

extension DIContainer {

    public static let detailScreen = Module {
        Shared(DetailScreenLocalDataSource() as DetailScreenLocalDataSourceProtocol)
        Shared(DetailScreenRepository() as DetailScreenRepositoryProtocol)
        Shared(DetailScreenCoordinator() as DetailScreenCoordinatorProtocol)
        New { DetailScreenViewModel().eraseToAnyViewModel() }
        New(DetailScreenViewController() as DetailScreenViewControllerProtocol)
    }
}
