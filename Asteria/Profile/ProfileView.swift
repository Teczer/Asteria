//
//  ProfileView.swift
//  Asteria
//
//  Created by apprenant70 on 23/06/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var notification = false
    @State private var audio = false
    @State private var showAlert = false
    @State private var showDetails = false
    @StateObject var viewRouter: ViewRouter
    @AppStorage("levelProgression") var levelProgression:Int = 0
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("OxfordBlue"), Color("SpaceCadet"), Color("PurpleMountain")]), startPoint: .top, endPoint: .bottom)
                    )
                    .ignoresSafeArea()
                
                VStack {
                    
                    Form {
                        Section {
                            HStack (spacing: 15) {
                                Image("jeanneDupont")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:95, height: 95)
                                    .cornerRadius(50)
                                    .shadow(color: Color("OrchidCrayola").opacity(0.8), radius: 10)
                                VStack (alignment:.leading) {
                                    Text("Jeanne DUPONT")
                                        .font(.system(size: 20))
                                        .fontWeight(.black)
                                    Text("30 ans")
                                        .font(.system(size: 12))
                                        .fontWeight(.thin)
                                    Spacer()
                                    Text("Niveau or".uppercased())
                                        .font(.system(size: 13))
                                        .fontWeight(.light)
                                }
                                .foregroundColor(Color("LavenderBlush"))
                                .frame(height:60)
                            }
                            .frame(height:120)
                            .listRowBackground(Color.clear)
                        }
                        
                        Section {
                            HStack {
                                Text("Notification")
                                    .foregroundColor(Color("LavenderBlush"))
                                Toggle("", isOn: $notification)
                            }
                            HStack {
                                Text("Audio")
                                    .foregroundColor(Color("LavenderBlush"))
                                Toggle("", isOn: $audio)
                            }
                        } header: {
                            Text("Préférences")
                                .foregroundColor(Color("OrchidCrayola"))
                        }
                        Section {
                            HStack {
                                Text("Revoir l'introduction")
                                    .foregroundColor(Color("LavenderBlush"))
                            }
                        } header: {
                            Text("Jeu")
                                .foregroundColor(Color("OrchidCrayola"))
                        }
                        Section {
                            HStack {
                                Button {
                                    self.showAlert.toggle()
                                } label: {
                                    Text("Réinitialiser les données")
                                        .foregroundColor(Color("LavenderBlush"))
                                }
                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("ATTENTION !"),
                                        message: Text("Êtes vous sûr de bien vouloir supprimer votre progression ? \r Cette action est iréversible !"),
                                        
                                        
                                        primaryButton: .destructive(
                                            
                                            Text("OK"),
                                            action: {
                                                levelProgression = 0
                                                showDetails = true
                                            }),
                                        secondaryButton: .default(
                                            Text("Annuler"),
                                            action: {})
                                    )
                                }
                            }
                            HStack {
                                Text("Déconnecter le compte")
                                    .foregroundColor(Color("LavenderBlush"))
                            }
                            HStack {
                                Button {
                                    self.showAlert.toggle()
                                } label: {
                                    Text("Supprimer le compte")
                                        .foregroundColor(Color("LavenderBlush"))
                                }
                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("ATTENTION !"),
                                        message: Text("Êtes vous sûr de bien vouloir supprimer votre compte ? \r Cette action est iréversible !"),
                                        
                                        
                                        primaryButton: .destructive(
                                            
                                            Text("OK"),
                                            action: {
                                                
                                                showDetails = true
                                            }),
                                        secondaryButton: .default(
                                            Text("Annuler"),
                                            action: {})
                                    )
                                }
                            }
                            .listRowBackground(Color.red)
                        } header: {
                            Text("Données & compte")
                                .foregroundColor(Color("OrchidCrayola"))
                        }
                        
                    }
                    .navigationBarTitle(Text("Profil"), displayMode: .inline)
                }
            }
            .onAppear() {
                viewRouter.hideInAventure = false
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewRouter: ViewRouter())
    }
}
