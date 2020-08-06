import Foundation

public struct Stack<Element> {
    var elements = [Element]()

    // Explicitly make initializer publically accessible. 
    public init() {}

    public mutating func push(_ element: Element) {
        self.elements.append(element)
    }

    public mutating func pop() -> Element {
        return self.elements.removeLast()
    }

    public func peek() -> Element? {
        return elements.count > 0 ? elements[elements.count - 1] : nil
    }
}
