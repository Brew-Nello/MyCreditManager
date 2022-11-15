//
//  MenuCodeType.swift
//  MyCreditManager
//
//  Created by herrenNello on 2022/11/15.
//

import Foundation

enum MenuCodeType {
    case addStudent         // 학생추가
    case deleteStudent      // 학생삭제
    case addOrModifyScore   // 성적추가
    case deleteScore        // 성적삭제
    case printAverage       // 평점보기
    case exit               // 종료
    
    var code: String {
        switch self {
        case .addStudent      : return "1"    // 학생추가
        case .deleteStudent   : return "2"    // 학생삭제
        case .addOrModifyScore: return "3"    // 성적추가
        case .deleteScore     : return "4"    // 성적삭제
        case .printAverage    : return "5"    // 평점보기
        case .exit            : return "X"    // 종료
        }
    }
}
