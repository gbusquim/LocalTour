////
////  PositionStack.swift
////  LocalTour
////
////  Created by user221960 on 7/3/22.
////
//
//import Foundation
//
//class PositionStack {
//    var accessKey: String
//
//
//    init (accessKey: String) {
//        self.accessKey = accessKey
//    }
//
//    func getLocation(address: String) -> Float {
//        let url1 = "http://api.positionstack.com/v1/forward?access_key=70c5a1f310cbddf6a0266e143465590d&query=1314 Av. Bartolomeu Mitre RJ, Brazil"
//
//        let urlString = url1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//
//        do
//
////        let url = URL(string: urlString!)
////
////        var request = URLRequest(url: url!)
////
////        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
////        var teste :Float = 1
////
////        URLSession.shared.dataTask(with: url!) {  (data, response, error) in
////
////            if let data = data {
////
////                do {
////                    let dataString = String(data: data, encoding: .utf8)
////                    let jsondata = dataString?.data(using: .utf8)
////                    let result = try JSONDecoder().decode(PositionStackResponse.self, from: jsondata!)
////                    teste = result.data[0].latitude
////                } catch let error {
////                    print("Localized Error: \(error.localizedDescription)")
////                    print("Error: \(error)")
////                }
////            }
////        }.resume()
////        return teste
//    }
//
//    func performRequest(urlString: String) async throws -> PositionStackResponse?{
//
//        let url = URL(string: urlString)!
//        guard let (data, response) = try? await URLSession.shared.data(from: url) else{return nil}
//      let decoder = JSONDecoder()
//       let jsonResponse = try? decoder.decode(PositionStackResponse.self, from: data)
//        return jsonResponse
//
//    }
//}
