//
//  ContentView.swift
//  First App
//
//  Created by Hutoon AlOmran on 23/03/1445 AH.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
       
            VStack{
                Image("Hutoon").resizable()            .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200) // Set width and height
                    .clipShape(Circle()) // Clip the image into a circle shape
                    .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Add a white border
                    .shadow(radius: 10) // Optional: Add shadow effect
                Text("Hutoon AlOmran").font(.title)
                Text("I'm an Information Technology Fresh Graduate from King Saud University, I am Interested in software development, UX/UI design, I like Reading, Coding").font(.callout).foregroundColor(.gray).padding(.horizontal, 20)
                
                Link("https://www.linkedin.com/in/hutoon-alomran-94a4aa192/", destination: URL(string: "https://www.linkedin.com/in/hutoon-alomran-94a4aa192/")!)
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding()
            }
    }
    
    
    
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
