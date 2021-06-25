import DependencyInjection
import DetailScreen
import UIKit

final class MainCoordinator: MainCoordinatorProtocol {

    var navigationController: UINavigationController?

    func start() {
//        let viewModel = MainViewModel(coordinator: self)
//        let viewController = MainViewController(viewModel: viewModel)
        let viewController = DIContainer.resolve(MainViewControllerProtocol.self)
        navigationController?.setViewControllers([viewController], animated: false)
    }

    func showDetailPage() {
        let detailScreenCoordinator = DIContainer.resolve(DetailScreenCoordinatorProtocol.self)
        detailScreenCoordinator.navigationController = navigationController
        detailScreenCoordinator.start()
    }
}
