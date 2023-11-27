import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ResultUserMuteSettingsValue : Tea.TeaModel {
    public var mute: Bool?

    public var expireTime: Int64?

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
        if self.mute != nil {
            map["Mute"] = self.mute!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mute") && dict["Mute"] != nil {
            self.mute = dict["Mute"] as! Bool
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
    }
}

public class ResultImportMessageResultValue : Tea.TeaModel {
    public var result: Int64?

    public var msgId: String?

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
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.msgId != nil {
            map["msgId"] = self.msgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Int64
        }
        if dict.keys.contains("msgId") && dict["msgId"] != nil {
            self.msgId = dict["msgId"] as! String
        }
    }
}

public class RequestParamsUserConversationsValue : Tea.TeaModel {
    public var top: Bool?

    public var redPoint: Int64?

    public var mute: Bool?

    public var visible: Bool?

    public var createTime: Int64?

    public var modifyTime: Int64?

    public var userExtensions: [String: String]?

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
        if self.top != nil {
            map["Top"] = self.top!
        }
        if self.redPoint != nil {
            map["RedPoint"] = self.redPoint!
        }
        if self.mute != nil {
            map["Mute"] = self.mute!
        }
        if self.visible != nil {
            map["Visible"] = self.visible!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.userExtensions != nil {
            map["UserExtensions"] = self.userExtensions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Top") && dict["Top"] != nil {
            self.top = dict["Top"] as! Bool
        }
        if dict.keys.contains("RedPoint") && dict["RedPoint"] != nil {
            self.redPoint = dict["RedPoint"] as! Int64
        }
        if dict.keys.contains("Mute") && dict["Mute"] != nil {
            self.mute = dict["Mute"] as! Bool
        }
        if dict.keys.contains("Visible") && dict["Visible"] != nil {
            self.visible = dict["Visible"] as! Bool
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! Int64
        }
        if dict.keys.contains("UserExtensions") && dict["UserExtensions"] != nil {
            self.userExtensions = dict["UserExtensions"] as! [String: String]
        }
    }
}

public class RequestParamsOptionsSingleChatCreateRequestUserConversationValue : Tea.TeaModel {
    public var userExtensions: [String: String]?

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
        if self.userExtensions != nil {
            map["UserExtensions"] = self.userExtensions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserExtensions") && dict["UserExtensions"] != nil {
            self.userExtensions = dict["UserExtensions"] as! [String: String]
        }
    }
}

public class AddGroupMembersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public class InitMembers : Tea.TeaModel {
            public var appUid: String?

            public var extensions: [String: String]?

            public var joinTime: Int64?

            public var nick: String?

            public var role: Int32?

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
                if self.appUid != nil {
                    map["AppUid"] = self.appUid!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                    self.appUid = dict["AppUid"] as! String
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("Nick") && dict["Nick"] != nil {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! Int32
                }
            }
        }
        public var appCid: String?

        public var initMembers: [AddGroupMembersRequest.RequestParams.InitMembers]?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.initMembers != nil {
                var tmp : [Any] = []
                for k in self.initMembers! {
                    tmp.append(k.toMap())
                }
                map["InitMembers"] = tmp
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("InitMembers") && dict["InitMembers"] != nil {
                var tmp : [AddGroupMembersRequest.RequestParams.InitMembers] = []
                for v in dict["InitMembers"] as! [Any] {
                    var model = AddGroupMembersRequest.RequestParams.InitMembers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.initMembers = tmp
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: AddGroupMembersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = AddGroupMembersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class AddGroupMembersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class AddGroupMembersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddGroupSilenceBlacklistRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var members: [String]?

        public var operatorAppUid: String?

        public var silenceDuration: Int64?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.members != nil {
                map["Members"] = self.members!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            if self.silenceDuration != nil {
                map["SilenceDuration"] = self.silenceDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                self.members = dict["Members"] as! [String]
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
            if dict.keys.contains("SilenceDuration") && dict["SilenceDuration"] != nil {
                self.silenceDuration = dict["SilenceDuration"] as! Int64
            }
        }
    }
    public var appId: String?

    public var requestParams: AddGroupSilenceBlacklistRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = AddGroupSilenceBlacklistRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class AddGroupSilenceBlacklistShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class AddGroupSilenceBlacklistResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddGroupSilenceBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGroupSilenceBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddGroupSilenceBlacklistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddGroupSilenceWhitelistRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var members: [String]?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.members != nil {
                map["Members"] = self.members!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                self.members = dict["Members"] as! [String]
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: AddGroupSilenceWhitelistRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = AddGroupSilenceWhitelistRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class AddGroupSilenceWhitelistShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class AddGroupSilenceWhitelistResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddGroupSilenceWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGroupSilenceWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddGroupSilenceWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindInterconnectionCidRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var aimAppCid: String?

        public var dingTalkCid: String?

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
            if self.aimAppCid != nil {
                map["AimAppCid"] = self.aimAppCid!
            }
            if self.dingTalkCid != nil {
                map["DingTalkCid"] = self.dingTalkCid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AimAppCid") && dict["AimAppCid"] != nil {
                self.aimAppCid = dict["AimAppCid"] as! String
            }
            if dict.keys.contains("DingTalkCid") && dict["DingTalkCid"] != nil {
                self.dingTalkCid = dict["DingTalkCid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: BindInterconnectionCidRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = BindInterconnectionCidRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class BindInterconnectionCidShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class BindInterconnectionCidResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindInterconnectionCidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindInterconnectionCidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BindInterconnectionCidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindInterconnectionUidRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appUid: String?

        public var dingTalkUid: String?

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
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.dingTalkUid != nil {
                map["DingTalkUid"] = self.dingTalkUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("DingTalkUid") && dict["DingTalkUid"] != nil {
                self.dingTalkUid = dict["DingTalkUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: BindInterconnectionUidRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = BindInterconnectionUidRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class BindInterconnectionUidShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class BindInterconnectionUidResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindInterconnectionUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindInterconnectionUidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BindInterconnectionUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelSilenceAllGroupMembersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: CancelSilenceAllGroupMembersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = CancelSilenceAllGroupMembersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class CancelSilenceAllGroupMembersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class CancelSilenceAllGroupMembersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelSilenceAllGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelSilenceAllGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelSilenceAllGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public class InitMembers : Tea.TeaModel {
            public var appUid: String?

            public var extensions: [String: String]?

            public var joinTime: Int64?

            public var nick: String?

            public var role: Int32?

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
                if self.appUid != nil {
                    map["AppUid"] = self.appUid!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                    self.appUid = dict["AppUid"] as! String
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("Nick") && dict["Nick"] != nil {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! Int32
                }
            }
        }
        public var creatorAppUid: String?

        public var entranceId: String?

        public var extensions: [String: String]?

        public var iconMediaId: String?

        public var initMembers: [CreateGroupRequest.RequestParams.InitMembers]?

        public var title: String?

        public var uuid: String?

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
            if self.creatorAppUid != nil {
                map["CreatorAppUid"] = self.creatorAppUid!
            }
            if self.entranceId != nil {
                map["EntranceId"] = self.entranceId!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.iconMediaId != nil {
                map["IconMediaId"] = self.iconMediaId!
            }
            if self.initMembers != nil {
                var tmp : [Any] = []
                for k in self.initMembers! {
                    tmp.append(k.toMap())
                }
                map["InitMembers"] = tmp
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatorAppUid") && dict["CreatorAppUid"] != nil {
                self.creatorAppUid = dict["CreatorAppUid"] as! String
            }
            if dict.keys.contains("EntranceId") && dict["EntranceId"] != nil {
                self.entranceId = dict["EntranceId"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("IconMediaId") && dict["IconMediaId"] != nil {
                self.iconMediaId = dict["IconMediaId"] as! String
            }
            if dict.keys.contains("InitMembers") && dict["InitMembers"] != nil {
                var tmp : [CreateGroupRequest.RequestParams.InitMembers] = []
                for v in dict["InitMembers"] as! [Any] {
                    var model = CreateGroupRequest.RequestParams.InitMembers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.initMembers = tmp
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: CreateGroupRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = CreateGroupRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class CreateGroupShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appCid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CreateGroupResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = CreateGroupResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRoomRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

        public var ownerId: String?

        public var ownerNick: String?

        public var title: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.ownerId != nil {
                map["ownerId"] = self.ownerId!
            }
            if self.ownerNick != nil {
                map["ownerNick"] = self.ownerNick!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("ownerId") && dict["ownerId"] != nil {
                self.ownerId = dict["ownerId"] as! String
            }
            if dict.keys.contains("ownerNick") && dict["ownerNick"] != nil {
                self.ownerNick = dict["ownerNick"] as! String
            }
            if dict.keys.contains("title") && dict["title"] != nil {
                self.title = dict["title"] as! String
            }
        }
    }
    public var request: CreateRoomRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = CreateRoomRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class CreateRoomResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var roomId: String?

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
            if self.roomId != nil {
                map["roomId"] = self.roomId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("roomId") && dict["roomId"] != nil {
                self.roomId = dict["roomId"] as! String
            }
        }
    }
    public var requestId: String?

    public var responseSuccess: Bool?

    public var result: CreateRoomResponseBody.Result?

    public var errorCode: String?

    public var errorMsg: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = CreateRoomResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") && dict["errorMsg"] != nil {
            self.errorMsg = dict["errorMsg"] as! String
        }
    }
}

public class CreateRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DestroyRoomRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

        public var openId: String?

        public var roomId: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.openId != nil {
                map["openId"] = self.openId!
            }
            if self.roomId != nil {
                map["roomId"] = self.roomId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("openId") && dict["openId"] != nil {
                self.openId = dict["openId"] as! String
            }
            if dict.keys.contains("roomId") && dict["roomId"] != nil {
                self.roomId = dict["roomId"] as! String
            }
        }
    }
    public var request: DestroyRoomRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = DestroyRoomRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class DestroyRoomResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var responseSuccess: Bool?

    public var errorCode: String?

    public var errorMsg: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") && dict["errorMsg"] != nil {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
        }
    }
}

public class DestroyRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DestroyRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DestroyRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DismissGroupRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: DismissGroupRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = DismissGroupRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class DismissGroupShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class DismissGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DismissGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DismissGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DismissGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCommonConfigRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class GetCommonConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommonConfig : Tea.TeaModel {
            public class AppConfigs : Tea.TeaModel {
                public var appKey: String?

                public var platform: String?

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
                    if self.appKey != nil {
                        map["AppKey"] = self.appKey!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
                        self.appKey = dict["AppKey"] as! String
                    }
                    if dict.keys.contains("Platform") && dict["Platform"] != nil {
                        self.platform = dict["Platform"] as! String
                    }
                }
            }
            public class LoginConfig : Tea.TeaModel {
                public var loginType: Int32?

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
                    if self.loginType != nil {
                        map["LoginType"] = self.loginType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LoginType") && dict["LoginType"] != nil {
                        self.loginType = dict["LoginType"] as! Int32
                    }
                }
            }
            public var appConfigs: [GetCommonConfigResponseBody.Result.CommonConfig.AppConfigs]?

            public var loginConfig: GetCommonConfigResponseBody.Result.CommonConfig.LoginConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.loginConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.appConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["AppConfigs"] = tmp
                }
                if self.loginConfig != nil {
                    map["LoginConfig"] = self.loginConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppConfigs") && dict["AppConfigs"] != nil {
                    var tmp : [GetCommonConfigResponseBody.Result.CommonConfig.AppConfigs] = []
                    for v in dict["AppConfigs"] as! [Any] {
                        var model = GetCommonConfigResponseBody.Result.CommonConfig.AppConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.appConfigs = tmp
                }
                if dict.keys.contains("LoginConfig") && dict["LoginConfig"] != nil {
                    var model = GetCommonConfigResponseBody.Result.CommonConfig.LoginConfig()
                    model.fromMap(dict["LoginConfig"] as! [String: Any])
                    self.loginConfig = model
                }
            }
        }
        public var commonConfig: GetCommonConfigResponseBody.Result.CommonConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commonConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commonConfig != nil {
                map["CommonConfig"] = self.commonConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommonConfig") && dict["CommonConfig"] != nil {
                var model = GetCommonConfigResponseBody.Result.CommonConfig()
                model.fromMap(dict["CommonConfig"] as! [String: Any])
                self.commonConfig = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetCommonConfigResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetCommonConfigResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCommonConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommonConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetCommonConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupByIdRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: GetGroupByIdRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetGroupByIdRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetGroupByIdShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetGroupByIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appCid: String?

        public var ceateTime: Int64?

        public var extensions: [String: String]?

        public var iconMediaId: String?

        public var memberCount: Int32?

        public var memberLimit: Int32?

        public var ownerAppUid: String?

        public var title: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.ceateTime != nil {
                map["CeateTime"] = self.ceateTime!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.iconMediaId != nil {
                map["IconMediaId"] = self.iconMediaId!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.memberLimit != nil {
                map["MemberLimit"] = self.memberLimit!
            }
            if self.ownerAppUid != nil {
                map["OwnerAppUid"] = self.ownerAppUid!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("CeateTime") && dict["CeateTime"] != nil {
                self.ceateTime = dict["CeateTime"] as! Int64
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("IconMediaId") && dict["IconMediaId"] != nil {
                self.iconMediaId = dict["IconMediaId"] as! String
            }
            if dict.keys.contains("MemberCount") && dict["MemberCount"] != nil {
                self.memberCount = dict["MemberCount"] as! Int32
            }
            if dict.keys.contains("MemberLimit") && dict["MemberLimit"] != nil {
                self.memberLimit = dict["MemberLimit"] as! Int32
            }
            if dict.keys.contains("OwnerAppUid") && dict["OwnerAppUid"] != nil {
                self.ownerAppUid = dict["OwnerAppUid"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetGroupByIdResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetGroupByIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetGroupByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetGroupByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupMemberByIdsRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUids: [String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUids != nil {
                map["AppUids"] = self.appUids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUids") && dict["AppUids"] != nil {
                self.appUids = dict["AppUids"] as! [String]
            }
        }
    }
    public var appId: String?

    public var requestParams: GetGroupMemberByIdsRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetGroupMemberByIdsRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetGroupMemberByIdsShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetGroupMemberByIdsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Members : Tea.TeaModel {
            public var appUid: String?

            public var extensions: [String: String]?

            public var joinTime: Int64?

            public var nick: String?

            public var role: Int32?

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
                if self.appUid != nil {
                    map["AppUid"] = self.appUid!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                    self.appUid = dict["AppUid"] as! String
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("Nick") && dict["Nick"] != nil {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! Int32
                }
            }
        }
        public var members: [GetGroupMemberByIdsResponseBody.Result.Members]?

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
            if self.members != nil {
                var tmp : [Any] = []
                for k in self.members! {
                    tmp.append(k.toMap())
                }
                map["Members"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Members") && dict["Members"] != nil {
                var tmp : [GetGroupMemberByIdsResponseBody.Result.Members] = []
                for v in dict["Members"] as! [Any] {
                    var model = GetGroupMemberByIdsResponseBody.Result.Members()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.members = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetGroupMemberByIdsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetGroupMemberByIdsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetGroupMemberByIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupMemberByIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetGroupMemberByIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIMConfigRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class GetIMConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ImConfig : Tea.TeaModel {
            public class CallbackConfig : Tea.TeaModel {
                public var apis: [String: Bool]?

                public var callbackUrl: String?

                public var events: [String: Bool]?

                public var signatureKey: String?

                public var signatureValue: String?

                public var spis: [String: Bool]?

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
                    if self.apis != nil {
                        map["Apis"] = self.apis!
                    }
                    if self.callbackUrl != nil {
                        map["CallbackUrl"] = self.callbackUrl!
                    }
                    if self.events != nil {
                        map["Events"] = self.events!
                    }
                    if self.signatureKey != nil {
                        map["SignatureKey"] = self.signatureKey!
                    }
                    if self.signatureValue != nil {
                        map["SignatureValue"] = self.signatureValue!
                    }
                    if self.spis != nil {
                        map["Spis"] = self.spis!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Apis") && dict["Apis"] != nil {
                        self.apis = dict["Apis"] as! [String: Bool]
                    }
                    if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
                        self.callbackUrl = dict["CallbackUrl"] as! String
                    }
                    if dict.keys.contains("Events") && dict["Events"] != nil {
                        self.events = dict["Events"] as! [String: Bool]
                    }
                    if dict.keys.contains("SignatureKey") && dict["SignatureKey"] != nil {
                        self.signatureKey = dict["SignatureKey"] as! String
                    }
                    if dict.keys.contains("SignatureValue") && dict["SignatureValue"] != nil {
                        self.signatureValue = dict["SignatureValue"] as! String
                    }
                    if dict.keys.contains("Spis") && dict["Spis"] != nil {
                        self.spis = dict["Spis"] as! [String: Bool]
                    }
                }
            }
            public class MsgConfig : Tea.TeaModel {
                public var clientMsgRecallTimeIntervalMinute: Int64?

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
                    if self.clientMsgRecallTimeIntervalMinute != nil {
                        map["ClientMsgRecallTimeIntervalMinute"] = self.clientMsgRecallTimeIntervalMinute!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClientMsgRecallTimeIntervalMinute") && dict["ClientMsgRecallTimeIntervalMinute"] != nil {
                        self.clientMsgRecallTimeIntervalMinute = dict["ClientMsgRecallTimeIntervalMinute"] as! Int64
                    }
                }
            }
            public var callbackConfig: GetIMConfigResponseBody.Result.ImConfig.CallbackConfig?

            public var msgConfig: GetIMConfigResponseBody.Result.ImConfig.MsgConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.callbackConfig?.validate()
                try self.msgConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callbackConfig != nil {
                    map["CallbackConfig"] = self.callbackConfig?.toMap()
                }
                if self.msgConfig != nil {
                    map["MsgConfig"] = self.msgConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallbackConfig") && dict["CallbackConfig"] != nil {
                    var model = GetIMConfigResponseBody.Result.ImConfig.CallbackConfig()
                    model.fromMap(dict["CallbackConfig"] as! [String: Any])
                    self.callbackConfig = model
                }
                if dict.keys.contains("MsgConfig") && dict["MsgConfig"] != nil {
                    var model = GetIMConfigResponseBody.Result.ImConfig.MsgConfig()
                    model.fromMap(dict["MsgConfig"] as! [String: Any])
                    self.msgConfig = model
                }
            }
        }
        public var imConfig: GetIMConfigResponseBody.Result.ImConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.imConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imConfig != nil {
                map["ImConfig"] = self.imConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImConfig") && dict["ImConfig"] != nil {
                var model = GetIMConfigResponseBody.Result.ImConfig()
                model.fromMap(dict["ImConfig"] as! [String: Any])
                self.imConfig = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var messaage: String?

    public var requestId: String?

    public var result: GetIMConfigResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.messaage != nil {
            map["Messaage"] = self.messaage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Messaage") && dict["Messaage"] != nil {
            self.messaage = dict["Messaage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetIMConfigResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetIMConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIMConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetIMConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLoginTokenRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appKey: String?

        public var appUid: String?

        public var deviceId: String?

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
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
                self.deviceId = dict["DeviceId"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: GetLoginTokenRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetLoginTokenRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetLoginTokenShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetLoginTokenResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessToken: String?

        public var accessTokenExpiredTime: Int64?

        public var refreshToken: String?

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
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.accessTokenExpiredTime != nil {
                map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
            }
            if self.refreshToken != nil {
                map["RefreshToken"] = self.refreshToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
                self.accessToken = dict["AccessToken"] as! String
            }
            if dict.keys.contains("AccessTokenExpiredTime") && dict["AccessTokenExpiredTime"] != nil {
                self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! Int64
            }
            if dict.keys.contains("RefreshToken") && dict["RefreshToken"] != nil {
                self.refreshToken = dict["RefreshToken"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetLoginTokenResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetLoginTokenResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetLoginTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMediaUploadUrlRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var mimeType: String?

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
            if self.mimeType != nil {
                map["MimeType"] = self.mimeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MimeType") && dict["MimeType"] != nil {
                self.mimeType = dict["MimeType"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: GetMediaUploadUrlRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetMediaUploadUrlRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetMediaUploadUrlShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetMediaUploadUrlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var mediaId: String?

        public var uploadUrl: String?

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
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.uploadUrl != nil {
                map["UploadUrl"] = self.uploadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MediaId") && dict["MediaId"] != nil {
                self.mediaId = dict["MediaId"] as! String
            }
            if dict.keys.contains("UploadUrl") && dict["UploadUrl"] != nil {
                self.uploadUrl = dict["UploadUrl"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetMediaUploadUrlResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetMediaUploadUrlResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetMediaUploadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMediaUploadUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMediaUploadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMediaUrlRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var mediaId: String?

        public var urlExpireTime: Int64?

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
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.urlExpireTime != nil {
                map["UrlExpireTime"] = self.urlExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MediaId") && dict["MediaId"] != nil {
                self.mediaId = dict["MediaId"] as! String
            }
            if dict.keys.contains("UrlExpireTime") && dict["UrlExpireTime"] != nil {
                self.urlExpireTime = dict["UrlExpireTime"] as! Int64
            }
        }
    }
    public var appId: String?

    public var requestParams: GetMediaUrlRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetMediaUrlRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetMediaUrlShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetMediaUrlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var url: String?

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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetMediaUrlResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetMediaUrlResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetMediaUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMediaUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMediaUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMessageByIdRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var msgId: String?

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
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: GetMessageByIdRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetMessageByIdRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetMessageByIdShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetMessageByIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appCid: String?

        public var content: String?

        public var contentType: Int32?

        public var conversationType: Int32?

        public var createTime: Int64?

        public var extensions: [String: String]?

        public var msgId: String?

        public var senderId: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.conversationType != nil {
                map["ConversationType"] = self.conversationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.senderId != nil {
                map["SenderId"] = self.senderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                self.contentType = dict["ContentType"] as! Int32
            }
            if dict.keys.contains("ConversationType") && dict["ConversationType"] != nil {
                self.conversationType = dict["ConversationType"] as! Int32
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
                self.senderId = dict["SenderId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetMessageByIdResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetMessageByIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetMessageByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessageByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMessageByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRoomStatisticsRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

        public var roomId: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
        }
    }
    public var request: GetRoomStatisticsRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = GetRoomStatisticsRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class GetRoomStatisticsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var onlineCount: Int32?

        public var PV: Int32?

        public var UV: Int32?

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
            if self.onlineCount != nil {
                map["OnlineCount"] = self.onlineCount!
            }
            if self.PV != nil {
                map["PV"] = self.PV!
            }
            if self.UV != nil {
                map["UV"] = self.UV!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OnlineCount") && dict["OnlineCount"] != nil {
                self.onlineCount = dict["OnlineCount"] as! Int32
            }
            if dict.keys.contains("PV") && dict["PV"] != nil {
                self.PV = dict["PV"] as! Int32
            }
            if dict.keys.contains("UV") && dict["UV"] != nil {
                self.UV = dict["UV"] as! Int32
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var responseSuccess: Bool?

    public var result: GetRoomStatisticsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetRoomStatisticsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetRoomStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoomStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRoomStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserMuteSettingRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appUids: [String]?

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
            if self.appUids != nil {
                map["AppUids"] = self.appUids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUids") && dict["AppUids"] != nil {
                self.appUids = dict["AppUids"] as! [String]
            }
        }
    }
    public var appId: String?

    public var requestParams: GetUserMuteSettingRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = GetUserMuteSettingRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class GetUserMuteSettingShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class GetUserMuteSettingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var userMuteSettings: [String: ResultUserMuteSettingsValue]?

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
            if self.userMuteSettings != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.userMuteSettings! {
                    tmp[k] = v.toMap()
                }
                map["UserMuteSettings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserMuteSettings") && dict["UserMuteSettings"] != nil {
                var tmp : [String: ResultUserMuteSettingsValue] = [:]
                for (k, v) in dict["UserMuteSettings"] as! [String: Any] {
                    if v != nil {
                        var model = ResultUserMuteSettingsValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.userMuteSettings = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: GetUserMuteSettingResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetUserMuteSettingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetUserMuteSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserMuteSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetUserMuteSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportGroupChatConversationRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var createTime: Int64?

        public var extensions: [String: String]?

        public var iconMediaId: String?

        public var memberLimit: Int64?

        public var ownerAppUid: String?

        public var silenceAll: Bool?

        public var title: String?

        public var uuid: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.iconMediaId != nil {
                map["IconMediaId"] = self.iconMediaId!
            }
            if self.memberLimit != nil {
                map["MemberLimit"] = self.memberLimit!
            }
            if self.ownerAppUid != nil {
                map["OwnerAppUid"] = self.ownerAppUid!
            }
            if self.silenceAll != nil {
                map["SilenceAll"] = self.silenceAll!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("IconMediaId") && dict["IconMediaId"] != nil {
                self.iconMediaId = dict["IconMediaId"] as! String
            }
            if dict.keys.contains("MemberLimit") && dict["MemberLimit"] != nil {
                self.memberLimit = dict["MemberLimit"] as! Int64
            }
            if dict.keys.contains("OwnerAppUid") && dict["OwnerAppUid"] != nil {
                self.ownerAppUid = dict["OwnerAppUid"] as! String
            }
            if dict.keys.contains("SilenceAll") && dict["SilenceAll"] != nil {
                self.silenceAll = dict["SilenceAll"] as! Bool
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: ImportGroupChatConversationRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ImportGroupChatConversationRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ImportGroupChatConversationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ImportGroupChatConversationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appCid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: ImportGroupChatConversationResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ImportGroupChatConversationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ImportGroupChatConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportGroupChatConversationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportGroupChatConversationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportGroupChatMemberRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public class GroupChatMembers : Tea.TeaModel {
            public var appUid: String?

            public var extensions: [String: String]?

            public var joinTime: Int64?

            public var modifyTime: Int64?

            public var mute: Bool?

            public var nick: String?

            public var redPoint: Int64?

            public var role: Int64?

            public var top: Bool?

            public var visible: Bool?

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
                if self.appUid != nil {
                    map["AppUid"] = self.appUid!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.mute != nil {
                    map["Mute"] = self.mute!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.redPoint != nil {
                    map["RedPoint"] = self.redPoint!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.visible != nil {
                    map["Visible"] = self.visible!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                    self.appUid = dict["AppUid"] as! String
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Mute") && dict["Mute"] != nil {
                    self.mute = dict["Mute"] as! Bool
                }
                if dict.keys.contains("Nick") && dict["Nick"] != nil {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("RedPoint") && dict["RedPoint"] != nil {
                    self.redPoint = dict["RedPoint"] as! Int64
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! Int64
                }
                if dict.keys.contains("Top") && dict["Top"] != nil {
                    self.top = dict["Top"] as! Bool
                }
                if dict.keys.contains("Visible") && dict["Visible"] != nil {
                    self.visible = dict["Visible"] as! Bool
                }
            }
        }
        public var appCid: String?

        public var groupChatMembers: [ImportGroupChatMemberRequest.RequestParams.GroupChatMembers]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.groupChatMembers != nil {
                var tmp : [Any] = []
                for k in self.groupChatMembers! {
                    tmp.append(k.toMap())
                }
                map["GroupChatMembers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("GroupChatMembers") && dict["GroupChatMembers"] != nil {
                var tmp : [ImportGroupChatMemberRequest.RequestParams.GroupChatMembers] = []
                for v in dict["GroupChatMembers"] as! [Any] {
                    var model = ImportGroupChatMemberRequest.RequestParams.GroupChatMembers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.groupChatMembers = tmp
            }
        }
    }
    public var appId: String?

    public var requestParams: ImportGroupChatMemberRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ImportGroupChatMemberRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ImportGroupChatMemberShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ImportGroupChatMemberResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportGroupChatMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportGroupChatMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportGroupChatMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportMessageRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var appCid: String?

            public var content: String?

            public var contentType: Int64?

            public var conversationType: Int64?

            public var createTime: Int64?

            public var extensions: [String: String]?

            public var receiverIds: [String]?

            public var senderId: String?

            public var uuid: String?

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
                if self.appCid != nil {
                    map["AppCid"] = self.appCid!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.conversationType != nil {
                    map["ConversationType"] = self.conversationType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                if self.receiverIds != nil {
                    map["ReceiverIds"] = self.receiverIds!
                }
                if self.senderId != nil {
                    map["SenderId"] = self.senderId!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                    self.appCid = dict["AppCid"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                    self.contentType = dict["ContentType"] as! Int64
                }
                if dict.keys.contains("ConversationType") && dict["ConversationType"] != nil {
                    self.conversationType = dict["ConversationType"] as! Int64
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
                if dict.keys.contains("ReceiverIds") && dict["ReceiverIds"] != nil {
                    self.receiverIds = dict["ReceiverIds"] as! [String]
                }
                if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
                    self.senderId = dict["SenderId"] as! String
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var messages: [ImportMessageRequest.RequestParams.Messages]?

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
            if self.messages != nil {
                var tmp : [Any] = []
                for k in self.messages! {
                    tmp.append(k.toMap())
                }
                map["Messages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Messages") && dict["Messages"] != nil {
                var tmp : [ImportMessageRequest.RequestParams.Messages] = []
                for v in dict["Messages"] as! [Any] {
                    var model = ImportMessageRequest.RequestParams.Messages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.messages = tmp
            }
        }
    }
    public var appId: String?

    public var requestParams: ImportMessageRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ImportMessageRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ImportMessageShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ImportMessageResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var importMessageResult: [String: ResultImportMessageResultValue]?

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
            if self.importMessageResult != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.importMessageResult! {
                    tmp[k] = v.toMap()
                }
                map["ImportMessageResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImportMessageResult") && dict["ImportMessageResult"] != nil {
                var tmp : [String: ResultImportMessageResultValue] = [:]
                for (k, v) in dict["ImportMessageResult"] as! [String: Any] {
                    if v != nil {
                        var model = ResultImportMessageResultValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.importMessageResult = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: ImportMessageResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ImportMessageResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ImportMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportSingleConversationRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public class Conversation : Tea.TeaModel {
            public var appCid: String?

            public var appUids: [String]?

            public var createTime: Int64?

            public var extensions: [String: String]?

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
                if self.appCid != nil {
                    map["AppCid"] = self.appCid!
                }
                if self.appUids != nil {
                    map["AppUids"] = self.appUids!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                    self.appCid = dict["AppCid"] as! String
                }
                if dict.keys.contains("AppUids") && dict["AppUids"] != nil {
                    self.appUids = dict["AppUids"] as! [String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
            }
        }
        public var conversation: ImportSingleConversationRequest.RequestParams.Conversation?

        public var userConversations: [String: RequestParamsUserConversationsValue]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.conversation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conversation != nil {
                map["Conversation"] = self.conversation?.toMap()
            }
            if self.userConversations != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.userConversations! {
                    tmp[k] = v.toMap()
                }
                map["UserConversations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Conversation") && dict["Conversation"] != nil {
                var model = ImportSingleConversationRequest.RequestParams.Conversation()
                model.fromMap(dict["Conversation"] as! [String: Any])
                self.conversation = model
            }
            if dict.keys.contains("UserConversations") && dict["UserConversations"] != nil {
                var tmp : [String: RequestParamsUserConversationsValue] = [:]
                for (k, v) in dict["UserConversations"] as! [String: Any] {
                    if v != nil {
                        var model = RequestParamsUserConversationsValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.userConversations = tmp
            }
        }
    }
    public var appId: String?

    public var requestParams: ImportSingleConversationRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ImportSingleConversationRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ImportSingleConversationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ImportSingleConversationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportSingleConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportSingleConversationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportSingleConversationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitTenantRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
        }
    }
    public var request: InitTenantRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = InitTenantRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class InitTenantResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var responseSuccess: Bool?

    public var errorCode: String?

    public var errorMsg: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") && dict["errorMsg"] != nil {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
        }
    }
}

public class InitTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitTenantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = InitTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KickOffRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appKeys: [String]?

        public var appUid: String?

        public var information: String?

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
            if self.appKeys != nil {
                map["AppKeys"] = self.appKeys!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.information != nil {
                map["Information"] = self.information!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKeys") && dict["AppKeys"] != nil {
                self.appKeys = dict["AppKeys"] as! [String]
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Information") && dict["Information"] != nil {
                self.information = dict["Information"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: KickOffRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = KickOffRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class KickOffShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class KickOffResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KickOffResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KickOffResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = KickOffResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppInfosRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var keyword: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var type: String?

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
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
                self.keyword = dict["Keyword"] as! String
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestParams: ListAppInfosRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ListAppInfosRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ListAppInfosShrinkRequest : Tea.TeaModel {
    public var requestParamsShrink: String?

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
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ListAppInfosResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AppInfos : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var appStatus: Int32?

            public var createTime: String?

            public var instanceId: String?

            public var prodVersion: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appStatus != nil {
                    map["AppStatus"] = self.appStatus!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.prodVersion != nil {
                    map["ProdVersion"] = self.prodVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                    self.appStatus = dict["AppStatus"] as! Int32
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ProdVersion") && dict["ProdVersion"] != nil {
                    self.prodVersion = dict["ProdVersion"] as! String
                }
            }
        }
        public var appInfos: [ListAppInfosResponseBody.Result.AppInfos]?

        public var totalCount: Int32?

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
            if self.appInfos != nil {
                var tmp : [Any] = []
                for k in self.appInfos! {
                    tmp.append(k.toMap())
                }
                map["AppInfos"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInfos") && dict["AppInfos"] != nil {
                var tmp : [ListAppInfosResponseBody.Result.AppInfos] = []
                for v in dict["AppInfos"] as! [Any] {
                    var model = ListAppInfosResponseBody.Result.AppInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appInfos = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ListAppInfosResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListAppInfosResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListAppInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListAppInfosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCallbackApiIdsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var events: [String: Bool]?

        public var spis: [String: Bool]?

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
            if self.events != nil {
                map["Events"] = self.events!
            }
            if self.spis != nil {
                map["Spis"] = self.spis!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Events") && dict["Events"] != nil {
                self.events = dict["Events"] as! [String: Bool]
            }
            if dict.keys.contains("Spis") && dict["Spis"] != nil {
                self.spis = dict["Spis"] as! [String: Bool]
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ListCallbackApiIdsResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListCallbackApiIdsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListCallbackApiIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCallbackApiIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListCallbackApiIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDetailReportStatisticsRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var endTime: String?

        public var reportStatisticsType: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.reportStatisticsType != nil {
                map["ReportStatisticsType"] = self.reportStatisticsType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ReportStatisticsType") && dict["ReportStatisticsType"] != nil {
                self.reportStatisticsType = dict["ReportStatisticsType"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: ListDetailReportStatisticsRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ListDetailReportStatisticsRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ListDetailReportStatisticsShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ListDetailReportStatisticsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var data: [[String: Any]]?

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
                map["Data"] = self.data!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") && dict["Data"] != nil {
                self.data = dict["Data"] as! [[String: Any]]
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ListDetailReportStatisticsResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListDetailReportStatisticsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListDetailReportStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDetailReportStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDetailReportStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupAllMembersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: ListGroupAllMembersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ListGroupAllMembersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ListGroupAllMembersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ListGroupAllMembersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Members : Tea.TeaModel {
            public var appUid: String?

            public var extensions: [String: String]?

            public var joinTime: Int64?

            public var nick: String?

            public var role: Int32?

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
                if self.appUid != nil {
                    map["AppUid"] = self.appUid!
                }
                if self.extensions != nil {
                    map["Extensions"] = self.extensions!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                    self.appUid = dict["AppUid"] as! String
                }
                if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                    self.extensions = dict["Extensions"] as! [String: String]
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("Nick") && dict["Nick"] != nil {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! Int32
                }
            }
        }
        public var members: [ListGroupAllMembersResponseBody.Result.Members]?

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
            if self.members != nil {
                var tmp : [Any] = []
                for k in self.members! {
                    tmp.append(k.toMap())
                }
                map["Members"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Members") && dict["Members"] != nil {
                var tmp : [ListGroupAllMembersResponseBody.Result.Members] = []
                for v in dict["Members"] as! [Any] {
                    var model = ListGroupAllMembersResponseBody.Result.Members()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.members = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: ListGroupAllMembersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListGroupAllMembersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListGroupAllMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupAllMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListGroupAllMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupSilenceMembersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: ListGroupSilenceMembersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = ListGroupSilenceMembersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class ListGroupSilenceMembersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class ListGroupSilenceMembersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appCid: String?

        public var blacklist: [String: Int64]?

        public var whitelist: [String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.blacklist != nil {
                map["Blacklist"] = self.blacklist!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Blacklist") && dict["Blacklist"] != nil {
                self.blacklist = dict["Blacklist"] as! [String: Int64]
            }
            if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: ListGroupSilenceMembersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListGroupSilenceMembersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListGroupSilenceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupSilenceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListGroupSilenceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRoomMessagesRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var roomId: String?

        public var subType: Int32?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! Int32
            }
        }
    }
    public var request: ListRoomMessagesRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = ListRoomMessagesRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class ListRoomMessagesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RoomMessageList : Tea.TeaModel {
            public var body: String?

            public var messageId: String?

            public var roomId: String?

            public var sendTimeMillis: Int64?

            public var senderId: String?

            public var subType: Int32?

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
                if self.body != nil {
                    map["Body"] = self.body!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.sendTimeMillis != nil {
                    map["SendTimeMillis"] = self.sendTimeMillis!
                }
                if self.senderId != nil {
                    map["SenderId"] = self.senderId!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Body") && dict["Body"] != nil {
                    self.body = dict["Body"] as! String
                }
                if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
                    self.messageId = dict["MessageId"] as! String
                }
                if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("SendTimeMillis") && dict["SendTimeMillis"] != nil {
                    self.sendTimeMillis = dict["SendTimeMillis"] as! Int64
                }
                if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
                    self.senderId = dict["SenderId"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! Int32
                }
            }
        }
        public var hasMore: Bool?

        public var roomMessageList: [ListRoomMessagesResponseBody.Result.RoomMessageList]?

        public var totalCount: Int32?

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
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.roomMessageList != nil {
                var tmp : [Any] = []
                for k in self.roomMessageList! {
                    tmp.append(k.toMap())
                }
                map["RoomMessageList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") && dict["HasMore"] != nil {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("RoomMessageList") && dict["RoomMessageList"] != nil {
                var tmp : [ListRoomMessagesResponseBody.Result.RoomMessageList] = []
                for v in dict["RoomMessageList"] as! [Any] {
                    var model = ListRoomMessagesResponseBody.Result.RoomMessageList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.roomMessageList = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var responseSuccess: Bool?

    public var result: ListRoomMessagesResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListRoomMessagesResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListRoomMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoomMessagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRoomMessagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRoomUsersRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var roomId: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
        }
    }
    public var request: ListRoomUsersRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = ListRoomUsersRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class ListRoomUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RoomUserVOList : Tea.TeaModel {
            public var nick: String?

            public var roomId: String?

            public var userId: String?

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
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Nick") && dict["Nick"] != nil {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var hasMore: Bool?

        public var roomUserVOList: [ListRoomUsersResponseBody.Result.RoomUserVOList]?

        public var totalCount: Int32?

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
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.roomUserVOList != nil {
                var tmp : [Any] = []
                for k in self.roomUserVOList! {
                    tmp.append(k.toMap())
                }
                map["RoomUserVOList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") && dict["HasMore"] != nil {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("RoomUserVOList") && dict["RoomUserVOList"] != nil {
                var tmp : [ListRoomUsersResponseBody.Result.RoomUserVOList] = []
                for v in dict["RoomUserVOList"] as! [Any] {
                    var model = ListRoomUsersResponseBody.Result.RoomUserVOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.roomUserVOList = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var responseSuccess: Bool?

    public var result: ListRoomUsersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListRoomUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListRoomUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoomUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRoomUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MuteUsersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appUids: [String]?

        public var mute: Bool?

        public var muteDuration: Int64?

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
            if self.appUids != nil {
                map["AppUids"] = self.appUids!
            }
            if self.mute != nil {
                map["Mute"] = self.mute!
            }
            if self.muteDuration != nil {
                map["MuteDuration"] = self.muteDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUids") && dict["AppUids"] != nil {
                self.appUids = dict["AppUids"] as! [String]
            }
            if dict.keys.contains("Mute") && dict["Mute"] != nil {
                self.mute = dict["Mute"] as! Bool
            }
            if dict.keys.contains("MuteDuration") && dict["MuteDuration"] != nil {
                self.muteDuration = dict["MuteDuration"] as! Int64
            }
        }
    }
    public var appId: String?

    public var requestParams: MuteUsersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = MuteUsersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class MuteUsersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class MuteUsersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MuteUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MuteUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = MuteUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInterconnectionCidMappingRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var srcCid: String?

        public var type: Int64?

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
            if self.srcCid != nil {
                map["SrcCid"] = self.srcCid!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SrcCid") && dict["SrcCid"] != nil {
                self.srcCid = dict["SrcCid"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int64
            }
        }
    }
    public var appId: String?

    public var requestParams: QueryInterconnectionCidMappingRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = QueryInterconnectionCidMappingRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class QueryInterconnectionCidMappingShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class QueryInterconnectionCidMappingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var dstCid: String?

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
            if self.dstCid != nil {
                map["DstCid"] = self.dstCid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DstCid") && dict["DstCid"] != nil {
                self.dstCid = dict["DstCid"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: QueryInterconnectionCidMappingResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryInterconnectionCidMappingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class QueryInterconnectionCidMappingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInterconnectionCidMappingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryInterconnectionCidMappingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecallMessageRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var extensions: [String: String]?

        public var msgId: String?

        public var operatorType: Int32?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("OperatorType") && dict["OperatorType"] != nil {
                self.operatorType = dict["OperatorType"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var appId: String?

    public var requestParams: RecallMessageRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RecallMessageRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RecallMessageShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RecallMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecallMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecallMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecallMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveGroupExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var keys: [String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Keys") && dict["Keys"] != nil {
                self.keys = dict["Keys"] as! [String]
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveGroupExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveGroupExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveGroupExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveGroupExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveGroupExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveGroupExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveGroupExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveGroupMemberExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var keys: [String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Keys") && dict["Keys"] != nil {
                self.keys = dict["Keys"] as! [String]
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveGroupMemberExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveGroupMemberExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveGroupMemberExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveGroupMemberExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveGroupMemberExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveGroupMemberExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveGroupMemberExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveGroupMembersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUidsRemoved: [String]?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUidsRemoved != nil {
                map["AppUidsRemoved"] = self.appUidsRemoved!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUidsRemoved") && dict["AppUidsRemoved"] != nil {
                self.appUidsRemoved = dict["AppUidsRemoved"] as! [String]
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveGroupMembersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveGroupMembersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveGroupMembersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveGroupMembersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveGroupSilenceBlacklistRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var members: [String]?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.members != nil {
                map["Members"] = self.members!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                self.members = dict["Members"] as! [String]
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveGroupSilenceBlacklistRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveGroupSilenceBlacklistRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveGroupSilenceBlacklistShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveGroupSilenceBlacklistResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveGroupSilenceBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveGroupSilenceBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveGroupSilenceBlacklistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveGroupSilenceWhitelistRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var members: [String]?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.members != nil {
                map["Members"] = self.members!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                self.members = dict["Members"] as! [String]
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveGroupSilenceWhitelistRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveGroupSilenceWhitelistRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveGroupSilenceWhitelistShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveGroupSilenceWhitelistResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveGroupSilenceWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveGroupSilenceWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveGroupSilenceWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveMessageExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var keys: [String]?

        public var msgId: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Keys") && dict["Keys"] != nil {
                self.keys = dict["Keys"] as! [String]
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveMessageExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveMessageExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveMessageExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveMessageExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveMessageExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveMessageExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveMessageExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveSingleChatExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var keys: [String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Keys") && dict["Keys"] != nil {
                self.keys = dict["Keys"] as! [String]
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveSingleChatExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveSingleChatExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveSingleChatExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveSingleChatExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveSingleChatExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveSingleChatExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveSingleChatExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserConversationExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var keys: [String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Keys") && dict["Keys"] != nil {
                self.keys = dict["Keys"] as! [String]
            }
        }
    }
    public var appId: String?

    public var requestParams: RemoveUserConversationExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = RemoveUserConversationExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class RemoveUserConversationExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class RemoveUserConversationExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveUserConversationExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserConversationExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveUserConversationExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCustomMessageRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var body: String?

        public var domain: String?

        public var roomId: String?

        public var senderId: String?

        public var subType: Int32?

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
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.senderId != nil {
                map["SenderId"] = self.senderId!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Body") && dict["Body"] != nil {
                self.body = dict["Body"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
                self.senderId = dict["SenderId"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! Int32
            }
        }
    }
    public var request: SendCustomMessageRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = SendCustomMessageRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class SendCustomMessageResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var messageId: String?

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
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
                self.messageId = dict["MessageId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var responseSuccess: Bool?

    public var result: SendCustomMessageResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = SendCustomMessageResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class SendCustomMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCustomMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendCustomMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCustomMessageToRoomUsersRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var body: String?

        public var domain: String?

        public var roomId: String?

        public var senderId: String?

        public var subType: Int32?

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
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.senderId != nil {
                map["SenderId"] = self.senderId!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Body") && dict["Body"] != nil {
                self.body = dict["Body"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
                self.senderId = dict["SenderId"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! Int32
            }
        }
    }
    public var receivers: [String]?

    public var request: SendCustomMessageToRoomUsersRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.receivers != nil {
            map["Receivers"] = self.receivers!
        }
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Receivers") && dict["Receivers"] != nil {
            self.receivers = dict["Receivers"] as! [String]
        }
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = SendCustomMessageToRoomUsersRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class SendCustomMessageToRoomUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var messageId: String?

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
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
                self.messageId = dict["MessageId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var responseSuccess: Bool?

    public var result: SendCustomMessageToRoomUsersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = SendCustomMessageToRoomUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class SendCustomMessageToRoomUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCustomMessageToRoomUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendCustomMessageToRoomUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public class Options : Tea.TeaModel {
            public class ReceiveScopeOption : Tea.TeaModel {
                public var excludeReceiverIds: [String]?

                public var receiveScope: Int32?

                public var receiverIds: [String]?

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
                    if self.excludeReceiverIds != nil {
                        map["ExcludeReceiverIds"] = self.excludeReceiverIds!
                    }
                    if self.receiveScope != nil {
                        map["ReceiveScope"] = self.receiveScope!
                    }
                    if self.receiverIds != nil {
                        map["ReceiverIds"] = self.receiverIds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ExcludeReceiverIds") && dict["ExcludeReceiverIds"] != nil {
                        self.excludeReceiverIds = dict["ExcludeReceiverIds"] as! [String]
                    }
                    if dict.keys.contains("ReceiveScope") && dict["ReceiveScope"] != nil {
                        self.receiveScope = dict["ReceiveScope"] as! Int32
                    }
                    if dict.keys.contains("ReceiverIds") && dict["ReceiverIds"] != nil {
                        self.receiverIds = dict["ReceiverIds"] as! [String]
                    }
                }
            }
            public class SingleChatCreateRequest : Tea.TeaModel {
                public var appCid: String?

                public var appUids: [String]?

                public var extensions: [String: String]?

                public var userConversation: [String: RequestParamsOptionsSingleChatCreateRequestUserConversationValue]?

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
                    if self.appCid != nil {
                        map["AppCid"] = self.appCid!
                    }
                    if self.appUids != nil {
                        map["AppUids"] = self.appUids!
                    }
                    if self.extensions != nil {
                        map["Extensions"] = self.extensions!
                    }
                    if self.userConversation != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.userConversation! {
                            tmp[k] = v.toMap()
                        }
                        map["UserConversation"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                        self.appCid = dict["AppCid"] as! String
                    }
                    if dict.keys.contains("AppUids") && dict["AppUids"] != nil {
                        self.appUids = dict["AppUids"] as! [String]
                    }
                    if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                        self.extensions = dict["Extensions"] as! [String: String]
                    }
                    if dict.keys.contains("UserConversation") && dict["UserConversation"] != nil {
                        var tmp : [String: RequestParamsOptionsSingleChatCreateRequestUserConversationValue] = [:]
                        for (k, v) in dict["UserConversation"] as! [String: Any] {
                            if v != nil {
                                var model = RequestParamsOptionsSingleChatCreateRequestUserConversationValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.userConversation = tmp
                    }
                }
            }
            public var receiveScopeOption: SendMessageRequest.RequestParams.Options.ReceiveScopeOption?

            public var redPointPolicy: Int32?

            public var singleChatCreateRequest: SendMessageRequest.RequestParams.Options.SingleChatCreateRequest?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.receiveScopeOption?.validate()
                try self.singleChatCreateRequest?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.receiveScopeOption != nil {
                    map["ReceiveScopeOption"] = self.receiveScopeOption?.toMap()
                }
                if self.redPointPolicy != nil {
                    map["RedPointPolicy"] = self.redPointPolicy!
                }
                if self.singleChatCreateRequest != nil {
                    map["SingleChatCreateRequest"] = self.singleChatCreateRequest?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReceiveScopeOption") && dict["ReceiveScopeOption"] != nil {
                    var model = SendMessageRequest.RequestParams.Options.ReceiveScopeOption()
                    model.fromMap(dict["ReceiveScopeOption"] as! [String: Any])
                    self.receiveScopeOption = model
                }
                if dict.keys.contains("RedPointPolicy") && dict["RedPointPolicy"] != nil {
                    self.redPointPolicy = dict["RedPointPolicy"] as! Int32
                }
                if dict.keys.contains("SingleChatCreateRequest") && dict["SingleChatCreateRequest"] != nil {
                    var model = SendMessageRequest.RequestParams.Options.SingleChatCreateRequest()
                    model.fromMap(dict["SingleChatCreateRequest"] as! [String: Any])
                    self.singleChatCreateRequest = model
                }
            }
        }
        public var appCid: String?

        public var content: String?

        public var contentType: Int32?

        public var conversationType: Int32?

        public var extensions: [String: String]?

        public var options: SendMessageRequest.RequestParams.Options?

        public var senderId: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.options?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.conversationType != nil {
                map["ConversationType"] = self.conversationType!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.options != nil {
                map["Options"] = self.options?.toMap()
            }
            if self.senderId != nil {
                map["SenderId"] = self.senderId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                self.contentType = dict["ContentType"] as! Int32
            }
            if dict.keys.contains("ConversationType") && dict["ConversationType"] != nil {
                self.conversationType = dict["ConversationType"] as! Int32
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("Options") && dict["Options"] != nil {
                var model = SendMessageRequest.RequestParams.Options()
                model.fromMap(dict["Options"] as! [String: Any])
                self.options = model
            }
            if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
                self.senderId = dict["SenderId"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: SendMessageRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SendMessageRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SendMessageShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SendMessageResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: Int64?

        public var msgId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: SendMessageResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = SendMessageResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class SendMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGroupExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var extensions: [String: String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
        }
    }
    public var appId: String?

    public var requestParams: SetGroupExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetGroupExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetGroupExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetGroupExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetGroupExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGroupExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetGroupExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGroupMemberExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var extensions: [String: String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
        }
    }
    public var appId: String?

    public var requestParams: SetGroupMemberExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetGroupMemberExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetGroupMemberExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetGroupMemberExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetGroupMemberExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGroupMemberExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetGroupMemberExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGroupOwnerRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var newOwnerAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.newOwnerAppUid != nil {
                map["NewOwnerAppUid"] = self.newOwnerAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("NewOwnerAppUid") && dict["NewOwnerAppUid"] != nil {
                self.newOwnerAppUid = dict["NewOwnerAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: SetGroupOwnerRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetGroupOwnerRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetGroupOwnerShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetGroupOwnerResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetGroupOwnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGroupOwnerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetGroupOwnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetMessageExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var extensions: [String: String]?

        public var msgId: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: SetMessageExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetMessageExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetMessageExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetMessageExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetMessageExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMessageExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetMessageExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetMessageReadRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appUid: String?

        public var msgId: String?

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
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: SetMessageReadRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetMessageReadRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetMessageReadShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetMessageReadResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetMessageReadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMessageReadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetMessageReadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSingleChatExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var extensions: [String: String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
        }
    }
    public var appId: String?

    public var requestParams: SetSingleChatExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetSingleChatExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetSingleChatExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetSingleChatExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetSingleChatExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSingleChatExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetSingleChatExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetUserConversationExtensionByKeysRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUid: String?

        public var extensions: [String: String]?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
                self.extensions = dict["Extensions"] as! [String: String]
            }
        }
    }
    public var appId: String?

    public var requestParams: SetUserConversationExtensionByKeysRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SetUserConversationExtensionByKeysRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SetUserConversationExtensionByKeysShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SetUserConversationExtensionByKeysResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetUserConversationExtensionByKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserConversationExtensionByKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetUserConversationExtensionByKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SilenceAllGroupMembersRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: SilenceAllGroupMembersRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = SilenceAllGroupMembersRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class SilenceAllGroupMembersShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class SilenceAllGroupMembersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SilenceAllGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SilenceAllGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SilenceAllGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindInterconnectionUidRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appUid: String?

        public var dingTalkUid: String?

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
            if self.appUid != nil {
                map["AppUid"] = self.appUid!
            }
            if self.dingTalkUid != nil {
                map["DingTalkUid"] = self.dingTalkUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUid") && dict["AppUid"] != nil {
                self.appUid = dict["AppUid"] as! String
            }
            if dict.keys.contains("DingTalkUid") && dict["DingTalkUid"] != nil {
                self.dingTalkUid = dict["DingTalkUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: UnbindInterconnectionUidRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UnbindInterconnectionUidRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UnbindInterconnectionUidShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UnbindInterconnectionUidResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindInterconnectionUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindInterconnectionUidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UnbindInterconnectionUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppNameRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appName: String?

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
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateAppNameRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateAppNameRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateAppNameShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateAppNameResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateAppNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateAppNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppStatusRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var enable: Bool?

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
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") && dict["Enable"] != nil {
                self.enable = dict["Enable"] as! Bool
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateAppStatusRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateAppStatusRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateAppStatusShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateAppStatusResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateAppStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateAppStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCallbackConfigRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var apis: [String: Bool]?

        public var callbackUrl: String?

        public var events: [String: Bool]?

        public var signatureKey: String?

        public var signatureValue: String?

        public var spis: [String: Bool]?

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
            if self.apis != nil {
                map["Apis"] = self.apis!
            }
            if self.callbackUrl != nil {
                map["CallbackUrl"] = self.callbackUrl!
            }
            if self.events != nil {
                map["Events"] = self.events!
            }
            if self.signatureKey != nil {
                map["SignatureKey"] = self.signatureKey!
            }
            if self.signatureValue != nil {
                map["SignatureValue"] = self.signatureValue!
            }
            if self.spis != nil {
                map["Spis"] = self.spis!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Apis") && dict["Apis"] != nil {
                self.apis = dict["Apis"] as! [String: Bool]
            }
            if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
                self.callbackUrl = dict["CallbackUrl"] as! String
            }
            if dict.keys.contains("Events") && dict["Events"] != nil {
                self.events = dict["Events"] as! [String: Bool]
            }
            if dict.keys.contains("SignatureKey") && dict["SignatureKey"] != nil {
                self.signatureKey = dict["SignatureKey"] as! String
            }
            if dict.keys.contains("SignatureValue") && dict["SignatureValue"] != nil {
                self.signatureValue = dict["SignatureValue"] as! String
            }
            if dict.keys.contains("Spis") && dict["Spis"] != nil {
                self.spis = dict["Spis"] as! [String: Bool]
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateCallbackConfigRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateCallbackConfigRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateCallbackConfigShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateCallbackConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ImConfig : Tea.TeaModel {
            public class CallbackConfig : Tea.TeaModel {
                public var apiIds: [String]?

                public var backendUrl: String?

                public var signatureKey: String?

                public var signatureValue: String?

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
                    if self.apiIds != nil {
                        map["ApiIds"] = self.apiIds!
                    }
                    if self.backendUrl != nil {
                        map["BackendUrl"] = self.backendUrl!
                    }
                    if self.signatureKey != nil {
                        map["SignatureKey"] = self.signatureKey!
                    }
                    if self.signatureValue != nil {
                        map["SignatureValue"] = self.signatureValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
                        self.apiIds = dict["ApiIds"] as! [String]
                    }
                    if dict.keys.contains("BackendUrl") && dict["BackendUrl"] != nil {
                        self.backendUrl = dict["BackendUrl"] as! String
                    }
                    if dict.keys.contains("SignatureKey") && dict["SignatureKey"] != nil {
                        self.signatureKey = dict["SignatureKey"] as! String
                    }
                    if dict.keys.contains("SignatureValue") && dict["SignatureValue"] != nil {
                        self.signatureValue = dict["SignatureValue"] as! String
                    }
                }
            }
            public class MsgConfig : Tea.TeaModel {
                public var msgRecallTimeInterval: Int64?

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
                    if self.msgRecallTimeInterval != nil {
                        map["MsgRecallTimeInterval"] = self.msgRecallTimeInterval!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MsgRecallTimeInterval") && dict["MsgRecallTimeInterval"] != nil {
                        self.msgRecallTimeInterval = dict["MsgRecallTimeInterval"] as! Int64
                    }
                }
            }
            public var callbackConfig: UpdateCallbackConfigResponseBody.Result.ImConfig.CallbackConfig?

            public var msgConfig: UpdateCallbackConfigResponseBody.Result.ImConfig.MsgConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.callbackConfig?.validate()
                try self.msgConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callbackConfig != nil {
                    map["CallbackConfig"] = self.callbackConfig?.toMap()
                }
                if self.msgConfig != nil {
                    map["MsgConfig"] = self.msgConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallbackConfig") && dict["CallbackConfig"] != nil {
                    var model = UpdateCallbackConfigResponseBody.Result.ImConfig.CallbackConfig()
                    model.fromMap(dict["CallbackConfig"] as! [String: Any])
                    self.callbackConfig = model
                }
                if dict.keys.contains("MsgConfig") && dict["MsgConfig"] != nil {
                    var model = UpdateCallbackConfigResponseBody.Result.ImConfig.MsgConfig()
                    model.fromMap(dict["MsgConfig"] as! [String: Any])
                    self.msgConfig = model
                }
            }
        }
        public var imConfig: UpdateCallbackConfigResponseBody.Result.ImConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.imConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imConfig != nil {
                map["ImConfig"] = self.imConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImConfig") && dict["ImConfig"] != nil {
                var model = UpdateCallbackConfigResponseBody.Result.ImConfig()
                model.fromMap(dict["ImConfig"] as! [String: Any])
                self.imConfig = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: UpdateCallbackConfigResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = UpdateCallbackConfigResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateCallbackConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCallbackConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateCallbackConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupIconRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var iconMediaId: String?

        public var operatorAppUid: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.iconMediaId != nil {
                map["IconMediaId"] = self.iconMediaId!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("IconMediaId") && dict["IconMediaId"] != nil {
                self.iconMediaId = dict["IconMediaId"] as! String
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateGroupIconRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateGroupIconRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateGroupIconShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateGroupIconResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupIconResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupIconResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateGroupIconResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupMembersRoleRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var appUids: [String]?

        public var operatorAppUid: String?

        public var role: Int32?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.appUids != nil {
                map["AppUids"] = self.appUids!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("AppUids") && dict["AppUids"] != nil {
                self.appUids = dict["AppUids"] as! [String]
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! Int32
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateGroupMembersRoleRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateGroupMembersRoleRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateGroupMembersRoleShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateGroupMembersRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupMembersRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupMembersRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateGroupMembersRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupTitleRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var appCid: String?

        public var operatorAppUid: String?

        public var title: String?

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
            if self.appCid != nil {
                map["AppCid"] = self.appCid!
            }
            if self.operatorAppUid != nil {
                map["OperatorAppUid"] = self.operatorAppUid!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCid") && dict["AppCid"] != nil {
                self.appCid = dict["AppCid"] as! String
            }
            if dict.keys.contains("OperatorAppUid") && dict["OperatorAppUid"] != nil {
                self.operatorAppUid = dict["OperatorAppUid"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateGroupTitleRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateGroupTitleRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateGroupTitleShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateGroupTitleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupTitleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupTitleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateGroupTitleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMsgRecallIntervalRequest : Tea.TeaModel {
    public class RequestParams : Tea.TeaModel {
        public var clientMsgRecallIntervalMinute: Int64?

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
            if self.clientMsgRecallIntervalMinute != nil {
                map["ClientMsgRecallIntervalMinute"] = self.clientMsgRecallIntervalMinute!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientMsgRecallIntervalMinute") && dict["ClientMsgRecallIntervalMinute"] != nil {
                self.clientMsgRecallIntervalMinute = dict["ClientMsgRecallIntervalMinute"] as! Int64
            }
        }
    }
    public var appId: String?

    public var requestParams: UpdateMsgRecallIntervalRequest.RequestParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.requestParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParams != nil {
            map["RequestParams"] = self.requestParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            var model = UpdateMsgRecallIntervalRequest.RequestParams()
            model.fromMap(dict["RequestParams"] as! [String: Any])
            self.requestParams = model
        }
    }
}

public class UpdateMsgRecallIntervalShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var requestParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestParamsShrink != nil {
            map["RequestParams"] = self.requestParamsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestParams") && dict["RequestParams"] != nil {
            self.requestParamsShrink = dict["RequestParams"] as! String
        }
    }
}

public class UpdateMsgRecallIntervalResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateMsgRecallIntervalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMsgRecallIntervalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateMsgRecallIntervalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTenantStatusRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var domain: String?

        public var status: Int64?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int64
            }
        }
    }
    public var request: UpdateTenantStatusRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = UpdateTenantStatusRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class UpdateTenantStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var responseSuccess: Bool?

    public var errorCode: String?

    public var errorMsg: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseSuccess != nil {
            map["ResponseSuccess"] = self.responseSuccess!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseSuccess") && dict["ResponseSuccess"] != nil {
            self.responseSuccess = dict["ResponseSuccess"] as! Bool
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") && dict["errorMsg"] != nil {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
        }
    }
}

public class UpdateTenantStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTenantStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTenantStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
