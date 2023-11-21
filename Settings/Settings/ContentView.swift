//
//  ContentView.swift
//  Settings
//
//  Created by Valentina Golia on 14/11/23.
//
import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    @State var airplaneOn: Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            
            List {
                
                
                Section() {
                    
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 60, height:60)
                            
                            
                            VStack(alignment: .leading) {
                                Text("Valentina Golia")
                                    .font(.title2)
                                
                                Text("ID Apple, iCloud, acquisti e altro")
                                    .font(.footnote)
                            }
                        }
                    })
                    
                    NavigationLink(destination: {
                        
                    }, label: {  Text("Impossibile eseguire il backup")
                            .badge(1)
                            .badgeProminence(.increased)
                        
                    })
                    
                    
                    
                }
            header: {
                Text("Questo iPhone è supervisionato e gestito da Università degli Studi di Napoli Federico II.").textCase(.none)
            }
                
                
                NavigationLink(destination: {
                    
                }, label: {
                    Section() {
                        Text("Aggiungi Copertura AppleCare+")
                        
                        
                    }
                    
                })
                
                
                
                Section() {
                    
                    
                    HStack {
                        Image(systemName: "airplane")
                            .foregroundColor(Color.white)
                            .frame(width: 30, height: 30)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius:7 ))
                        
                        Text("Uso in aereo")
                        Toggle(isOn: $airplaneOn) {
                        }
                    }
                    
                    NavigationLink(destination:{ Wi_Fi ()}, label: {
                        HStack {
                            Image(systemName: "wifi")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Wi-Fi")
                            Spacer()
                            Text("SwiftFun")
                                .foregroundStyle(.gray)
                            
                        }
                        
                    })
                    
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image("bluetooth")
                                .resizable()
                                .padding(3)
                                .frame(width: 30, height: 30)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Bluetooth")
                            Spacer()
                            Text("Si")
                                .foregroundStyle(.gray)
                        }
                    })
                    
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .font(Font.system(size:17, weight:.bold))
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Cellulare")
                        }
                    })
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "personalhotspot")
                                .font(Font.system(size:15, weight:.bold))
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Hotspot personale")
                        }
                    } )
                    
                }
                
                Section() {
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "bell.badge.fill")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(.red)
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Notifiche")
                        }
                    })
                    //ssdfsfsffssf
                    NavigationLink(destination: { Suoni_e_feedback_aptico ()}, label: {
                        HStack {
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(.red)
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Suoni e feedback aptico")
                        }
                    })
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "moon.fill")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color(red: 0.371, green: 0.216, blue: 0.757))
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Full immersion")
                        }
                    })
                    
                    NavigationLink(destination: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "hourglass")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color(red: 0.371, green: 0.216, blue: 0.757))
                                .clipShape(RoundedRectangle(cornerRadius:7 ))
                            
                            Text("Tempo di utilizzo")
                        }
                    })
                    
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Impostazioni")
                
            }
            .searchable(text: $searchText)
            
        }
    }
}






#Preview {
    ContentView()
}
