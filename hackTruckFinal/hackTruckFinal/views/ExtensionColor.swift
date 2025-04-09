//
//  ExtensionColor.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

extension Color {
    static let whiteBlue = Color(UIColor(red: 192/255, green: 216/255, blue: 214/255, alpha: 1))
    static let lightCyan = Color(UIColor(red: 233/255, green: 250/255, blue: 251/255, alpha: 1))
    static let lightRed = Color(UIColor(red: 246/255, green: 109/255, blue: 109/255, alpha: 1))
    static let skyBlue = Color(UIColor(red: 90/255, green: 187/255, blue: 213/255, alpha: 1))
    static let pinkPurple = Color(UIColor(red: 223/255, green: 128/255, blue: 206/255, alpha: 1))
    static let softGreen = Color(UIColor(red: 166/255,green: 207/255,blue: 161/255,alpha: 1))
    
    static let gradientStart = Color(UIColor(red: 121/255,green: 242/255,blue: 248/255,alpha: 1))
    static let gradientEnd = Color(UIColor(red: 222/255, green: 222/255, blue: 222/255,alpha: 1))
    static var customLinearGradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [gradientStart, gradientEnd]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
    
    static let primaryRed = Color(red: 1.0, green: 0.6, blue: 0.6)
        static let primaryBlue = Color(red: 0.6, green: 0.7, blue: 1.0)
        static let primaryYellow = Color(red: 1.0, green: 1.0, blue: 0.7)
        
        // 🌿 Secundárias (pastel)
        static let secondaryGreen = Color(red: 0.7, green: 1.0, blue: 0.7)
        static let secondaryOrange = Color(red: 1.0, green: 0.8, blue: 0.6)
        static let secondaryPurple = Color(red: 0.8, green: 0.7, blue: 1.0)
        
        // 🍭 Terciárias (pastel)
        static let tertiaryYellowOrange = Color(red: 1.0, green: 0.85, blue: 0.6)
        static let tertiaryRedOrange = Color(red: 1.0, green: 0.65, blue: 0.6)
        static let tertiaryRedPurple = Color(red: 0.9, green: 0.7, blue: 0.75)
        static let tertiaryBluePurple = Color(red: 0.7, green: 0.7, blue: 1.0)
        static let tertiaryBlueGreen = Color(red: 0.6, green: 0.9, blue: 1.0)
        static let tertiaryYellowGreen = Color(red: 0.85, green: 1.0, blue: 0.7)
        
        // 🌼 Quaternárias (pastel)
        static let quaternaryRose = Color(red: 1.0, green: 0.75, blue: 0.8)
        static let quaternaryChartreuse = Color(red: 0.85, green: 1.0, blue: 0.6)
        static let quaternaryTeal = Color(red: 0.6, green: 0.9, blue: 0.9)
        static let quaternaryAmber = Color(red: 1.0, green: 0.9, blue: 0.6)
        
        // 💐 Quintenárias (pastel)
        static let quinaryLilac = Color(red: 0.9, green: 0.8, blue: 0.95)
        static let quinaryCoral = Color(red: 1.0, green: 0.7, blue: 0.6)
        static let quinaryOlive = Color(red: 0.8, green: 0.85, blue: 0.6)
        static let quinaryNavy = Color(red: 0.6, green: 0.7, blue: 0.9)
    
    static func randomPaletteColor() -> Color {
        let allColors: [Color] = [
            .primaryRed, .primaryBlue, .primaryYellow,
            .secondaryGreen, .secondaryOrange, .secondaryPurple,
            .tertiaryYellowOrange, .tertiaryRedOrange, .tertiaryRedPurple,
            .tertiaryBluePurple, .tertiaryBlueGreen, .tertiaryYellowGreen,
            .quaternaryRose, .quaternaryChartreuse, .quaternaryTeal, .quaternaryAmber,
            .quinaryLilac, .quinaryCoral, .quinaryOlive, .quinaryNavy
        ]
        
        return allColors.randomElement() ?? .black
    }
}
