import Cocoa

protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set}
    var realEstateAgent: String { get set }
    
    func summary(rooms: Int, cost: Int, realEstateAgent: String)
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var realEstateAgent: String
    
    func summary(rooms: Int, cost: Int, realEstateAgent: String) {
        print("""
            There are \(rooms) rooms in the house. 
            The price is \(cost) dollars.
            The real estate agent is \(realEstateAgent).
            """)
    }
}

let myHouse = House(rooms: 3, cost: 50_000, realEstateAgent: "John Doe")
myHouse.summary(rooms: myHouse.rooms, cost: myHouse.cost, realEstateAgent: myHouse.realEstateAgent)

struct Office: Building {
    var rooms: Int
    var cost: Int
    var realEstateAgent: String
    
    func summary(rooms: Int, cost: Int, realEstateAgent: String){
        print("""
            There are \(rooms) rooms inside the office. 
            The price is \(cost).
            The real estate agent is \(realEstateAgent).
            """)
    }
}

let myOffice = Office(rooms: 10, cost: 30_000, realEstateAgent: "Max Y")
myOffice.summary(rooms: myOffice.rooms, cost: myOffice.cost, realEstateAgent: myOffice.realEstateAgent)
