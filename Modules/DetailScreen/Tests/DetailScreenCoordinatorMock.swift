@testable import DetailScreen

class DetailScreenCoordinatorMock: DetailScreenCoordinatorProtocol {

    var invocations = [String]()

    var navigationController: UINavigationController?

    func start() {
        log()
    }

    func end() {
        log()
    }

    private func log(selector: String = #function) {
        invocations.append(selector)
    }
}
