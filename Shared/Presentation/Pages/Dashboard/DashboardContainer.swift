import SwiftUI

struct DashboardContainer: View {
    var body: some View {
        pageContent()
                .navigationBarHidden(true)
    }

    @ViewBuilder
    private func pageContent() -> some View {
        VStack {
            Text("Dashboard container")
            NavigationLink(destination: Text("Details")) {
                Text("Details")
            }
        }
    }
}
