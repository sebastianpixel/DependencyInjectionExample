import DependencyInjection

extension DIContainer {
    public static let main = Module {
        Shared(MainCoordinator.self as MainCoordinatorProtocol.Type)
    }
}
