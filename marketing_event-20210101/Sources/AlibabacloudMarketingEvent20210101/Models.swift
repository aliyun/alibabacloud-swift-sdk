import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddSumRecordFlowPopRequest : Tea.TeaModel {
    public var activityId: String?

    public var code: String?

    public var conferenceName: String?

    public var deviceId: String?

    public var entryName: String?

    public var idcard: String?

    public var signTime: String?

    public var type: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.conferenceName != nil {
            map["ConferenceName"] = self.conferenceName!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.entryName != nil {
            map["EntryName"] = self.entryName!
        }
        if self.idcard != nil {
            map["Idcard"] = self.idcard!
        }
        if self.signTime != nil {
            map["SignTime"] = self.signTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConferenceName") {
            self.conferenceName = dict["ConferenceName"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("EntryName") {
            self.entryName = dict["EntryName"] as! String
        }
        if dict.keys.contains("Idcard") {
            self.idcard = dict["Idcard"] as! String
        }
        if dict.keys.contains("SignTime") {
            self.signTime = dict["SignTime"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class AddSumRecordFlowPopResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddSumRecordFlowPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSumRecordFlowPopResponseBody?

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
            var model = AddSumRecordFlowPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindExhibitorRfidPopRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var deviceId: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var guestTicketRecordId: Int64?

    public var id: Int64?

    public var rfid: String?

    public var ticketCode: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.guestTicketRecordId != nil {
            map["GuestTicketRecordId"] = self.guestTicketRecordId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.rfid != nil {
            map["Rfid"] = self.rfid!
        }
        if self.ticketCode != nil {
            map["TicketCode"] = self.ticketCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("GuestTicketRecordId") {
            self.guestTicketRecordId = dict["GuestTicketRecordId"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Rfid") {
            self.rfid = dict["Rfid"] as! String
        }
        if dict.keys.contains("TicketCode") {
            self.ticketCode = dict["TicketCode"] as! String
        }
    }
}

public class BindExhibitorRfidPopResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindExhibitorRfidPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindExhibitorRfidPopResponseBody?

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
            var model = BindExhibitorRfidPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindGuestRfidPopRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var deviceId: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var guestTicketRecordId: Int64?

    public var id: Int64?

    public var rfid: String?

    public var ticketCode: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.guestTicketRecordId != nil {
            map["GuestTicketRecordId"] = self.guestTicketRecordId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.rfid != nil {
            map["Rfid"] = self.rfid!
        }
        if self.ticketCode != nil {
            map["TicketCode"] = self.ticketCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("GuestTicketRecordId") {
            self.guestTicketRecordId = dict["GuestTicketRecordId"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Rfid") {
            self.rfid = dict["Rfid"] as! String
        }
        if dict.keys.contains("TicketCode") {
            self.ticketCode = dict["TicketCode"] as! String
        }
    }
}

public class BindGuestRfidPopResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindGuestRfidPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindGuestRfidPopResponseBody?

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
            var model = BindGuestRfidPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckNFCBindPopRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var nfcId: String?

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
        if self.nfcId != nil {
            map["NfcId"] = self.nfcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("NfcId") {
            self.nfcId = dict["NfcId"] as! String
        }
    }
}

public class CheckNFCBindPopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isGlobal: Int32?

        public var isSign: Bool?

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
            if self.isGlobal != nil {
                map["IsGlobal"] = self.isGlobal!
            }
            if self.isSign != nil {
                map["IsSign"] = self.isSign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsGlobal") {
                self.isGlobal = dict["IsGlobal"] as! Int32
            }
            if dict.keys.contains("IsSign") {
                self.isSign = dict["IsSign"] as! Bool
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: CheckNFCBindPopResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CheckNFCBindPopResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckNFCBindPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckNFCBindPopResponseBody?

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
            var model = CheckNFCBindPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindGuestCredentialsRecordRequest : Tea.TeaModel {
    public var activityId: String?

    public var dateTimeString: String?

    public var endDateTime: String?

    public var startDateTime: String?

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
        if self.endDateTime != nil {
            map["EndDateTime"] = self.endDateTime!
        }
        if self.startDateTime != nil {
            map["StartDateTime"] = self.startDateTime!
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
        if dict.keys.contains("EndDateTime") {
            self.endDateTime = dict["EndDateTime"] as! String
        }
        if dict.keys.contains("StartDateTime") {
            self.startDateTime = dict["StartDateTime"] as! String
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

    public var endDateTime: String?

    public var startDateTime: String?

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
        if self.endDateTime != nil {
            map["EndDateTime"] = self.endDateTime!
        }
        if self.startDateTime != nil {
            map["StartDateTime"] = self.startDateTime!
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
        if dict.keys.contains("EndDateTime") {
            self.endDateTime = dict["EndDateTime"] as! String
        }
        if dict.keys.contains("StartDateTime") {
            self.startDateTime = dict["StartDateTime"] as! String
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

public class QueryOrderSessionListPopRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var nfcId: String?

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
        if self.nfcId != nil {
            map["NfcId"] = self.nfcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("NfcId") {
            self.nfcId = dict["NfcId"] as! String
        }
    }
}

public class QueryOrderSessionListPopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sessionId: Int64?

        public var signInDate: String?

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
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.signInDate != nil {
                map["SignInDate"] = self.signInDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! Int64
            }
            if dict.keys.contains("SignInDate") {
                self.signInDate = dict["SignInDate"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [QueryOrderSessionListPopResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QueryOrderSessionListPopResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryOrderSessionListPopResponseBody.Data()
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
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryOrderSessionListPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrderSessionListPopResponseBody?

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
            var model = QueryOrderSessionListPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySessionByActivityIdPopRequest : Tea.TeaModel {
    public var activityId: Int64?

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
            self.activityId = dict["ActivityId"] as! Int64
        }
    }
}

public class QuerySessionByActivityIdPopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var descriptionEn: String?

        public var endDateTime: String?

        public var id: Int64?

        public var location: String?

        public var name: String?

        public var nameEn: String?

        public var startDateTime: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionEn != nil {
                map["DescriptionEn"] = self.descriptionEn!
            }
            if self.endDateTime != nil {
                map["EndDateTime"] = self.endDateTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameEn != nil {
                map["NameEn"] = self.nameEn!
            }
            if self.startDateTime != nil {
                map["StartDateTime"] = self.startDateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DescriptionEn") {
                self.descriptionEn = dict["DescriptionEn"] as! String
            }
            if dict.keys.contains("EndDateTime") {
                self.endDateTime = dict["EndDateTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameEn") {
                self.nameEn = dict["NameEn"] as! String
            }
            if dict.keys.contains("StartDateTime") {
                self.startDateTime = dict["StartDateTime"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [QuerySessionByActivityIdPopResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QuerySessionByActivityIdPopResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QuerySessionByActivityIdPopResponseBody.Data()
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
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySessionByActivityIdPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySessionByActivityIdPopResponseBody?

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
            var model = QuerySessionByActivityIdPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySessionListPopRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var nfcId: String?

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
        if self.nfcId != nil {
            map["NfcId"] = self.nfcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("NfcId") {
            self.nfcId = dict["NfcId"] as! String
        }
    }
}

public class QuerySessionListPopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var endTime: String?

        public var id: Int64?

        public var location: String?

        public var name: String?

        public var startTime: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [QuerySessionListPopResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QuerySessionListPopResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QuerySessionListPopResponseBody.Data()
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
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySessionListPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySessionListPopResponseBody?

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
            var model = QuerySessionListPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySignInRecordPopRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var endTime: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QuerySignInRecordPopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var event: String?

        public var rfid: String?

        public var sessionId: Int64?

        public var time: String?

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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.rfid != nil {
                map["Rfid"] = self.rfid!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("Rfid") {
                self.rfid = dict["Rfid"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! Int64
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [QuerySignInRecordPopResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QuerySignInRecordPopResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QuerySignInRecordPopResponseBody.Data()
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
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySignInRecordPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySignInRecordPopResponseBody?

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
            var model = QuerySignInRecordPopResponseBody()
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

public class TicketOrCredentialsSignInPopRequest : Tea.TeaModel {
    public var activityId: String?

    public var code: String?

    public var conferenceName: String?

    public var deviceId: String?

    public var entryName: String?

    public var idcard: String?

    public var signTime: String?

    public var type: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.conferenceName != nil {
            map["ConferenceName"] = self.conferenceName!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.entryName != nil {
            map["EntryName"] = self.entryName!
        }
        if self.idcard != nil {
            map["Idcard"] = self.idcard!
        }
        if self.signTime != nil {
            map["SignTime"] = self.signTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") {
            self.activityId = dict["ActivityId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConferenceName") {
            self.conferenceName = dict["ConferenceName"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("EntryName") {
            self.entryName = dict["EntryName"] as! String
        }
        if dict.keys.contains("Idcard") {
            self.idcard = dict["Idcard"] as! String
        }
        if dict.keys.contains("SignTime") {
            self.signTime = dict["SignTime"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class TicketOrCredentialsSignInPopResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TicketOrCredentialsSignInPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TicketOrCredentialsSignInPopResponseBody?

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
            var model = TicketOrCredentialsSignInPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCredentialsStatusPopRequest : Tea.TeaModel {
    public var code: String?

    public var proxyRecipientName: String?

    public var proxyRecipientPhoneNumber: String?

    public var receiptLocation: String?

    public var time: String?

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
        if self.proxyRecipientName != nil {
            map["ProxyRecipientName"] = self.proxyRecipientName!
        }
        if self.proxyRecipientPhoneNumber != nil {
            map["ProxyRecipientPhoneNumber"] = self.proxyRecipientPhoneNumber!
        }
        if self.receiptLocation != nil {
            map["ReceiptLocation"] = self.receiptLocation!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ProxyRecipientName") {
            self.proxyRecipientName = dict["ProxyRecipientName"] as! String
        }
        if dict.keys.contains("ProxyRecipientPhoneNumber") {
            self.proxyRecipientPhoneNumber = dict["ProxyRecipientPhoneNumber"] as! String
        }
        if dict.keys.contains("ReceiptLocation") {
            self.receiptLocation = dict["ReceiptLocation"] as! String
        }
        if dict.keys.contains("Time") {
            self.time = dict["Time"] as! String
        }
    }
}

public class UpdateCredentialsStatusPopResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateCredentialsStatusPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCredentialsStatusPopResponseBody?

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
            var model = UpdateCredentialsStatusPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTicketRecordByticketCodePopRequest : Tea.TeaModel {
    public var agendaId: String?

    public var code: String?

    public var event: String?

    public var sceneId: String?

    public var time: String?

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
        if self.agendaId != nil {
            map["AgendaId"] = self.agendaId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgendaId") {
            self.agendaId = dict["AgendaId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Event") {
            self.event = dict["Event"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Time") {
            self.time = dict["Time"] as! String
        }
    }
}

public class UpdateTicketRecordByticketCodePopResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateTicketRecordByticketCodePopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTicketRecordByticketCodePopResponseBody?

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
            var model = UpdateTicketRecordByticketCodePopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
