import Foundation

public struct Queue<Element> {

    private(set) var elements = [Element]()

    public init() { }

    public mutating func add(_ element: Element) {
        self.elements = [element] + self.elements
    }

    public mutating func remove() -> Element? {
        return self.elements.count > 0 ? self.elements.removeLast() : nil
    }
}
