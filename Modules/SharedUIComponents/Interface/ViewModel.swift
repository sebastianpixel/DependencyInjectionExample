import Combine

public protocol ViewModel {
    associatedtype Input
    associatedtype Output
    var output: Output { get }
    func trigger(_ input: Input)

    func eraseToAnyViewModel() -> AnyViewModel<Input, Output>
}

extension ViewModel where Self: ObservableObject, Output: ObservableObject {
    var objectWillChange: Output.ObjectWillChangePublisher {
        output.objectWillChange
    }
}

public extension ViewModel where Input == Never {
    func trigger(_ input: Input) {}
}

public extension ViewModel {
    func eraseToAnyViewModel() -> AnyViewModel<Input, Output> {
        AnyViewModel(self)
    }
}
