@testable import DetailScreen

class DetailScreenRepositoryMock: DetailScreenRepositoryProtocol {
    let buttonTitle: String

    init(buttonTitle: String) {
        self.buttonTitle = buttonTitle
    }
}
