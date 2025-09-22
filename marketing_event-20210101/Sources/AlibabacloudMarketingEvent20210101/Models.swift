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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ConferenceName"] as? String {
            self.conferenceName = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["EntryName"] as? String {
            self.entryName = value
        }
        if let value = dict["Idcard"] as? String {
            self.idcard = value
        }
        if let value = dict["SignTime"] as? String {
            self.signTime = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddSumRecordFlowPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["GuestTicketRecordId"] as? Int64 {
            self.guestTicketRecordId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Rfid"] as? String {
            self.rfid = value
        }
        if let value = dict["TicketCode"] as? String {
            self.ticketCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindExhibitorRfidPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["GuestTicketRecordId"] as? Int64 {
            self.guestTicketRecordId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Rfid"] as? String {
            self.rfid = value
        }
        if let value = dict["TicketCode"] as? String {
            self.ticketCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindGuestRfidPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
        }
        if let value = dict["NfcId"] as? String {
            self.nfcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsGlobal"] as? Int32 {
                self.isGlobal = value
            }
            if let value = dict["IsSign"] as? Bool {
                self.isSign = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CheckNFCBindPopResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckNFCBindPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
        }
        if let value = dict["DateTimeString"] as? String {
            self.dateTimeString = value
        }
        if let value = dict["EndDateTime"] as? String {
            self.endDateTime = value
        }
        if let value = dict["StartDateTime"] as? String {
            self.startDateTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OwnerEmpIdOrTelephone"] as? String {
                        self.ownerEmpIdOrTelephone = value
                    }
                    if let value = dict["OwnerName"] as? String {
                        self.ownerName = value
                    }
                    if let value = dict["OwnerNickName"] as? String {
                        self.ownerNickName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OwnerEmpIdOrTelephone"] as? String {
                        self.ownerEmpIdOrTelephone = value
                    }
                    if let value = dict["OwnerName"] as? String {
                        self.ownerName = value
                    }
                    if let value = dict["OwnerNickName"] as? String {
                        self.ownerNickName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OwnerEmpIdOrTelephone"] as? String {
                        self.ownerEmpIdOrTelephone = value
                    }
                    if let value = dict["OwnerName"] as? String {
                        self.ownerName = value
                    }
                    if let value = dict["OwnerNickName"] as? String {
                        self.ownerNickName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChannelId"] as? Int64 {
                    self.channelId = value
                }
                if let value = dict["ChannelName"] as? String {
                    self.channelName = value
                }
                if let value = dict["LevelOneChannelName"] as? String {
                    self.levelOneChannelName = value
                }
                if let value = dict["LevelOneOwner"] as? [Any?] {
                    var tmp : [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner] = []
                    for v in value {
                        if v != nil {
                            var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.levelOneOwner = tmp
                }
                if let value = dict["LevelThreeChannelName"] as? String {
                    self.levelThreeChannelName = value
                }
                if let value = dict["LevelThreeOwner"] as? [Any?] {
                    var tmp : [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner] = []
                    for v in value {
                        if v != nil {
                            var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.levelThreeOwner = tmp
                }
                if let value = dict["LevelTwoChannelName"] as? String {
                    self.levelTwoChannelName = value
                }
                if let value = dict["LevelTwoOwner"] as? [Any?] {
                    var tmp : [FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner] = []
                    for v in value {
                        if v != nil {
                            var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Admin"] as? [String: Any] {
                self.admin = value
            }
            if let value = dict["ChannelId"] as? Int64 {
                self.channelId = value
            }
            if let value = dict["ChannelLevelInfo"] as? [String: Any?] {
                var model = FindGuestCredentialsRecordResponseBody.Data.ChannelLevelInfo()
                model.fromMap(value)
                self.channelLevelInfo = model
            }
            if let value = dict["CompanyName"] as? String {
                self.companyName = value
            }
            if let value = dict["CredentialsCode"] as? String {
                self.credentialsCode = value
            }
            if let value = dict["CredentialsName"] as? String {
                self.credentialsName = value
            }
            if let value = dict["IdNumber"] as? String {
                self.idNumber = value
            }
            if let value = dict["IdType"] as? String {
                self.idType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [FindGuestCredentialsRecordResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = FindGuestCredentialsRecordResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FindGuestCredentialsRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
        }
        if let value = dict["DateTimeString"] as? String {
            self.dateTimeString = value
        }
        if let value = dict["EndDateTime"] as? String {
            self.endDateTime = value
        }
        if let value = dict["StartDateTime"] as? String {
            self.startDateTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OwnerEmpIdOrTelephone"] as? String {
                        self.ownerEmpIdOrTelephone = value
                    }
                    if let value = dict["OwnerName"] as? String {
                        self.ownerName = value
                    }
                    if let value = dict["OwnerNickName"] as? String {
                        self.ownerNickName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OwnerEmpIdOrTelephone"] as? String {
                        self.ownerEmpIdOrTelephone = value
                    }
                    if let value = dict["OwnerName"] as? String {
                        self.ownerName = value
                    }
                    if let value = dict["OwnerNickName"] as? String {
                        self.ownerNickName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OwnerEmpIdOrTelephone"] as? String {
                        self.ownerEmpIdOrTelephone = value
                    }
                    if let value = dict["OwnerName"] as? String {
                        self.ownerName = value
                    }
                    if let value = dict["OwnerNickName"] as? String {
                        self.ownerNickName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChannelId"] as? Int64 {
                    self.channelId = value
                }
                if let value = dict["ChannelName"] as? String {
                    self.channelName = value
                }
                if let value = dict["LevelOneChannelName"] as? String {
                    self.levelOneChannelName = value
                }
                if let value = dict["LevelOneOwner"] as? [Any?] {
                    var tmp : [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner] = []
                    for v in value {
                        if v != nil {
                            var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelOneOwner()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.levelOneOwner = tmp
                }
                if let value = dict["LevelThreeChannelName"] as? String {
                    self.levelThreeChannelName = value
                }
                if let value = dict["LevelThreeOwner"] as? [Any?] {
                    var tmp : [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner] = []
                    for v in value {
                        if v != nil {
                            var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelThreeOwner()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.levelThreeOwner = tmp
                }
                if let value = dict["LevelTwoChannelName"] as? String {
                    self.levelTwoChannelName = value
                }
                if let value = dict["LevelTwoOwner"] as? [Any?] {
                    var tmp : [FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner] = []
                    for v in value {
                        if v != nil {
                            var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo.LevelTwoOwner()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public var ticketReceiveDates: String?

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
            if self.ticketReceiveDates != nil {
                map["TicketReceiveDates"] = self.ticketReceiveDates!
            }
            if self.ticketType != nil {
                map["TicketType"] = self.ticketType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChannelLevelInfo"] as? [String: Any?] {
                var model = FindGuestTicketRecordResponseBody.Data.ChannelLevelInfo()
                model.fromMap(value)
                self.channelLevelInfo = model
            }
            if let value = dict["CompanyName"] as? String {
                self.companyName = value
            }
            if let value = dict["EquityDates"] as? String {
                self.equityDates = value
            }
            if let value = dict["HealthCommitmentStatus"] as? Int32 {
                self.healthCommitmentStatus = value
            }
            if let value = dict["IdNumber"] as? String {
                self.idNumber = value
            }
            if let value = dict["IdType"] as? String {
                self.idType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TicketCode"] as? String {
                self.ticketCode = value
            }
            if let value = dict["TicketName"] as? String {
                self.ticketName = value
            }
            if let value = dict["TicketReceiveDates"] as? String {
                self.ticketReceiveDates = value
            }
            if let value = dict["TicketType"] as? String {
                self.ticketType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [FindGuestTicketRecordResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = FindGuestTicketRecordResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FindGuestTicketRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityId"] as? Int64 {
                self.activityId = value
            }
            if let value = dict["ChannelName"] as? String {
                self.channelName = value
            }
            if let value = dict["CompanyName"] as? String {
                self.companyName = value
            }
            if let value = dict["CustomerName"] as? String {
                self.customerName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IsVipCustomer"] as? String {
                self.isVipCustomer = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["QRCode"] as? String {
                self.QRCode = value
            }
            if let value = dict["ReportFields"] as? String {
                self.reportFields = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QueryAllActivityInfoResponseBody.Data]?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryAllActivityInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryAllActivityInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryAllActivityInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
        }
        if let value = dict["NfcId"] as? String {
            self.nfcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SessionId"] as? Int64 {
                self.sessionId = value
            }
            if let value = dict["SignInDate"] as? String {
                self.signInDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryOrderSessionListPopResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryOrderSessionListPopResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryOrderSessionListPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DescriptionEn"] as? String {
                self.descriptionEn = value
            }
            if let value = dict["EndDateTime"] as? String {
                self.endDateTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NameEn"] as? String {
                self.nameEn = value
            }
            if let value = dict["StartDateTime"] as? String {
                self.startDateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySessionByActivityIdPopResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySessionByActivityIdPopResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySessionByActivityIdPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
        }
        if let value = dict["NfcId"] as? String {
            self.nfcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySessionListPopResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySessionListPopResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySessionListPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? Int64 {
            self.activityId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Event"] as? String {
                self.event = value
            }
            if let value = dict["Rfid"] as? String {
                self.rfid = value
            }
            if let value = dict["SessionId"] as? Int64 {
                self.sessionId = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySignInRecordPopResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySignInRecordPopResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySignInRecordPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
        }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["CustomerName"] as? String {
            self.customerName = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["QRCode"] as? String {
            self.QRCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityId"] as? Int64 {
                self.activityId = value
            }
            if let value = dict["ChannelName"] as? String {
                self.channelName = value
            }
            if let value = dict["CompanyName"] as? String {
                self.companyName = value
            }
            if let value = dict["CustomerName"] as? String {
                self.customerName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IsVipCustomer"] as? String {
                self.isVipCustomer = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["QRCode"] as? String {
                self.QRCode = value
            }
            if let value = dict["ReportFields"] as? String {
                self.reportFields = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QuerySingleActivityInfoResponseBody.Data]?

    public var httpStatusCode: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySingleActivityInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySingleActivityInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySingleActivityInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
        }
        if let value = dict["QRCode"] as? String {
            self.QRCode = value
        }
    }
}

public class SyncSignInInfoResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Int32?

    public var httpStatusCode: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SyncSignInInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActivityId"] as? String {
            self.activityId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ConferenceName"] as? String {
            self.conferenceName = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["EntryName"] as? String {
            self.entryName = value
        }
        if let value = dict["Idcard"] as? String {
            self.idcard = value
        }
        if let value = dict["SignTime"] as? String {
            self.signTime = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TicketOrCredentialsSignInPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ProxyRecipientName"] as? String {
            self.proxyRecipientName = value
        }
        if let value = dict["ProxyRecipientPhoneNumber"] as? String {
            self.proxyRecipientPhoneNumber = value
        }
        if let value = dict["ReceiptLocation"] as? String {
            self.receiptLocation = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateCredentialsStatusPopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgendaId"] as? String {
            self.agendaId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTicketRecordByticketCodePopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
