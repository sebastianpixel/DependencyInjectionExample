import DependencyInjection
import DetailScreen
import Main

extension DIContainer: DependencyRegistering {
    public static func registerDependencies() {
        register {
            main
            detailScreen
        }
    }
}
