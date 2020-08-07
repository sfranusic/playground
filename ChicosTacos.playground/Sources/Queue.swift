import Foundation

public struct Queue<Element> {

    private(set) var elements = [Element]()

    var isReferenceType: Bool {
        type(of: Element.self) is AnyClass
    }

    public init() { }

    public mutating func add(_ element: Element) {
        self.elements = [element] + self.elements
    }

    public mutating func remove() -> Element? {
        return self.elements.count > 0 ? self.elements.removeLast() : nil
    }
}
