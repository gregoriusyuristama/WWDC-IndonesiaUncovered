//
//  Constants.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 10/04/23.
//

import Foundation
import SwiftUI

let kPinpointDatas: [PinPointData] = [
    PinPointData(x: 69, y: 321, landmark: Landmark(landmarkName: "Lake Toba", landmarkLocation: "North Sumatra, Indonesia", landmarkDesc: "Lake Toba is the largest volcanic lake in the world, covering an area of 1,145 square kilometers (442 square miles) and with a maximum depth of 505 meters (1,657 feet). The lake was formed by a massive volcanic eruption that occurred around 75,000 years ago, which caused the collapse of a large volcano and created a caldera that was gradually filled with water.", landmarkImages: kLakeTobaImages)),
    PinPointData(x: 239, y: 105, landmark: Landmark(landmarkName: "Jakarta Cathedral", landmarkLocation: "Jakarta, Indonesia", landmarkDesc: "Jakarta Cathedral is a neo-gothic style cathedral that was built in the 19th century, during the Dutch colonial period in Indonesia. The cathedral was designed by a Dutch architect named Antonius Dijkmans and was constructed between 1891 and 1901. The cathedral features two tall spires that rise up to a height of 60 meters (197 feet) and a large dome that is supported by four pillars.", landmarkImages: kJakartaCathedralImages)),
    PinPointData(x: 315, y: 77, landmark: Landmark(landmarkName: "Borobudur Temple", landmarkLocation: "Yogyakarta, Indonesia", landmarkDesc: "Borobudur Temple is one of the most important Buddhist temples in the world and is a UNESCO World Heritage Site. The temple was built during the reign of the Sailendra Dynasty in the 9th century and is believed to have been constructed over a period of several decades.", landmarkImages: kBorobudurImages)),
    PinPointData(x: 382, y: 64, landmark: Landmark(landmarkName: "Mount Bromo", landmarkLocation: "East Java, Indonesia", landmarkDesc: "Mount Bromo is one of the most famous volcanoes in Indonesia and is a popular tourist destination. The volcano stands at a height of 2,329 meters (7,641 feet) and is part of a larger complex of volcanoes that includes Mount Semeru, the highest peak in Java.", landmarkImages: kBromoImages)),
    PinPointData(x: 424, y: 52, landmark: Landmark(landmarkName: "Tanah Lot", landmarkLocation: "Bali, Indonesia", landmarkDesc: "Tanah Lot is one of the most popular tourist destinations in Bali and is famous for its stunning ocean views and its temple, which is perched on top of a large rock formation. The temple is dedicated to the Balinese sea gods and is an important pilgrimage site for the local Hindu community.", landmarkImages: kTanahLotImages)),
    PinPointData(x: 451, y: 52, landmark: Landmark(landmarkName: "Gili Islands", landmarkLocation: "Lombok Indonesia", landmarkDesc: "The Gili Islands are known for their stunning beaches, crystal-clear waters, and laid-back atmosphere. The three islands that make up the group are Gili Trawangan, Gili Meno, and Gili Air, and each island has its own unique character and attractions.", landmarkImages: kGiliImages)),
    PinPointData(x: 515, y: 52, landmark: Landmark(landmarkName: "Komodo National Park", landmarkLocation: "East Nusa Tenggara, Indonesia", landmarkDesc: "Komodo National Park is a UNESCO World Heritage Site and is home to the famous Komodo dragon, the world's largest lizard. The park is made up of three main islands: Komodo Island, Rinca Island, and Padar Island, as well as numerous smaller islands.", landmarkImages: kKomodoParkImages)),
    PinPointData(x: 357, y: 186, landmark: Landmark(landmarkName: "Tanjung Puting", landmarkLocation: "Central Kalimantan, Indonesia", landmarkDesc: "Tanjung Puting National Park is a protected area that is home to a variety of rare and endangered species, including orangutans, proboscis monkeys, and pygmy elephants. The park covers an area of approximately 4,000 square kilometers (1,500 square miles) and is comprised of a mix of tropical rainforest, mangrove swamps, and river systems.", landmarkImages: kTanjungPutingImages)),
    PinPointData(x: 521, y: 184, landmark: Landmark(landmarkName: "Tana Toraja", landmarkLocation: "South Sulawesi, Indonesia", landmarkDesc: "Tana Toraja is known for its unique culture and customs, which are closely tied to the traditional religion of the Toraja people. The Toraja people are known for their elaborate funeral ceremonies, which can last for days and involve animal sacrifices, traditional dances, and intricate decorations.", landmarkImages: kTanaTorajaImages)),
    PinPointData(x: 765, y: 213, landmark: Landmark(landmarkName: "Raja Ampat", landmarkLocation: "West Papua, Indonesia", landmarkDesc: "Raja Ampat is known for its stunning natural beauty, with crystal-clear waters, white sand beaches, and a variety of marine life. The archipelago is made up of over 1,500 islands, most of which are uninhabited, and is one of the most biodiverse marine environments in the world.", landmarkImages: kRajaAmpatImages)),
]

let kLakeTobaImages: [Image] = [
    Image("LakeToba1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.LakeTobaImages")),
    
    Image("LakeToba2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.LakeTobaImages")),
    
    Image("LakeToba3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.LakeTobaImages"))
]

let kBorobudurImages: [Image] = [
    Image("Borobudur1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.BorobudurImages")),
    
    Image("Borobudur2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.BorobudurImages")),
    
    Image("Borobudur3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.BorobudurImages"))
]

let kJakartaCathedralImages: [Image] = [
    Image("JakartaCathedral1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.JakartaCathedralImages")),
    
    Image("JakartaCathedral2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.JakartaCathedralImages")),
    
    Image("JakartaCathedral3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.JakartaCathedralImages"))
]

let kBromoImages: [Image] = [
    Image("MountBromo1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.BromoImages")),
    
    Image("MountBromo2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.BromoImages")),
    
    Image("MountBromo3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.BromoImages"))
]

let kGiliImages: [Image] = [
    Image("GiliIsland1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.GiliIslandsImages")),
    
    Image("GiliIsland2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.GiliIslandsImages")),
    
    Image("GiliIsland3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.GiliIslandsImages"))
]

let kKomodoParkImages: [Image] = [
    Image("Komodo1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.KomodoParkImages")),
    
    Image("Komodo2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.KomodoParkImages")),
    
    Image("Komodo3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.KomodoParkImages"))
]

let kTanjungPutingImages: [Image] = [
    Image("TanjungPuting1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanjungPutingImages")),
    
    Image("TanjungPuting2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanjungPutingImages")),
    
    Image("TanjungPuting3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanjungPutingImages"))
]

let kTanahLotImages: [Image] = [
    Image("TanahLot1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanahLotImages")),
    
    Image("TanahLot2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanahLotImages")),
    
    Image("TanahLot3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanahLotImages"))
]

let kTanaTorajaImages: [Image] = [
    Image("TanaToraja1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanaTorajaImages")),
    
    Image("TanaToraja2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanaTorajaImages")),
    
    Image("TanaToraja3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.TanaTorajaImages"))
]

let kRajaAmpatImages: [Image] = [
    Image("RajaAmpat1", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.RajaAmpatImages")),
    
    Image("RajaAmpat2", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.RajaAmpatImages")),
    
    Image("RajaAmpat3", bundle: Bundle(identifier: "gregoriusyuristama.WWDC-IndonesiaUncovered.RajaAmpatImages"))
]








