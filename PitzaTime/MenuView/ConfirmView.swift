//
//  ConfirmView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    
    var sizes: [Size] = [.small, .medium, .large]
    var menuID:Int
    @Binding var isPresented: Bool
    @ObservedObject var orderModel:OrderModel
    @Binding var quantity: Int
    @Binding var size: Size
    @State var comments: String = ""
    @EnvironmentObject var settings: UserPreferences
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID, size: size, quantity: quantity, comments: comments)
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(10)
                .gesture(
                    TapGesture(count: 2)
                        .onEnded {
                            isPresented = false
                        }
                )
//                .onTapGesture(count: 2, perform: {
//                    isPresented = false
//                })
            Divider()
            Text("Confirm your order of \(quantity) \(size.formatted()) \(name) pizza")
                .font(.headline)
            
            TextField("Customise your pizza by adding comments...", text: $comments)
                .background(.white)
                .foregroundColor(.black)
                .padding()
            
            Picker(selection: $settings.size, label: Text("Size of Pizza")) {
                ForEach(sizes, id: \.self) { size in
                    Text(size.formatted()).tag(size)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing])
            
            Stepper(value: $quantity, in: 1...10) {
                Text("Quantity: \(quantity)")
                    .bold()
            }
            .padding()
            
            Spacer()
            
            HStack {
                Button(action: addItem){
                    Text("Add")
                        .font(.title)
                    .padding()
                    .background(.white)
                    .foregroundColor(.orange)
                    .cornerRadius(10)
                }.padding([.bottom])
                Spacer()
               
                Button {
                    isPresented = false
                } label: {
                    Text("Cancel")
                        .font(.title)
                    .padding()
                    .background(.white)
                    .foregroundColor(.orange)
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .background(.orange)
        .foregroundColor(.white)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, isPresented: .constant(true), orderModel: OrderModel(), quantity: .constant(1), size: .constant(.small))
            .environmentObject(UserPreferences())
    }
}
