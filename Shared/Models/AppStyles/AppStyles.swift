//
//  AppStyles.swift
//  taskDemo
//
//  Created by Misael Landero on 26/09/21.
//

import Foundation
import SwiftUI

struct AppStyles {
    static var AppColors : [AppColor] = [AppColor(name: "Blue", color: .blue), AppColor(name: "Green", color: .green), AppColor(name: "Yellow", color: .yellow), AppColor(name: "Red", color: .red),AppColor(name: "Rosa", color: .pink), AppColor(name: "Purple", color: .purple)]
}


struct AppColor {
    var name : String
    var color : Color
}
