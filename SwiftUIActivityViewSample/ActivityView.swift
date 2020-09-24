//
//  ActivityView.swift
//  SwiftUIActivityViewSample
//
//  Created by Hiroaki Tomiyoshi on 2019/11/05.
//  Copyright © 2019 Hiroaki Tomiyoshi. All rights reserved.
//

import SwiftUI

/// UIActivityViewController wrapper
struct ActivityView: UIViewControllerRepresentable {

    let activityItems: [Any]
    let applicationActivities: [UIActivity]?

    func makeUIViewController(
        context: UIViewControllerRepresentableContext<ActivityView>
    ) -> UIActivityViewController {
        return UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities
        )
    }

    func updateUIViewController(
        _ uiViewController: UIActivityViewController,
        context: UIViewControllerRepresentableContext<ActivityView>
    ) {
        // Nothing to do
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(
            activityItems: ["text"],
            applicationActivities: nil
        )
    }
}
