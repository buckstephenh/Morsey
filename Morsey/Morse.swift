//
//  Morse.swift
//  Morsey
//
//  Created by Stephen Buck on 7/22/16.
//  Copyright © 2016 Stephen Buck. All rights reserved.
//

import Foundation

func morseAsDotDash(input:String)-> String {
    let inputTemp = input.lowercaseString
    var outputTemp = ""
    for c in inputTemp.characters {
       switch c {
    case "a":
        outputTemp += ".-   "
       case "b":
        outputTemp += "-...   "
       case "c":
        outputTemp += "-.-.   "
       case "d":
        outputTemp += "-..   "
       case "e":
        outputTemp += ".   "
       case "f":
        outputTemp += "..-.   "
       case "g":
        outputTemp += "--.   "
       case "h":
        outputTemp += "....   "
       case "i":
        outputTemp += "..   "
       case "j":
        outputTemp += ".---   "
       case "k":
        outputTemp += "-.-   "
       case "l":
        outputTemp += ".-..   "
       case "m":
        outputTemp += "--   "
       case "n":
        outputTemp += "-.   "
       case "o":
        outputTemp += "---   "
       case "p":
        outputTemp += ".--.   "
       case "q":
        outputTemp += ".--.   "
       case "r":
        outputTemp += ".-.   "
       case "s":
        outputTemp += "...   "
       case "t":
        outputTemp += "-   "
       case "u":
        outputTemp += "..-   "
       case "v":
        outputTemp += "...-   "
       case "w":
        outputTemp += ".--   "
       case "x":
        outputTemp += "-..-   "
       case "y":
        outputTemp += "-.--   "
       case "z":
        outputTemp += "--..   "
       case "0":
        outputTemp += "-----   "
       case "1":
        outputTemp += ".----   "
       case "2":
        outputTemp += "..---   "
       case "3":
        outputTemp += "...--   "
       case "4":
        outputTemp += "....-   "
       case "5":
        outputTemp += ".....   "
       case "6":
        outputTemp += "-....   "
       case "7":
        outputTemp += "--...   "
       case "8":
        outputTemp += "---..   "
       case "9":
        outputTemp += "----.   "
       case " ":
        outputTemp += "    "
    default:
        outputTemp += "x"
        
        }
    }
    return outputTemp
}

