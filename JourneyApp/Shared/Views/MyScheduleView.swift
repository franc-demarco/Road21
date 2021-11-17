//
//  MyScheduleView.swift
//  ProjectTwo
//
//  Created by Aristide LAUGA on 12/11/2021.
//

import SwiftUI

@available(iOS 15, *)

extension Color {
    
    static let customBeige = Color(red: 0.93, green: 0.89, blue: 0.84)
    static let brickColor = Color(red: 0.70, green: 0.29, blue: 0.20)
    
}

@available(iOS 15, *)
struct MyScheduleView: View {
    
    
    let today = Date()
    @State private var isRedirecting = false
    
    @State private var isCompleted = false
    
    @State private var firstXcoordinate: CGFloat = 0
    @State private var firstYcoordinate: CGFloat = 0
    
    @State private var secondXCoordinate: CGFloat = 0
    @State private var secondYCoordinate: CGFloat = 0
    
    let adaptiveText: String
    
    var splicedAdaptiveText: [String] {
        return adaptiveText.split(separator: " ").map(String.init)
    }
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                Text(today, style: .date)
                    .fontWeight(.thin)
                    .navigationTitle("My Schedule")
                
                NavigationLink(destination: TipsView(), isActive: $isRedirecting) {
//              MARK: Tips button to navigate to the Tips screen
                    HStack {
                        
                        VStack(alignment: .leading,spacing: 5) {
                            Text("Tips")
                                .font(.title)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text("1 tip for you")
                                .fontWeight(.thin)
                                .foregroundColor(.black)
                            
                            Spacer()
                                .frame(height: 125)
                        }.padding(.top)
                        
                        Spacer()
                        
                        Image("tipsImage")
                            .resizable()
                            .clipped()
                            .frame(width: 180, height: 180)
                            .aspectRatio(contentMode: .fill)
                            .scaledToFill()
                            .offset(y: 6)
                        
                    }
                    .frame(height: 160)
                    .padding()
                    .background(
                        Color.customBeige
                            .cornerRadius(25)
                    )
                }
                
//            MARK: The current day of the 21's challenge
                HStack {
                    //Put a responsive way to modify the challenge 1's date
                    Text("Day 7")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("/21")
                        .fontWeight(.thin)
                        .foregroundColor(Color(UIColor(red: 0.80, green: 0.74, blue: 0.67, alpha: 1.00)))
                    
                    Spacer()
                    
                    Button(action: {
                        
                    })
                    {
                        Image(systemName: "plus.circle")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    
                }
//            MARK: The ScrollView tracking today's activities
                ScrollView {
                    GeometryReader { geo in
                        HStack(alignment: .center) {
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 40)
                                Button(action: {
                                    
                                })
                                {
                                    Image(systemName: "checkmark.circle")
                                        .imageScale(.large)
                                        .foregroundColor(.brickColor)
                                }
                            }
                            VStack {
                                HStack {
                                    Text(today, style: .time)
                                        .font(.title2)
                                    
                                    Spacer()
                                    
                                    Text("5/21")
                                }
                                
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    
                                    HStack {
                                        Text("Morning Meditation")
                                            .fontWeight(.bold)
                                            .font(.title3)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                        })
                                        {
                                            Image(systemName: "square.and.pencil")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Text("Just relax and enjoy for at least 10 minutes.")
                                        .fixedSize(horizontal: false, vertical: true)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(
                                    Color.brickColor
                                )
                                .cornerRadius(25)
                            }
                        }
                        .padding()
                        //                        .background(Color.red)
                    }
                    
                }
//            MARK: The second activity

              
            }
        }
        .padding()
    }
}

func registeringPosition() {
    
}

@available(iOS 15, *)
struct MyScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        MyScheduleView(adaptiveText: "Day 6")
    }
}


/*
 
 print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
 
 
 */

/*
 if activities[index] == 0 {
 
 } else {
 Path(
 )
 }
 
 */



/*
 if activities[index] == activites.last {
 From the upside to the center
 }
 
 //                                Path { path in
 //                                    path.move(to: CGPoint(x: CGFloat(geo.frame(in: .global).midX)), y: CGPoint(geo.frame(in: .global).midY)))
 //
 //                                }
 
 Path { path in
 path.move(to: CGPoint(x: geo.frame(in: .global).midX, y: geo.frame(in: .global).midY))
 path.addLine(to: CGPoint(x: 300, y: 300))
 path.closeSubpath()
 }.foregroundColor(.red)
*/





/*
 
 
 
 HStack(alignment: .center) {
     Image(systemName: "checkmark.circle")
         .imageScale(.large)
         .padding(.top, 35)
         .padding(5)
         .foregroundColor(Color(UIColor(red: 0.70, green: 0.29, blue: 0.20, alpha: 1.00)))
     VStack {
         HStack {
             Text(today, style: .time)
                 .font(.title2)
             
             Spacer()
             
             Text("5/21")
         }
         .padding(.leading, 5)
         .padding(.trailing, 2)
         
         VStack(alignment: .trailing, spacing: 10) {
             
             HStack {
                 Text("Morning meditation")
                     .fontWeight(.bold)
                     .font(.title3)
                     .foregroundColor(.white)
                 
                 Spacer()
                 
                 Image(systemName: "square.and.pencil")
                     .foregroundColor(.white)
             }
             Text("Just relax and enjoy for at least 10 minutes.")
                 .fixedSize(horizontal: false, vertical: true)
                 .foregroundColor(.white)
                 .multilineTextAlignment(.leading)
             
         }
         .frame(maxWidth: .infinity, alignment: .leading)
         .padding()
         .background(
             Color.brickColor
         )
         .cornerRadius(25)
     }
 }
 .padding()
 
 
 
 
 */