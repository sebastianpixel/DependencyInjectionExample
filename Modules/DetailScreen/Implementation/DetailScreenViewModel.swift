import DependencyInjection
import SharedUIComponents

enum DetailScreenViewModelInput {
    case buttonTapped
}

final class DetailScreenViewModelOutput {
    var buttonTitle: String

    init(buttonTitle: String) {
        self.buttonTitle = buttonTitle
    }
}

protocol DetailScreenViewModelProtocol: ViewModel where Input == DetailScreenViewModelInput, Output == DetailScreenViewModelOutput {}

final class DetailScreenViewModel: DetailScreenViewModelProtocol {

    @Inject private var repository: DetailScreenRepositoryProtocol
    @Inject private var coordinator: DetailScreenCoordinatorProtocol

    var output: DetailScreenViewModelOutput {
        .init(buttonTitle: repository.buttonTitle)
    }

    func trigger(_ input: DetailScreenViewModelInput) {
        switch input {
        case .buttonTapped:
            coordinator.end()
        }
    }
}
