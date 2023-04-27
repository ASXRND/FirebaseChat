//
//  FirestoreService.swift
//  VChat
//
//  Created by Александр on 27.04.2023.
//  Copyright © 2023 Алексей Пархоменко. All rights reserved.
//

/*
 Interaction with collections in db Firestore , collection name "users".
*/

import Firebase
import FirebaseFirestore

class FirestoreService {

    static let shared = FirestoreService()
    let db = Firestore.firestore()
    private var usersRef: CollectionReference {
        return db.collection("users")
    }

    func saveProfileWith(id: String, email: String, userName: String?, avatarImageString: String?, description: String?, sex: String?, complition: @escaping (Result<MUser, Error>) -> Void) {

        guard Validators.isFilled(userName: userName, description: description, sex: sex) else {
            complition(.failure(UserError.notFilled))
            return
        }

        let muser = MUser(userName: userName!,
                          email: email,
                          avatarStringURL: "not exist",
                          description: description!,
                          sex: sex!,
                          id: id)
        self.usersRef.document(muser.id).setData(muser.representation) { error in
            if let error = error {
                complition(.failure(error))
            } else {
                complition(.success(muser))
            }
        }
    }
}

