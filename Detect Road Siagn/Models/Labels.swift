//
//  Labels.swift
//  Detect Road Siagn
//
//  Created by Christian Riccio on 14/12/21.
//

enum Labels: String, RawRepresentable, CaseIterable {
    case animalCrossing
    case softVerges
    case roadNarrows
    case bridgeAhead
    case unevenRoad
    case noTrucks
    case deadEnd
    case bend
    case cattle
    case crossRoads
    case directiontype0
    case directionType1
    case directionType2
    case noStopping
    case doubleBend
    case givePriority
    case trafficPriority
    case twoWayTraffic
    case nationalSpeedLimits
    case genericWarningType0
    case genericWarningType1
    case giveWay
    case laneMerging
    case junction
    case maxHeight
    case noEntry
    case noOvertaking
    case noWaiting
    case oneWay
    case parkingPlace
    case pedalCycles
    case zebraCrossingWarning
    case majorRoadEnd
    case majorRoad
    case roundaboutIndication
    case roundaboutWarning
    case schoolCrossing
    case sleepingPoliceman
    case slipperyRoad
    case speedLimit10
    case speedLimit30
    case speedLimit40
    case speedLimit50
    case speedLimit60
    case endSpeedLimit60
    case stop
    case trafficLight
    case noHorn
    case menAtWork
    case zebraCrossing
    case noVehicles
    case maxHeightType0
    case maxWidthType0
    case noPedestrian
    case noHorse
    case noBike
    case turn
    case speedLimit70
    case speedLimit90
    
    var message: String {
        switch self {
        case .animalCrossing:
            return "The Animal Crossing sign indicates to motorists that they are approaching an area where it is known that deer, elk, etc. often cross the roadway "
        case .softVerges:
            return "The soft verges sign means there is a verge on the edge of the road which driving over may damage drains, the verge, or the vehicle by getting stuck."
        case .roadNarrows:
            return "Road narrows signs indicate that the road ahead will not be as wide as the road you're currently on."
        case .bridgeAhead:
            return "The traffic sign bridge ahead will advice you that in 100 meters there will be a bridge."
        case .unevenRoad:
            return "This sign warns you of an uneven road ahead. It might have multiple severe bumps and general uneven surfaces that could throw your vehicle off its line, so slow down. Vehicles with low suspension could be at risk of scraping the road surface."
        case .noTrucks:
            return "A No Trucks sign means that the road where the sign is posted is not designed to support or accommodate large trucks. This could be due to weight limits, maximum height clearance, or traffic concerns."
        case .deadEnd:
            return "This indicates a no through road."
        case .bend:
            return "This sign is used where the change in direction is so considerable that it amounts to reversal of direction. The symbol bends to right or left depending upon the road alignment."
        case .cattle:
            return "The Cattle Crossing Road sign is used to alert motorists in advance of locations where unexpected entries into the roadway or shared use of the roadway by cattle might occur"
        case .crossRoads:
            return "A crossroad sign means there is an intersection ahead with traffic approaching from the left, right and straight ahead. You must therefore prepare to stop to give the right of way to traffic even if there are no traffic lights, or a stop sign or give way sign."
        case .directiontype0:
            return "This indicate that you’re to drive straight or left or whatever direction the arrow is pointing."
        case .directionType1:
            return "This indicate that you’re to drive straight or left or whatever direction the arrow is pointing."
        case .directionType2:
            return "This indicate that you’re to drive straight or left or whatever direction the arrow is pointing."
        case .noStopping:
            return "No stopping signs mean no dropping people off or picking them up, and no loading/unloading trucks. You're not supposed to be here unless you're moving."
        case .doubleBend:
            return "This sign is used where the nature of the reverse bend is not obvious to approaching traffic and constitutes a hazard. If the first curve is to the right, a right reverse bend shall be used. If the first curve is to the left, a left reverse bend is used."
        case .givePriority:
            return "Priority traffic signs indicate the order in which vehicles should pass intersection points. "
        case .trafficPriority:
            return "Priority traffic signs indicate the order in which vehicles should pass intersection points. Vehicles often come into conflict with other vehicles and pedestrians because their intended courses of travel intersect, and thus interfere with each other's routes. "
        case .twoWayTraffic:
            return "Two way traffic signs are posted before or on two-way roadways. These two way traffic signs warn drivers that they're leaving a one-way roadway and entering a roadway with opposing traffic. This might restrict the driver's ability to freely pass cars."
        case .nationalSpeedLimits:
            return ""
        case .genericWarningType0:
            return ""
        case .genericWarningType1:
            return "This is a generic warning signal wich advise you to be aware !"
        case .giveWay:
            return "Indicates that you’re the one who has to wait and give other cars the right of way is this one, an inverted white triangle with a red border."
        case .laneMerging:
            return "The merge sign is a regulatory sign. Drivers who encounter a merge sign are warned that two separate roadways will converge into one lane ahead. The merging traffic sign will typically indicate which lane should be merging into the other."
        case .junction:
            return "These are T-junction signs: They mean that “another road is about to enter the road you are traveling on, so watch out for traffic from that new road.” IMPORTANT: Traffic coming along the “top” of the “T” has the right of way!"
        case .maxHeight:
            return "Maximum height limit indicates the vehicles or the vehicles carrying above this height is not allowed. You can see this on the tunnels where tunnel height will be limited. If the vehicle trying to enter more than this specified height will lead to a problem."
        case .noEntry:
            return "This sign means that no vehicles are allowed past it."
        case .noOvertaking:
            return "This sign is erected at the beginning of such sections of highways where sight distance is restricted and overtaking will be dangerous."
        case .noWaiting:
            return "This sign is erected where vehicles are prohibited to stop even temporarily."
        case .oneWay:
            return "The one way traffic sign is a regulatory sign. Drivers encountering a one way sign must travel in the direction that the sign is pointing. One way signs designate the direction in which traffic is traveling. Drivers must not travel in the opposite direction of the one way sign due to the risk of a head-on collision."
        case .parkingPlace:
            return "Parking areas – including parking lots and garages – are indicated by a blue square with a white P in the middle. Keep an eye out for these, as sometimes parking garages are tough to spot (especially if they’re underground) and parking in historic city centers can be nightmarish."
        case .pedalCycles:
            return "Mandatory with-flow pedal cycle lane sign. Solid white line tells other vehicles they must not use this part of the carriageway except to pick up or set down passengers. Hours of operation may be shown. Cycle route is recommended for cyclists on the main carriageway of a road."
        case .zebraCrossingWarning:
            return "This signal aware of an icoming area of road painted with broad white stripes, where vehicles must stop because pedestrians wish to cross."
        case .majorRoadEnd:
            return "The major roud your are driving on is going to end."
        case .majorRoad:
            return "This sign indicates that you are driving on a major road."
        case .roundaboutIndication:
            return "A Roundabout sign means that you are approaching a roundabout intersection, or traffic circle, where traffic moves counterclockwise around a center island."
        case .roundaboutWarning:
            return "A Roundabout warning means that you are approaching a roundabout intersection, or traffic circle, where traffic moves counterclockwise around a center island. Be aware !"
        case .schoolCrossing:
            return "The school crossing sign (or school zone sign) is a warning sign.School crossing signs are meant to warn drivers that they are approaching a crossing where school children cross the roadway. The school crossing sign is actually a combination of two signs; a school area sign and a diagonal downward pointing arrow plaque. The two signs together comprise the sign assembly that is known as a school crossing sign. Drivers encountering a school crossing sign should watch out for children, reduce speed, and obey any signals from a crossing guard."
        case .sleepingPoliceman:
            return "Speed bumps (also called traffic thresholds, speed breakers or sleeping policemen) are the common name for a class of traffic calming devices that use vertical deflection to slow motor-vehicle traffic in order to improve safety conditions. Variations include the speed hump, speed cushion, and speed table."
        case .slipperyRoad:
            return "The slippery road sign is a warning sign. Slippery road signs are posted in areas where a slippery condition might exist. Drivers should use extreme caution and slow their speed when the road is wet or icy. Avoid any sudden changes in direction when conditions are poor."
        case .speedLimit10:
            return "This signal set the legal maximum speed of 10 km/h at which vehicles may travel on a given stretch of road."
        case .speedLimit30:
            return "This signal set the legal maximum speed of 30 km/h at which vehicles may travel on a given stretch of road."
        case .speedLimit40:
            return "This signal set the legal maximum speed of 40 km/h at which vehicles may travel on a given stretch of road."
        case .speedLimit50:
            return "This signal set the legal maximum speed of 50 km/h at which vehicles may travel on a given stretch of road."
        case .speedLimit60:
            return "This signal set the legal maximum speed of 60 km/h at which vehicles may travel on a given stretch of road."
        case .endSpeedLimit60:
            return "This signal set the that legal maximum speed of 60 km/h at which vehicles may travel on a given stretch of road is finished and you can modify your vehicle's speed respecting the new road speed limit."
        case .stop:
            return "A stop sign is a regulatory sign - a traffic control device that warns drivers to slow down and prepare to stop. Drivers must stop at the stop line, crosswalk, or intersection, whichever they encounter first. The driver must yield the right-of-way to pedestrians and approaching vehicles before proceeding."
        case .trafficLight:
            return "A road signal for directing vehicular traffic by means of colored lights, typically red for stop, green for go, and yellow for proceed with caution."
        case .noHorn:
            return "No sound horn signal symbolizes not to make a horn in a specified area. This traffic symbol is used in order to avoid noises in the public zone so as to keep the measures of road safety."
        case .menAtWork:
            return "A men at work sign is a warning sign. Men at work signs indicate that road workers are in or near the roadway. Drivers should be alert and prepared to slow down or stop if they encounter this sign. Oftentimes the men at work signs are posted in construction zones where speed limits are reduced."
        case .zebraCrossing:
            return "This signal describe an area of road painted with broad white stripes, where vehicles must stop if pedestrians wish to cross."
        case .noVehicles:
            return "This signal indicates that no vehicles are allowed in the area ahead."
        case .maxHeightType0:
            return "Maximum height limit indicates the vehicles or the vehicles carrying above this height is not allowed. You can see this on the tunnels where tunnel height will be limited. If the vehicle trying to enter more than this specified height will lead to a problem."
        case .maxWidthType0:
            return "Maximum width limit indicates the vehicles or the vehicles carrying above this width is not allowed. You can see this on the tunnels where tunnel width will be limited. If the vehicle trying to enter more than this specified width will lead to a problem."
        case .noPedestrian:
            return "This sign indicates that pedestrians and pedestrian operated or controlled vehicles are prohibited from passing beyond the sign."
        case .noHorse:
            return "This sign indicates that riding horses beyond the sign is not allowed and there is prohibition to go trough."
        case .noBike:
            return "This sign indicates that bicycles and tricycles are prohibited from passing beyond the sign."
        case .turn:
            return "This signal indicates the direction to follow."
        case .speedLimit70:
            return "This signal set the legal maximum speed of 70 km/h at which vehicles may travel on a given stretch of road."
        case .speedLimit90:
            return "This signal set the legal maximum speed of 90 km/h at which vehicles may travel on a given stretch of road."
        }
    }
}

extension Labels: CustomStringConvertible {
    var description: String {
        switch self {
        case .animalCrossing:
            return "Animal Crossing"
        case .softVerges:
            return "Soft Verges"
        case .roadNarrows:
            return "Road Narrows"
        case .bridgeAhead:
            return "Bridge Ahead"
        case .unevenRoad:
            return "Uneven Road"
        case .noTrucks:
            return "No Trucks"
        case .deadEnd:
            return "Dead End"
        case .bend:
            return "Band"
        case .cattle:
            return "Cattle"
        case .crossRoads:
            return "Cross Roads"
        case .directiontype0:
            return "Direction"
        case .directionType1:
            return "Direction"
        case .directionType2:
            return "Direction"
        case .noStopping:
            return "No Stopping"
        case .doubleBend:
            return "Double Bend"
        case .givePriority:
            return "Give Priority"
        case .trafficPriority:
            return "Traffic Priority"
        case .twoWayTraffic:
            return "Two Way Traffic"
        case .nationalSpeedLimits:
            return "National Speed Limits"
        case .genericWarningType0:
            return "Generic Warning"
        case .genericWarningType1:
            return "Generic Warning"
        case .giveWay:
            return "Give Way"
        case .laneMerging:
            return "Lane Merging"
        case .junction:
            return "Junction"
        case .maxHeight:
            return "Max Height"
        case .noEntry:
            return "No Entry"
        case .noOvertaking:
            return "No Overtaking"
        case .noWaiting:
            return "No Waiting"
        case .oneWay:
            return "One Way"
        case .parkingPlace:
            return "Parking Place"
        case .pedalCycles:
            return "Pedal Cycles"
        case .zebraCrossingWarning:
            return "Zebra Crossing Warning"
        case .majorRoadEnd:
            return "End Major Road"
        case .majorRoad:
            return "Major Road"
        case .roundaboutIndication:
            return "Roundabout Indication"
        case .roundaboutWarning:
            return "Roundabout Warning"
        case .schoolCrossing:
            return "School Crossing"
        case .sleepingPoliceman:
            return "Sleeping Policeman"
        case .slipperyRoad:
            return "Slippery Road"
        case .speedLimit10:
            return "Speed Limit 10"
        case .speedLimit30:
            return "Speed Limit 30"
        case .speedLimit40:
            return "Speed Limit 40"
        case .speedLimit50:
            return "Speed Limit 50"
        case .speedLimit60:
            return "Speed Limit 60"
        case .endSpeedLimit60:
            return "End Speed Limit 60"
        case .stop:
            return "Stop"
        case .trafficLight:
            return "Traffic Light"
        case .noHorn:
            return "No Horne"
        case .menAtWork:
            return "Men At Work"
        case .zebraCrossing:
            return "Zebra Crossing Indication"
        case .noVehicles:
            return "No vehicles"
        case .maxHeightType0:
            return "Max Height"
        case .maxWidthType0:
            return "Max Width"
        case .noPedestrian:
            return "No Pedestrians"
        case .noHorse:
            return "No Horse"
        case .noBike:
            return "No Bike"
        case .turn:
            return "Turn"
        case .speedLimit70:
            return "Speed Limit 70"
        case .speedLimit90:
            return "Speed Limit 90"
        }
    }
}
