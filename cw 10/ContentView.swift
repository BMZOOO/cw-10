//
//  ContentView.swift
//  cw 10
//
//  Created by Batool  Jawaheri  on 1/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var Mood: String = ""
    
    
    enum moodType {
        case happy, sad , meh, fine
        
    }
  
    var body: some View {
        
        
        VStack{
        Text("MoodCHeck")
            .font(.largeTitle)
            .bold()
            .padding()
        Spacer()
        
        Text ("I feel \(Mood)")
            .bold()
            .padding()
            
            HStack {
                Text("😀").onTapGesture {
                    Mood = moods (mood: .happy)
                }
           
                Text("😞").onTapGesture {
                    Mood = moods (mood: .sad)
                }
                Text("😕") .onTapGesture{
                    Mood = moods (mood: .meh)
                }
            
                Text("😇").onTapGesture{
                    Mood = moods (mood: .fine)
                }
                
            }
        
        
        Spacer()
        
        }
            
    }
    
    func moods (mood: moodType) -> String {
        if mood == .fine{
            return "fine"
        }
        if mood == .sad{
            return "sad"
        }
        if mood == .meh{
            return "meh"
        }
        if mood == .happy{
            return "happy"
        }
    return " "
    }
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

