/* @testable */ import DependencyInjection
@testable import DetailScreen
import XCTest

final class DetailScreenViewModelTests: XCTestCase {

//    override func setUp() {
//        super.setUp()
//
//        DIContainer.shared.cleanUpForTesting()
//    }

    func testInput_triggerButton_endIsCalledOnCoordinator() {
        // Given
        let coordinator = DetailScreenCoordinatorMock()
        DIContainer.register {
            New(coordinator as DetailScreenCoordinatorProtocol)
            New(DetailScreenRepositoryMock(buttonTitle: "") as DetailScreenRepositoryProtocol)
        }
        let viewModel = DetailScreenViewModel()

        // When
        viewModel.trigger(.buttonTapped)

        // Then
        XCTAssertEqual(
            coordinator.invocations,
            [
                "end()"
            ]
        )
    }

    func testOutput_uniqueString_returnsInput() {
        // Given
        let expected = UUID().uuidString
        let repository = DetailScreenRepositoryMock(buttonTitle: expected)
        DIContainer.register {
            New(repository as DetailScreenRepositoryProtocol)
            New(DetailScreenCoordinatorMock() as DetailScreenCoordinatorProtocol)
        }
        let viewModel = DetailScreenViewModel()

        // When
        let actual = viewModel.output.buttonTitle

        // Then
        XCTAssertEqual(actual, expected)
    }
}
