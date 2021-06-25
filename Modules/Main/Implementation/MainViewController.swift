import DependencyInjection
import SharedUIComponents
import UIKit

protocol MainViewControllerProtocol: UIViewController {}

final class MainViewController: UIViewController, MainViewControllerProtocol {

    @Inject private var viewModel: AnyViewModel<MainViewModelInput, MainViewModelOutput>

//    private let viewModel: AnyViewModel<MainViewModelInput, MainViewModelOutput>
//
//    init<VM: ViewModel>(viewModel: VM) where VM.Input == MainViewModelInput, VM.Output == MainViewModelOutput {
//        self.viewModel = viewModel.eraseToAnyViewModel()
//
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    @available(*, unavailable)
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

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

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
