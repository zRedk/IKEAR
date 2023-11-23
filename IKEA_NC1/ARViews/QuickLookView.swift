//
//  QuickLookView.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI
import QuickLook
import ARKit


struct ARQuickLookView: UIViewControllerRepresentable {
   // var fileURL: URL // URL to your .usdz file
    
    var card : Card

    func makeUIViewController(context: Context) -> QLPreviewController {
        let controller = QLPreviewController()
        controller.dataSource = context.coordinator
        return controller
    }

    func updateUIViewController(_ uiViewController: QLPreviewController, context: Context) {
        // Update the controller if needed
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, QLPreviewControllerDataSource {
        var parent: ARQuickLookView

        init(_ parent: ARQuickLookView) {
            self.parent = parent
        }

        func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
            return 1
        }

        func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
            let previewItem = ARQuickLookPreviewItem(fileAt: URL(filePath:  Bundle.main.path(forResource: parent.card.objectName, ofType: "usdz")!))
            return previewItem
        }
    }
}


//struct ARQuickLookView: UIViewControllerRepresentable {
//    func makeUIViewController(context: Context) -> QLPreviewController {
//        let previewController = QLPreviewController()
//        previewController.dataSource = context.coordinator
//        return previewController
//    }
//
//    func updateUIViewController(_ uiViewController: QLPreviewController, context: Context) {
//        // Update the controller if needed.
//    }
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator()
//    }
//
//    class Coordinator: NSObject, QLPreviewControllerDataSource {
//        func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
//            return 1
//        }
//
//        func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
//            guard let path = Bundle.main.path(forResource: "TV", ofType: "usdz") else {
//                fatalError("Couldn't find the supported input file.")
//            }
//            let url = URL(fileURLWithPath: path)
//            return url as QLPreviewItem
//        }
//    }
//}

//struct QuickLookView: View {
//    var body: some View {
//        ARQuickLookView(card: car)
//    }
//}

//#Preview {
//    QuickLookView()
//}
