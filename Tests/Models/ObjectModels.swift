import State
/*

UserTypes:

a model for testing decodable/encodable types

*/

///MARK: - ObjectTypes
struct UserTypes: Model {
    let t: User
    let tOpt: User?
    let tImp: User!
    let tArr: [User]
    let tArrOpt: [User]?
    let tArrImp: [User]!
    let tDic: [String : User]
    let tDicOpt: [String : User]?
    let tDictImp: [String : User]!
    
    init(t: User, tOpt: User?, tImp: User!, tArr: [User], tArrOpt: [User]?, tArrImp: [User]!, tDic: [String : User], tDicOpt: [String : User]?, tDicImp: [String : User]!) {
        self.t = t
        self.tOpt = tOpt
        self.tImp = tImp
        self.tArr = tArr
        self.tArrOpt = tArrOpt
        self.tArrImp = tArrImp
        self.tDic = tDic
        self.tDicOpt = tDicOpt
        self.tDictImp = tDicImp
    }
}

extension UserTypes : Decodable {
    
    static func create(t: User )(tOpt: User?)(tImp: User?)(tArr: [User])(tArrOpt: [User]?)(tArrImp: [User]?)(tDic: [String : User])(tDicOpt: [String : User]?)(tDicImp: [String : User]?) -> UserTypes  {
        return UserTypes(t: t, tOpt: tOpt, tImp: tImp, tArr: tArr, tArrOpt: tArrOpt, tArrImp: tArrImp, tDic: tDic, tDicOpt: tDicOpt, tDicImp: tDicImp)
    }
    
    init?(decoder: Decoder) {
        let instance: UserTypes? = UserTypes.create
            <^> decoder.decodeModel("t")
            <*> decoder.decodeModel("t_opt") >>> asOptional
            <*> decoder.decodeModel("t_imp") >>> asOptional
            <*> decoder.decodeModelArray("t_arr")
            <*> decoder.decodeModelArray("t_arr_opt") >>> asOptional
            <*> decoder.decodeModelArray("t_arr_imp") >>> asOptional
            <*> decoder.decodeModelDictionary("t_dic")
            <*> decoder.decodeModelDictionary("t_dic_opt") >>> asOptional
            <*> decoder.decodeModelDictionary("t_dic_imp") >>> asOptional
        
        if let i = instance { self = i } else { return nil }
    }
}

extension UserTypes : Encodable {
    
    func encode(encoder: Encoder){
        encoder.encode(t, "t")
        encoder.encode(tOpt, "t_opt")
        encoder.encode(tImp, "t_imp")
        encoder.encode(tArr, "t_arr")
        encoder.encode(tArrOpt, "t_arr_opt")
        encoder.encode(tArrImp, "t_arr_imp")
        encoder.encode(tDic, "t_dic")
        encoder.encode(tDicOpt, "t_dic_opt")
        encoder.encode(tDictImp, "t_dic_imp")
    }
}

/* 
User:

a model for testing decodable/encodable types

*/

///MARK: - User
struct User {
    let id: Int
    let name: String
    let email: String?
}

extension User: Decodable, Encodable{
    static func create(id: Int)(name: String)(email: String?) -> User {
        return User(id: id, name: name, email: email)
    }

        init? (decoder: Decoder) {
           if  let instance = User.create
            <^> decoder.decode("id")
            <*> decoder.decode("name")
            <*> decoder.decode("email") >>> asOptional {
            self = instance
           } else {
            return nil
            }
        }

    func encode(encoder: Encoder) {
        encoder.encode(id, "id")
        encoder.encode(name, "name")
        encoder.encode(email, "email")
    }
}