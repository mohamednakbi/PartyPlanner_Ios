//
//  UserAuthentficate.swift
//  partyPlaner
//
//  Created by talan tunisie on 27/4/2022.
//

import Foundation
struct UserAuthentificate : Codable {
    
    var email : String
    var password : String
   
    init(email: String ,password: String){
        self.email = email
        self.password = password
    }
    func toJson(userAuthentificate : UserAuthentificate ) -> Data {
        let jsonEncoder = JSONEncoder()
        let jsonData = try! jsonEncoder.encode(userAuthentificate)
        return jsonData
    }
}
