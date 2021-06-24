import DependencyInjection
import Main

extension DIContainer: DependencyRegistering {
    public static func registerDependencies() {
        register {
            main
        }
    }
}
