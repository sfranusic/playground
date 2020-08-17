import Foundation
import UIKit



public struct Player: Codable {
    public var name: String
    public var score: Int
    public var color: String
}

let jsonPayload = "{\"name\":\"Sam\", \"score\":0, \"color\":\"Indigo\"}"
let jsonData = jsonPayload.data(using: .utf8)!

let player = try! JSONDecoder().decode(Player.self, from: jsonData)

//print(player)
