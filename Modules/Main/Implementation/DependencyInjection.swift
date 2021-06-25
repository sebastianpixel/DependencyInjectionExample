import DependencyInjection

extension DIContainer {

    public static let main = Module {

        Shared(MainCoordinator() as MainCoordinatorProtocol)
        New { MainViewModel(coordinator: $0()).eraseToAnyViewModel() }

        New(MainViewController() as MainViewControllerProtocol)
    }
}
