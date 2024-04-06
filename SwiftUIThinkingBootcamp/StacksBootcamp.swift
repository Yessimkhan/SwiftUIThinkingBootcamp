//
//  StacksBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yessimkhan on 17.06.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStacks -> Vertical
    //Zs
    var body: some View {
        /* ZStack(alignment: .top) {
         Rectangle()
         .fill(Color.yellow)
         .frame(width: 350, height: 500, alignment: .center)
         VStack(alignment: .leading, spacing: 30){
         Rectangle()
         .fill(Color.red)
         .frame(width: 150, height: 150, alignment: .center)
         Rectangle()
         .fill(Color.green)
         .frame(width: 100, height: 100, alignment: .center)
         HStack (alignment: .bottom) {
         Rectangle()
         .fill(Color.purple)
         .frame(width: 50, height: 50, alignment: .center)
         Circle()
         .fill(Color.pink)
         .frame(width: 50, height: 50)
         Rectangle()
         .fill(Color.blue)
         .frame(width: 25, height: 25)
         }
         .background(Color.white)
         }
         .background(Color.black) */
        //Another example
        /*     VStack (alignment: .center, spacing: 20) {
         Text("5")
         .font(.largeTitle)
         .underline()
         Text("Items in your cart:")
         .font(.caption)
         .foregroundColor(.gray)
         
         }
         */
        VStack(spacing: 50){
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
                Text("2")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
