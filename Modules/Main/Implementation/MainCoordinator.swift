import UIKit

final public class MainCoordinator: MainCoordinatorProtocol {

    private let navigationController: UINavigationController

    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func start() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .green
        viewController.title = "Hello, world!"
        navigationController.setViewControllers([viewController], animated: false)
    }
}
