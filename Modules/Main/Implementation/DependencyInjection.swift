import DependencyInjection

extension DIContainer {

    public static let main = Module {
        Shared(MainLocalDataSource() as MainLocalDataSourceProtocol)

        Shared(MainRepository() as MainRepositoryProtocol)

        Shared(MainCoordinator() as MainCoordinatorProtocol)
//        New { MainViewModel(coordinator: $0()).eraseToAnyViewModel() }
        New { MainViewModel().eraseToAnyViewModel() }

        New(MainViewController() as MainViewControllerProtocol)
    }
}
