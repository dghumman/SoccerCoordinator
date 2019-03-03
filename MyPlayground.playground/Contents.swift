let player1: [String: Any] = ["Name": "Joe Smith", "Height": 42.0, "hasExperience": true, "parents": "Jim and Jan Smith"]
let player2: [String: Any] = ["Name": "Jill Tanner", "Height": 36.0, "hasExperience": true, "parents": "Clara Tanner"]
let player3: [String: Any] = ["Name": "Bill Bon", "Height": 43.0, "hasExperience": true, "parents": "Sara and Jenny Bon"]
let player4: [String: Any] = ["Name": "Eva Gordon", "Height": 45.0, "hasExperience": false, "parents": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["Name": "Matt Gill", "Height": 40.0, "hasExperience": false, "parents": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["Name": "Kimmy Stein", "Height": 41.0, "hasExperience": false, "parents": "Bill and Hillary Stein"]
let player7: [String: Any] = ["Name": "Sammy Adams", "Height": 45.0, "hasExperience": false, "parents": "Jeff Adams"]
let player8: [String: Any] = ["Name": "Karl Saygan", "Height": 42.0, "hasExperience": true, "parents": "Heather Bledsoe"]
let player9: [String: Any] = ["Name": "Suzane Greenberg", "Height": 44.0, "hasExperience": true, "parents": "Henrietta Dumas"]
let player10: [String: Any] = ["Name": "Sal Dali", "Height": 41.0, "hasExperience": false, "parents": "Gala Dali"]
let player11: [String: Any] = ["Name": "Joe Kavalier", "Height": 39.0, "hasExperience": false, "parents": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["Name": "Ben Finkelstein", "Height": 44.0, "hasExperience": false, "parents": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["Name": "Diego Soto", "Height": 41.0, "hasExperience": true, "parents": "Robin and Sarika Soto"]
let player14: [String: Any] = ["Name": "Chloe Alaska", "Height": 47.0, "hasExperience": false, "parents": "David and Jamie Alaska"]
let player15: [String: Any] = ["Name": "Arnold Willis", "Height": 43.0, "hasExperience": false, "parents": "Claire Willis"]
let player16: [String: Any] = ["Name": "Philip Helm", "Height": 44.0, "hasExperience": true, "parents": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["Name": "Les Clay", "Height": 42.0, "hasExperience": true, "parents": "Wynonna Brown"]
let player18: [String: Any] = ["Name": "Herschel Krustofski", "Height": 45.0, "hasExperience": true, "parents": "Hyman and Rachel Krustofski"]
//Total players
let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]
//Init empty arrays for no exp and with exp


// I know this can be done in a shorter way by passing in playersWithExperience and playersWithNoExperience directly, but I just wanted to practice returning muliple values and attributing them to the collections that I need.
func sortByExperience () -> (xpPlayerList: [[String:Any]], noXpPlayerList: [[String:Any]]) {
    var xpPlayers: [[String: Any]] = []
    var noXpPlayers: [[String: Any]] = []
    for player in players {
        if player["hasExperience"] as? Bool == true {
            xpPlayers.append(player)
        }else{
            noXpPlayers.append(player)
        }
    }
    return (xpPlayers, noXpPlayers)
}


var playersWithExperience: [[String: Any]] = sortByExperience().xpPlayerList
var playersWithNoExperience: [[String: Any]] = sortByExperience().noXpPlayerList

// Check to see if sorted correctly/evenly
playersWithNoExperience.count
playersWithExperience.count

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

var counter: Int = 1



func dividePlayers(playerList: [[String: Any]]) {
    for player in playerList {
        if (counter % 3 == 1) {
            teamSharks.append(player)
        } else if (counter % 3 == 2) {
            teamDragons.append(player)
        } else if (counter % 3 == 0) {
            teamRaptors.append(player)
        }
        counter += 1
    }
}

dividePlayers(playerList: playersWithNoExperience)
// Check to make sure it was divided evenly, sidebar also shows each if itterated 3 times with a total 9 times in the loop so each player is unique.
teamRaptors.count
teamDragons.count
teamSharks.count

dividePlayers(playerList: playersWithExperience)

//Check to see if all 18 players are divided
teamRaptors.count
teamDragons.count
teamSharks.count






