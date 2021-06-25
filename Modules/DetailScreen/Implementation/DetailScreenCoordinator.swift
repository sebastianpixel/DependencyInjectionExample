import DependencyInjection
import UIKit

final class DetailScreenCoordinator: DetailScreenCoordinatorProtocol {

    var navigationController: UINavigationController?

    func start() {
        let viewController = DIContainer.resolve(DetailScreenViewControllerProtocol.self)
        navigationController?.pushViewController(viewController, animated: true)
    }

    func end() {
        navigationController?.popViewController(animated: true)
    }
}
