//
//  Notifications.swift
//  Uygulama_24_Instagram_Clone
//
//  Created by zehra özer on 10.05.2024.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        GeometryReader { _ in
            VStack {
                Text("Bildirim Alani").font(.system(size: 50 , weight: .bold))
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    Notifications()
}
