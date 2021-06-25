import DependencyInjection
import SharedUIComponents

enum MainViewModelInput {
    case buttonTapped
}

final class MainViewModelOutput {
    var buttonTitle: String

    init(buttonTitle: String) {
        self.buttonTitle = buttonTitle
    }
}

protocol MainViewModelProtocol: ViewModel where Input == MainViewModelInput, Output == MainViewModelOutput {}

final class MainViewModel: MainViewModelProtocol {

    @Inject private var repository: MainRepositoryProtocol
    @Inject private var coordinator: MainCoordinatorProtocol

    var output: MainViewModelOutput {
        .init(buttonTitle: repository.buttonTitle)
    }

    func trigger(_ input: MainViewModelInput) {
        switch input {
        case .buttonTapped:
            coordinator.showDetailPage()
        }
    }
}
