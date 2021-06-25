import Combine
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

    let output = MainViewModelOutput(buttonTitle: "next!")

    private unowned let coordinator: MainCoordinatorProtocol

    init(coordinator: MainCoordinatorProtocol) {
        self.coordinator = coordinator
    }

    func trigger(_ input: MainViewModelInput) {
        switch input {
        case .buttonTapped:
            coordinator.showDetailPage()
        }
    }
}
