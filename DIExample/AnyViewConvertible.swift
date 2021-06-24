import SwiftUI

protocol AnyViewConvertible {
    var asAnyView: AnyView { get }
}

extension AnyViewConvertible where Self: View {
    var asAnyView: AnyView {
        .init(self)
    }
}
