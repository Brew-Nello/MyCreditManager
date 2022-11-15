//
//  Score.swift
//  MyCreditManager
//
//  Created by herrenNello on 2022/11/15.
//

import Foundation

enum Score {
    case Aplus,A
    case Bplus,B
    case Cplus,C
    case Dplus,D
    case F
    var value: String {
        switch self {
        case .Aplus:    return "A+"
        case .A:        return "A"
        case .Bplus:    return "B+"
        case .B:        return "B"
        case .Cplus:    return "C+"
        case .C:        return "C"
        case .Dplus:    return "D+"
        case .D:        return "A"
        case .F:        return "F"
        }
    }
}
