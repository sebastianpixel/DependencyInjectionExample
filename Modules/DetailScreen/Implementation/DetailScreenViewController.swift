import DependencyInjection
import SharedUIComponents
import UIKit

protocol DetailScreenViewControllerProtocol: UIViewController {}

final class DetailScreenViewController: UIViewController, DetailScreenViewControllerProtocol {

    @Inject private var viewModel: AnyViewModel<DetailScreenViewModelInput, DetailScreenViewModelOutput>

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
    }

    private func setUpView() {
        let button = UIButton(frame: .zero, primaryAction: .init(handler: { [weak self] _ in
            self?.viewModel.trigger(.buttonTapped)
        }))
        button.setTitle(viewModel.output.buttonTitle, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)

        view.backgroundColor = .green

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
