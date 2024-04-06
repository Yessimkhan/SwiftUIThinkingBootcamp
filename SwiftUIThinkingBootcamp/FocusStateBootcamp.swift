//
//  FocusStateBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yessimkhan on 21.06.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case username
        case password
    }
    
  //  @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
   // @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingFields?
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
            
            
            TextField("Add your password here", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
            
            
            Button("SIGN UP ✨") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
//            Button("TOGGLE FOCUS STATE") {
//                passwordInFocus.toggle()
//            }
            //You can use it like a submit button
            .padding(40)
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    self.usernameInFocus = true
                }
            }
            
        }
//        .padding(40)
    


struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
