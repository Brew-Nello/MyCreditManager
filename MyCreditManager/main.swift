//
//  main.swift
//  MyCreditManager
//
//  Created by Nello on 2022/11/14.
//

import Foundation

struct Student {
    var name: String?
    var score: Int?
}

var studentList = [Student]()

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

/// 학생추가
func addStudent() {
    let name = readLine()
    
    guard
        let name = name,
        !name.isEmpty
    else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    
    if studentList.contains(where: { $0.name == name }) {
        print("\(name)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        return
    }
    
    var student = Student()
    student.name = name
    studentList.append(student)
    
    print("\(name) 학생을 추가했습니다.")
}

/// 학생삭제
func deleteStudent() {
    let name = readLine()
    
    guard
        let name = name,
        !name.isEmpty
    else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    
    if studentList.contains(where: { $0.name != name }) {
        print("\(name)학생을 찾지 못했습니다.")
        return
    }
    
    if let index = studentList.firstIndex(where: { $0.name == name }) {
        studentList.remove(at: index)
    }
    
    print("\(name) 학생을 삭제하였습니다.")
}

/// 성적추가
func addOrModifyScore() {
    let inputText = readLine()
    guard
        let inputText = inputText,
        !inputText.isEmpty
    else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    
    let splitedinputText = inputText.split(separator: " ")
    
    print(splitedinputText)
    print(splitedinputText.count)
    
    if splitedinputText.count != 3 {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        return
    }
    
    let name = splitedinputText[0]
    let scroeName = splitedinputText[1]
    let score = splitedinputText[2]
    
    
}

/// 성적삭제
func deleteScore() {
    
}

/// 평점보기
func printAverage() {
    
}


func runCreditManager() {
    var inputNumber: Any?
    
    while( inputNumber as? String != "X" ) {
        print("원하는 기능을 입력해주세요")
        
        inputNumber = readLine()
        
        guard let inputNumber = inputNumber else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
            return
        }
        switch inputNumber as? String {
        case MenuCodeType.addStudent.code:
            print("추가할 학생의 이름을 입력해주세요")
            addStudent()
            break
        case MenuCodeType.deleteStudent.code:
            print("삭제할 학생의 이름을 입력해주세요")
            deleteStudent()
            break
        case MenuCodeType.addOrModifyScore.code:
            print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
            print("입력예) Mickey Swift A+")
            print("만약 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
            addOrModifyScore()
            break
        case MenuCodeType.deleteScore.code:
            print("추가할 학생의 이름을 입력해주세요")
            deleteScore()
            break
        case MenuCodeType.printAverage.code:
            print("추가할 학생의 이름을 입력해주세요")
            printAverage()
            break
        case MenuCodeType.exit.code:
            print("프로그램을 종료합니다...")
            break
        default: break
        }
    }
    
}




runCreditManager()
