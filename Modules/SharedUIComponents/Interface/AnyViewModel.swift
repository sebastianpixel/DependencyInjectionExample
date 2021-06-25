import Combine

public class AnyViewModel<Input, Output>: ViewModel {
    private let wrappedTrigger: (Input) -> Void
    public let output: Output

    public init<V: ViewModel>(_ viewModel: V) where V.Input == Input, V.Output == Output {
        output = viewModel.output
        wrappedTrigger = viewModel.trigger
    }

    public func trigger(_ input: Input) {
        wrappedTrigger(input)
    }
}
