import Foundation

public struct Stack<Element> {
    var elements = [Element]()

    // Explicitly make initializer publically accessible. 
    public init() {}

    mutating func push(_ element: Element) {
        self.elements.append(element)
    }

    mutating func pop() -> Element {
        return self.elements.removeLast()
    }
}
