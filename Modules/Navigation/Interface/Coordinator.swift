import Foundation

public protocol Coordinator: AnyObject {
    func start()
    func retain(_ child: Coordinator)
    func release(_ child: Coordinator)
}

public extension Coordinator {

    func retain(_ child: Coordinator) {
        children.append(child)
    }

    func release(_ child: Coordinator) {
        if let index = children.firstIndex(where: { $0 === child }) {
            children.remove(at: index)
        }
    }

    private var children: [Coordinator] {
        get { objc_getAssociatedObject(self, &associationKey) as? [Coordinator] ?? [] }
        set { objc_setAssociatedObject(self, UnsafeRawPointer(&associationKey), newValue, .OBJC_ASSOCIATION_RETAIN) }
    }
}

private var associationKey: ()?
