//
//  ContentView.swift
//  MailDemoApp
//
//  Created by Richard Menning on 05.11.20.
//

import SwiftUI

struct ContentView: View {
    
    @State var showComposeNewMessage: Bool = false
    
    
    var body: some View {
        
        
        
        TabView {
            
            // MARK: - Erster Tab
            NavigationView {
                List(0..<4) {
                    _ in
                    NavigationLink( destination: Text("Nachrichtentext")) {
                        SingleMessageView()
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Inbox")
                .navigationBarItems(trailing:
                                        Button(action: {
                                            showComposeNewMessage.toggle()
                                        }, label: {
                                            Image(systemName: "square.and.pencil")
                                        }))
            }
            .sheet(isPresented: $showComposeNewMessage, content: {
                ZStack {
                    Color.blue
                    Text("🙂").font(Font.title)
                }
                .edgesIgnoringSafeArea(.all)
            })
            .tabItem {
                Image(systemName: "envelope.fill")
                Text("Inbox")
            }
            
            // MARK: - Second Tab
            Text("Sent Messages")
                .tabItem {
                    
                    Label("Sent", systemImage: "paperplane.fill")
                }
            
            
        }
        
        
    }
}

struct SingleMessageView: View {
    var body: some View {
        HStack {
            
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 42, height: 42)
                .foregroundColor(.gray)
            
            
            VStack(alignment: .leading) {
                HStack{
                    Text("Absender")
                        .font(Font.headline)
                    Spacer()
                    Text("2020-11-05")
                        .font(Font.subheadline.monospacedDigit())
                        .foregroundColor(.secondary)
                }
                
                Text("Betreffzeile")
                    .font(Font.subheadline)
                    .lineLimit(1)
            }
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
