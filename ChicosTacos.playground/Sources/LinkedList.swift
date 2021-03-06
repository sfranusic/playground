import Foundation

public class LinkedListNode {
    public var parent: LinkedListNode?
    public var child: LinkedListNode?

    public var value: String = ""

    public init(_ value: String) {
        self.value = value
    }

    public var isRoot: Bool {
        self.parent == nil
    }

    public func insert(_ node: LinkedListNode) {
        if let childNode = self.child {
            childNode.insert(node)
        } else {
            node.parent = self
            self.child = node
        }

    }

    public func pathList(_ count: Int = 1) -> String {
        return "(\(count): \(self.value)) -> \(String(describing: self.child?.pathList(count + 1) ?? "nil"))"
    }

}

extension LinkedListNode {
    public var ancestorList: [LinkedListNode] {
        if let parent = self.parent {
            return [self] + parent.ancestorList
        } else {
            return []
        }
    }

    public func commonAncestor(nodeA: LinkedListNode, nodeB: LinkedListNode) -> Bool {

        guard nodeA !== nodeB else {
            return true
        }

        let ancestorsOfA = nodeA.ancestorList
        let ancestorsOfB = nodeB.ancestorList

        for ancestor in ancestorsOfA {
            if ancestorsOfB.contains(where: { $0 === ancestor }) {
                return true
            }

        }

        return false

    }
}
