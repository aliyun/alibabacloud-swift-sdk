import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class FindGuestCredentialsRecordRequest : Tea.TeaModel {
    public var activityId: String?

    public var dateTimeString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.dateTimeString != nil {
            map["DateTimeString"] = self.dateTimeString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
        if dict.keys.contains("DateTimeString") {
            self.dateTimeString = dict["DateTimeString"] as! String
        }
    }
}

public class FindGuestCredentialsRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChannelLevelInfo : Tea.TeaModel {
            public class LevelOneOwner : Tea.TeaModel {
                public var ownerEmpIdOrTelephone: String?

                public var ownerName: String?

                public var ownerNickName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ownerEmpIdOrTelephone != nil {
                        map["OwnerEmpIdOrTelephone"] = self.ownerEmpIdOrTelephone!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.ownerNickName != nil {
                        map["OwnerNickName"] = self.ownerNickName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OwnerEmpIdOrTelephone") {
                        self.ownerEmpIdOrTelephone = dict["OwnerEmpIdOrTelephone"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("OwnerNickName") {
                        self.ownerNickName = dict["OwnerNickName"] as! String
                    }
                }
            }
            public class LevelThreeOwner : Tea.TeaModel {
                public var ownerEmpIdOrTelephone: String?

                public var ownerName: String?

                public var ownerNickName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ownerEmpIdOrTelephone != nil {
                        map["OwnerEmpIdOrTelephone"] = self.ownerEmpIdOrTelephone!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.ownerNickName != nil {
                        map["OwnerNickName"] = self.ownerNickName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OwnerEmpIdOrTelephone") {
                        self.ownerEmpIdOrTelephone = dict["OwnerEmpIdOrTelephone"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("OwnerNickName") {
                        self.ownerNickName = dict["OwnerNickName"] as! String
                    }
                }
            }
            public class LevelTwoOwner : Tea.TeaModel {
                public var ownerEmpIdOrTelephone: String?

                public var ownerName: String?

                public var ownerNickName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ownerEmpIdOrTelephone != nil {
                        map["OwnerEmpIdOrTelephone"] = self.ownerEmpIdOrTelephone!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.ownerNickName != nil {
                        map["OwnerNickName"] = self.ownerNickName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OwnerEmpIdOrTelephone") {
                        self.ownerEmpIdOrTelephone = dict["OwnerEmpIdOrTelephone"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("OwnerNickName") {
                        self.ownerNickName = dict["OwnerNickName"] as! String
                    }
                }
            }
            public var channelId: Int64?

            public var channelName: String?

            public var levelOneChannelName: String?

            public var levelOneOwner: [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner]?

            public var levelThreeChannelName: String?

            public var levelThreeOwner: [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner]?

            public var levelTwoChannelName: String?

            public var levelTwoOwner: [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.channelName != nil {
                    map["ChannelName"] = self.channelName!
                }
                if self.levelOneChannelName != nil {
                    map["LevelOneChannelName"] = self.levelOneChannelName!
                }
                if self.levelOneOwner != nil {
                    var tmp : [Any] = []
                    for k in self.levelOneOwner! {
                        tmp.append(k.toMap())
                    }
                    map["LevelOneOwner"] = tmp
                }
                if self.levelThreeChannelName != nil {
                    map["LevelThreeChannelName"] = self.levelThreeChannelName!
                }
                if self.levelThreeOwner != nil {
                    var tmp : [Any] = []
                    for k in self.levelThreeOwner! {
                        tmp.append(k.toMap())
                    }
                    map["LevelThreeOwner"] = tmp
                }
                if self.levelTwoChannelName != nil {
                    map["LevelTwoChannelName"] = self.levelTwoChannelName!
                }
                if self.levelTwoOwner != nil {
                    var tmp : [Any] = []
                    for k in self.levelTwoOwner! {
                        tmp.append(k.toMap())
                    }
                    map["LevelTwoOwner"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! Int64
                }
                if dict.keys.contains("ChannelName") {
                    self.channelName = dict["ChannelName"] as! String
                }
                if dict.keys.contains("LevelOneChannelName") {
                    self.levelOneChannelName = dict["LevelOneChannelName"] as! String
                }
                if dict.keys.contains("LevelOneOwner") {
                    var tmp : [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner] = []
                    for v in dict["LevelOneOwner"] as! [Any] {
                        var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.levelOneOwner = tmp
                }
                if dict.keys.contains("LevelThreeChannelName") {
                    self.levelThreeChannelName = dict["LevelThreeChannelName"] as! String
                }
                if dict.keys.contains("LevelThreeOwner") {
                    var tmp : [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner] = []
                    for v in dict["LevelThreeOwner"] as! [Any] {
                        var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.levelThreeOwner = tmp
                }
                if dict.keys.contains("LevelTwoChannelName") {
                    self.levelTwoChannelName = dict["LevelTwoChannelName"] as! String
                }
                if dict.keys.contains("LevelTwoOwner") {
                    var tmp : [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner] = []
                    for v in dict["LevelTwoOwner"] as! [Any] {
                        var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.levelTwoOwner = tmp
                }
            }
        }
        public var admin: [String: Any]?

        public var channelId: Int64?

        public var channelLevelInfo: FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo?

        public var companyName: String?

        public var credentialsCode: String?

        public var credentialsName: String?

        public var idNumber: String?

        public var idType: String?

        public var name: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channelLevelInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.admin != nil {
                map["Admin"] = self.admin!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.channelLevelInfo != nil {
                map["ChannelLevelInfo"] = self.channelLevelInfo?.toMap()
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.credentialsCode != nil {
                map["CredentialsCode"] = self.credentialsCode!
            }
            if self.credentialsName != nil {
                map["CredentialsName"] = self.credentialsName!
            }
            if self.idNumber != nil {
                map["IdNumber"] = self.idNumber!
            }
            if self.idType != nil {
                map["IdType"] = self.idType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Admin") {
                self.admin = dict["Admin"] as! [String: Any]
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! Int64
            }
            if dict.keys.contains("ChannelLevelInfo") {
                var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo()
                model.fromMap(dict["ChannelLevelInfo"] as! [String: Any])
                self.channelLevelInfo = model
            }
            if dict.keys.contains("CompanyName") {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("CredentialsCode") {
                self.credentialsCode = dict["CredentialsCode"] as! String
            }
            if dict.keys.contains("CredentialsName") {
                self.credentialsName = dict["CredentialsName"] as! String
            }
            if dict.keys.contains("IdNumber") {
                self.idNumber = dict["IdNumber"] as! String
            }
            if dict.keys.contains("IdType") {
                self.idType = dict["IdType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var data: [FindGuestCredentialsRecordResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [FindGuestCredentialsRecordResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = FindGuestCredentialsRecordResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FindGuestCredentialsRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindGuestCredentialsRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FindGuestCredentialsRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindGuestTicketRecordRequest : Tea.TeaModel {
    public var activityId: String?

    public var dateTimeString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.dateTimeString != nil {
            map["DateTimeString"] = self.dateTimeString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
        if dict.keys.contains("DateTimeString") {
            self.dateTimeString = dict["DateTimeString"] as! String
        }
    }
}

public class FindGuestTicketRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChannelLevelInfo : Tea.TeaModel {
            public class LevelOneOwner : Tea.TeaModel {
                public var ownerEmpIdOrTelephone: String?

                public var ownerName: String?

                public var ownerNickName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ownerEmpIdOrTelephone != nil {
                        map["OwnerEmpIdOrTelephone"] = self.ownerEmpIdOrTelephone!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.ownerNickName != nil {
                        map["OwnerNickName"] = self.ownerNickName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OwnerEmpIdOrTelephone") {
                        self.ownerEmpIdOrTelephone = dict["OwnerEmpIdOrTelephone"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("OwnerNickName") {
                        self.ownerNickName = dict["OwnerNickName"] as! String
                    }
                }
            }
            public class LevelThreeOwner : Tea.TeaModel {
                public var ownerEmpIdOrTelephone: String?

                public var ownerName: String?

                public var ownerNickName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ownerEmpIdOrTelephone != nil {
                        map["OwnerEmpIdOrTelephone"] = self.ownerEmpIdOrTelephone!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.ownerNickName != nil {
                        map["OwnerNickName"] = self.ownerNickName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OwnerEmpIdOrTelephone") {
                        self.ownerEmpIdOrTelephone = dict["OwnerEmpIdOrTelephone"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("OwnerNickName") {
                        self.ownerNickName = dict["OwnerNickName"] as! String
                    }
                }
            }
            public class LevelTwoOwner : Tea.TeaModel {
                public var ownerEmpIdOrTelephone: String?

                public var ownerName: String?

                public var ownerNickName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ownerEmpIdOrTelephone != nil {
                        map["OwnerEmpIdOrTelephone"] = self.ownerEmpIdOrTelephone!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.ownerNickName != nil {
                        map["OwnerNickName"] = self.ownerNickName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OwnerEmpIdOrTelephone") {
                        self.ownerEmpIdOrTelephone = dict["OwnerEmpIdOrTelephone"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("OwnerNickName") {
                        self.ownerNickName = dict["OwnerNickName"] as! String
                    }
                }
            }
            public var channelId: Int64?

            public var channelName: String?

            public var levelOneChannelName: String?

            public var levelOneOwner: [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner]?

            public var levelThreeChannelName: String?

            public var levelThreeOwner: [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner]?

            public var levelTwoChannelName: String?

            public var levelTwoOwner: [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.channelName != nil {
                    map["ChannelName"] = self.channelName!
                }
                if self.levelOneChannelName != nil {
                    map["LevelOneChannelName"] = self.levelOneChannelName!
                }
                if self.levelOneOwner != nil {
                    var tmp : [Any] = []
                    for k in self.levelOneOwner! {
                        tmp.append(k.toMap())
                    }
                    map["LevelOneOwner"] = tmp
                }
                if self.levelThreeChannelName != nil {
                    map["LevelThreeChannelName"] = self.levelThreeChannelName!
                }
                if self.levelThreeOwner != nil {
                    var tmp : [Any] = []
                    for k in self.levelThreeOwner! {
                        tmp.append(k.toMap())
                    }
                    map["LevelThreeOwner"] = tmp
                }
                if self.levelTwoChannelName != nil {
                    map["LevelTwoChannelName"] = self.levelTwoChannelName!
                }
                if self.levelTwoOwner != nil {
                    var tmp : [Any] = []
                    for k in self.levelTwoOwner! {
                        tmp.append(k.toMap())
                    }
                    map["LevelTwoOwner"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! Int64
                }
                if dict.keys.contains("ChannelName") {
                    self.channelName = dict["ChannelName"] as! String
                }
                if dict.keys.contains("LevelOneChannelName") {
                    self.levelOneChannelName = dict["LevelOneChannelName"] as! String
                }
                if dict.keys.contains("LevelOneOwner") {
                    var tmp : [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner] = []
                    for v in dict["LevelOneOwner"] as! [Any] {
                        var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.levelOneOwner = tmp
                }
                if dict.keys.contains("LevelThreeChannelName") {
                    self.levelThreeChannelName = dict["LevelThreeChannelName"] as! String
                }
                if dict.keys.contains("LevelThreeOwner") {
                    var tmp : [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner] = []
                    for v in dict["LevelThreeOwner"] as! [Any] {
                        var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.levelThreeOwner = tmp
                }
                if dict.keys.contains("LevelTwoChannelName") {
                    self.levelTwoChannelName = dict["LevelTwoChannelName"] as! String
                }
                if dict.keys.contains("LevelTwoOwner") {
                    var tmp : [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner] = []
                    for v in dict["LevelTwoOwner"] as! [Any] {
                        var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.levelTwoOwner = tmp
                }
            }
        }
        public var channelLevelInfo: FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo?

        public var companyName: String?

        public var equityDates: String?

        public var healthCommitmentStatus: Int32?

        public var idNumber: String?

        public var idType: String?

        public var name: String?

        public var status: Int32?

        public var ticketCode: String?

        public var ticketName: String?

        public var ticketType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channelLevelInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelLevelInfo != nil {
                map["ChannelLevelInfo"] = self.channelLevelInfo?.toMap()
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.equityDates != nil {
                map["EquityDates"] = self.equityDates!
            }
            if self.healthCommitmentStatus != nil {
                map["HealthCommitmentStatus"] = self.healthCommitmentStatus!
            }
            if self.idNumber != nil {
                map["IdNumber"] = self.idNumber!
            }
            if self.idType != nil {
                map["IdType"] = self.idType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.ticketCode != nil {
                map["TicketCode"] = self.ticketCode!
            }
            if self.ticketName != nil {
                map["TicketName"] = self.ticketName!
            }
            if self.ticketType != nil {
                map["TicketType"] = self.ticketType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelLevelInfo") {
                var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo()
                model.fromMap(dict["ChannelLevelInfo"] as! [String: Any])
                self.channelLevelInfo = model
            }
            if dict.keys.contains("CompanyName") {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("EquityDates") {
                self.equityDates = dict["EquityDates"] as! String
            }
            if dict.keys.contains("HealthCommitmentStatus") {
                self.healthCommitmentStatus = dict["HealthCommitmentStatus"] as! Int32
            }
            if dict.keys.contains("IdNumber") {
                self.idNumber = dict["IdNumber"] as! String
            }
            if dict.keys.contains("IdType") {
                self.idType = dict["IdType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TicketCode") {
                self.ticketCode = dict["TicketCode"] as! String
            }
            if dict.keys.contains("TicketName") {
                self.ticketName = dict["TicketName"] as! String
            }
            if dict.keys.contains("TicketType") {
                self.ticketType = dict["TicketType"] as! String
            }
        }
    }
    public var data: [FindGuestTicketRecordResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [FindGuestTicketRecordResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = FindGuestTicketRecordResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FindGuestTicketRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindGuestTicketRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FindGuestTicketRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAllActivityInfoRequest : Tea.TeaModel {
    public var activityId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
    }
}

public class QueryAllActivityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activityId: Int64?

        public var channelName: String?

        public var companyName: String?

        public var customerName: String?

        public var email: String?

        public var id: Int64?

        public var isVipCustomer: String?

        public var mobile: String?

        public var QRCode: String?

        public var reportFields: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityId != nil {
                map["ActivityId"] = self.activityId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.customerName != nil {
                map["CustomerName"] = self.customerName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isVipCustomer != nil {
                map["IsVipCustomer"] = self.isVipCustomer!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.QRCode != nil {
                map["QRCode"] = self.QRCode!
            }
            if self.reportFields != nil {
                map["ReportFields"] = self.reportFields!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivityId") {
                self.activityId = dict["ActivityId"] as! Int64
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("CompanyName") {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("CustomerName") {
                self.customerName = dict["CustomerName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsVipCustomer") {
                self.isVipCustomer = dict["IsVipCustomer"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("QRCode") {
                self.QRCode = dict["QRCode"] as! String
            }
            if dict.keys.contains("ReportFields") {
                self.reportFields = dict["ReportFields"] as! String
            }
        }
    }
    public var code: String?

    public var data: [QueryAllActivityInfoResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QueryAllActivityInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryAllActivityInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAllActivityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAllActivityInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAllActivityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySingleActivityInfoRequest : Tea.TeaModel {
    public var activityId: String?

    public var companyName: String?

    public var customerName: String?

    public var mobile: String?

    public var QRCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.customerName != nil {
            map["CustomerName"] = self.customerName!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.QRCode != nil {
            map["QRCode"] = self.QRCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
        if dict.keys.contains("CompanyName") {
            self.companyName = dict["CompanyName"] as! String
        }
        if dict.keys.contains("CustomerName") {
            self.customerName = dict["CustomerName"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("QRCode") {
            self.QRCode = dict["QRCode"] as! String
        }
    }
}

public class QuerySingleActivityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activityId: Int64?

        public var channelName: String?

        public var companyName: String?

        public var customerName: String?

        public var email: String?

        public var id: Int64?

        public var isVipCustomer: String?

        public var mobile: String?

        public var QRCode: String?

        public var reportFields: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityId != nil {
                map["ActivityId"] = self.activityId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.customerName != nil {
                map["CustomerName"] = self.customerName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isVipCustomer != nil {
                map["IsVipCustomer"] = self.isVipCustomer!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.QRCode != nil {
                map["QRCode"] = self.QRCode!
            }
            if self.reportFields != nil {
                map["ReportFields"] = self.reportFields!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivityId") {
                self.activityId = dict["ActivityId"] as! Int64
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("CompanyName") {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("CustomerName") {
                self.customerName = dict["CustomerName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsVipCustomer") {
                self.isVipCustomer = dict["IsVipCustomer"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("QRCode") {
                self.QRCode = dict["QRCode"] as! String
            }
            if dict.keys.contains("ReportFields") {
                self.reportFields = dict["ReportFields"] as! String
            }
        }
    }
    public var code: String?

    public var data: [QuerySingleActivityInfoResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QuerySingleActivityInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QuerySingleActivityInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySingleActivityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySingleActivityInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySingleActivityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncSignInInfoRequest : Tea.TeaModel {
    public var activityId: String?

    public var QRCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.QRCode != nil {
            map["QRCode"] = self.QRCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
        if dict.keys.contains("QRCode") {
            self.QRCode = dict["QRCode"] as! String
        }
    }
}

public class SyncSignInInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SyncSignInInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncSignInInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SyncSignInInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
