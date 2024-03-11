import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeAppConfigRequest : Tea.TeaModel {
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

public class DescribeAppConfigResponseBody : Tea.TeaModel {
    public class ThresholdConfig : Tea.TeaModel {
        public var joinSlowTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.joinSlowTime != nil {
                map["JoinSlowTime"] = self.joinSlowTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JoinSlowTime") && dict["JoinSlowTime"] != nil {
                self.joinSlowTime = dict["JoinSlowTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var thresholdConfig: DescribeAppConfigResponseBody.ThresholdConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.thresholdConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.thresholdConfig != nil {
            map["ThresholdConfig"] = self.thresholdConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ThresholdConfig") && dict["ThresholdConfig"] != nil {
            var model = DescribeAppConfigResponseBody.ThresholdConfig()
            model.fromMap(dict["ThresholdConfig"] as! [String: Any])
            self.thresholdConfig = model
        }
    }
}

public class DescribeAppConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCallRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var extDataType: String?

    public var queryExpInfo: Bool?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.extDataType != nil {
            map["ExtDataType"] = self.extDataType!
        }
        if self.queryExpInfo != nil {
            map["QueryExpInfo"] = self.queryExpInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("ExtDataType") && dict["ExtDataType"] != nil {
            self.extDataType = dict["ExtDataType"] as! String
        }
        if dict.keys.contains("QueryExpInfo") && dict["QueryExpInfo"] != nil {
            self.queryExpInfo = dict["QueryExpInfo"] as! Bool
        }
    }
}

public class DescribeCallResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public class UserDetailList : Tea.TeaModel {
        public class DurMetricStatData : Tea.TeaModel {
            public var pubAudio: Int64?

            public var pubVideo1080: Int64?

            public var pubVideo360: Int64?

            public var pubVideo720: Int64?

            public var pubVideoScreenShare: Int64?

            public var subAudio: Int64?

            public var subVideo1080: Int64?

            public var subVideo360: Int64?

            public var subVideo720: Int64?

            public var subVideoScreenShare: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pubAudio != nil {
                    map["PubAudio"] = self.pubAudio!
                }
                if self.pubVideo1080 != nil {
                    map["PubVideo1080"] = self.pubVideo1080!
                }
                if self.pubVideo360 != nil {
                    map["PubVideo360"] = self.pubVideo360!
                }
                if self.pubVideo720 != nil {
                    map["PubVideo720"] = self.pubVideo720!
                }
                if self.pubVideoScreenShare != nil {
                    map["PubVideoScreenShare"] = self.pubVideoScreenShare!
                }
                if self.subAudio != nil {
                    map["SubAudio"] = self.subAudio!
                }
                if self.subVideo1080 != nil {
                    map["SubVideo1080"] = self.subVideo1080!
                }
                if self.subVideo360 != nil {
                    map["SubVideo360"] = self.subVideo360!
                }
                if self.subVideo720 != nil {
                    map["SubVideo720"] = self.subVideo720!
                }
                if self.subVideoScreenShare != nil {
                    map["SubVideoScreenShare"] = self.subVideoScreenShare!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PubAudio") && dict["PubAudio"] != nil {
                    self.pubAudio = dict["PubAudio"] as! Int64
                }
                if dict.keys.contains("PubVideo1080") && dict["PubVideo1080"] != nil {
                    self.pubVideo1080 = dict["PubVideo1080"] as! Int64
                }
                if dict.keys.contains("PubVideo360") && dict["PubVideo360"] != nil {
                    self.pubVideo360 = dict["PubVideo360"] as! Int64
                }
                if dict.keys.contains("PubVideo720") && dict["PubVideo720"] != nil {
                    self.pubVideo720 = dict["PubVideo720"] as! Int64
                }
                if dict.keys.contains("PubVideoScreenShare") && dict["PubVideoScreenShare"] != nil {
                    self.pubVideoScreenShare = dict["PubVideoScreenShare"] as! Int64
                }
                if dict.keys.contains("SubAudio") && dict["SubAudio"] != nil {
                    self.subAudio = dict["SubAudio"] as! Int64
                }
                if dict.keys.contains("SubVideo1080") && dict["SubVideo1080"] != nil {
                    self.subVideo1080 = dict["SubVideo1080"] as! Int64
                }
                if dict.keys.contains("SubVideo360") && dict["SubVideo360"] != nil {
                    self.subVideo360 = dict["SubVideo360"] as! Int64
                }
                if dict.keys.contains("SubVideo720") && dict["SubVideo720"] != nil {
                    self.subVideo720 = dict["SubVideo720"] as! Int64
                }
                if dict.keys.contains("SubVideoScreenShare") && dict["SubVideoScreenShare"] != nil {
                    self.subVideoScreenShare = dict["SubVideoScreenShare"] as! Int64
                }
            }
        }
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") && dict["JoinTs"] != nil {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") && dict["LeaveTs"] != nil {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var callExp: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var durMetricStatData: DescribeCallResponseBody.UserDetailList.DurMetricStatData?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeCallResponseBody.UserDetailList.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public var userIdAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.durMetricStatData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callExp != nil {
                map["CallExp"] = self.callExp!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.durMetricStatData != nil {
                map["DurMetricStatData"] = self.durMetricStatData?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userIdAlias != nil {
                map["UserIdAlias"] = self.userIdAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallExp") && dict["CallExp"] != nil {
                self.callExp = dict["CallExp"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("DurMetricStatData") && dict["DurMetricStatData"] != nil {
                var model = DescribeCallResponseBody.UserDetailList.DurMetricStatData()
                model.fromMap(dict["DurMetricStatData"] as! [String: Any])
                self.durMetricStatData = model
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") && dict["NetworkList"] != nil {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") && dict["OnlineDuration"] != nil {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") && dict["OnlinePeriods"] != nil {
                var tmp : [DescribeCallResponseBody.UserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeCallResponseBody.UserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") && dict["OsList"] != nil {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") && dict["SdkVersion"] != nil {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") && dict["SdkVersionList"] != nil {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserIdAlias") && dict["UserIdAlias"] != nil {
                self.userIdAlias = dict["UserIdAlias"] as! String
            }
        }
    }
    public var callInfo: DescribeCallResponseBody.CallInfo?

    public var requestId: String?

    public var userDetailList: [DescribeCallResponseBody.UserDetailList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userDetailList != nil {
            var tmp : [Any] = []
            for k in self.userDetailList! {
                tmp.append(k.toMap())
            }
            map["UserDetailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") && dict["CallInfo"] != nil {
            var model = DescribeCallResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserDetailList") && dict["UserDetailList"] != nil {
            var tmp : [DescribeCallResponseBody.UserDetailList] = []
            for v in dict["UserDetailList"] as! [Any] {
                var model = DescribeCallResponseBody.UserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userDetailList = tmp
        }
    }
}

public class DescribeCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCallInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeCallInfoResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public var callInfo: DescribeCallInfoResponseBody.CallInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") && dict["CallInfo"] != nil {
            var model = DescribeCallInfoResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCallInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCallInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCallListRequest : Tea.TeaModel {
    public var appId: String?

    public var callStatus: String?

    public var channelId: String?

    public var endTs: Int64?

    public var orderBy: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var queryMode: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.callStatus != nil {
            map["CallStatus"] = self.callStatus!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryMode != nil {
            map["QueryMode"] = self.queryMode!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
            self.callStatus = dict["CallStatus"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryMode") && dict["QueryMode"] != nil {
            self.queryMode = dict["QueryMode"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeCallListResponseBody : Tea.TeaModel {
    public class CallList : Tea.TeaModel {
        public var appId: String?

        public var badExpUserCnt: Int32?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var userCnt: Int32?

        public override init() {
            super.init()
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
            if self.badExpUserCnt != nil {
                map["BadExpUserCnt"] = self.badExpUserCnt!
            }
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.userCnt != nil {
                map["UserCnt"] = self.userCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("BadExpUserCnt") && dict["BadExpUserCnt"] != nil {
                self.badExpUserCnt = dict["BadExpUserCnt"] as! Int32
            }
            if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("UserCnt") && dict["UserCnt"] != nil {
                self.userCnt = dict["UserCnt"] as! Int32
            }
        }
    }
    public var callList: [DescribeCallListResponseBody.CallList]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCnt: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callList != nil {
            var tmp : [Any] = []
            for k in self.callList! {
                tmp.append(k.toMap())
            }
            map["CallList"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCnt != nil {
            map["TotalCnt"] = self.totalCnt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallList") && dict["CallList"] != nil {
            var tmp : [DescribeCallListResponseBody.CallList] = []
            for v in dict["CallList"] as! [Any] {
                var model = DescribeCallListResponseBody.CallList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.callList = tmp
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCnt") && dict["TotalCnt"] != nil {
            self.totalCnt = dict["TotalCnt"] as! Int32
        }
    }
}

public class DescribeCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCallListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCallUserExpRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeCallUserExpResponseBody : Tea.TeaModel {
    public class ExpInfoList : Tea.TeaModel {
        public var callExp: String?

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
            if self.callExp != nil {
                map["CallExp"] = self.callExp!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallExp") && dict["CallExp"] != nil {
                self.callExp = dict["CallExp"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var expInfoList: [DescribeCallUserExpResponseBody.ExpInfoList]?

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
        if self.expInfoList != nil {
            var tmp : [Any] = []
            for k in self.expInfoList! {
                tmp.append(k.toMap())
            }
            map["ExpInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpInfoList") && dict["ExpInfoList"] != nil {
            var tmp : [DescribeCallUserExpResponseBody.ExpInfoList] = []
            for v in dict["ExpInfoList"] as! [Any] {
                var model = DescribeCallUserExpResponseBody.ExpInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.expInfoList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCallUserExpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallUserExpResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCallUserExpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCallUserListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var extDataType: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var queryExpInfo: Bool?

    public var roleType: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.extDataType != nil {
            map["ExtDataType"] = self.extDataType!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryExpInfo != nil {
            map["QueryExpInfo"] = self.queryExpInfo!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("ExtDataType") && dict["ExtDataType"] != nil {
            self.extDataType = dict["ExtDataType"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryExpInfo") && dict["QueryExpInfo"] != nil {
            self.queryExpInfo = dict["QueryExpInfo"] as! Bool
        }
        if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeCallUserListResponseBody : Tea.TeaModel {
    public class UserDetailList : Tea.TeaModel {
        public class DurMetricStatData : Tea.TeaModel {
            public var pubAudio: Int64?

            public var pubVideo360: Int64?

            public var pubVideo720: Int64?

            public var pubVideoScreenShare: Int64?

            public var subAudio: Int64?

            public var subVideo1080: Int64?

            public var subVideo360: Int64?

            public var subVideo720: Int64?

            public var subVideoScreenShare: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pubAudio != nil {
                    map["PubAudio"] = self.pubAudio!
                }
                if self.pubVideo360 != nil {
                    map["PubVideo360"] = self.pubVideo360!
                }
                if self.pubVideo720 != nil {
                    map["PubVideo720"] = self.pubVideo720!
                }
                if self.pubVideoScreenShare != nil {
                    map["PubVideoScreenShare"] = self.pubVideoScreenShare!
                }
                if self.subAudio != nil {
                    map["SubAudio"] = self.subAudio!
                }
                if self.subVideo1080 != nil {
                    map["SubVideo1080"] = self.subVideo1080!
                }
                if self.subVideo360 != nil {
                    map["SubVideo360"] = self.subVideo360!
                }
                if self.subVideo720 != nil {
                    map["SubVideo720"] = self.subVideo720!
                }
                if self.subVideoScreenShare != nil {
                    map["SubVideoScreenShare"] = self.subVideoScreenShare!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PubAudio") && dict["PubAudio"] != nil {
                    self.pubAudio = dict["PubAudio"] as! Int64
                }
                if dict.keys.contains("PubVideo360") && dict["PubVideo360"] != nil {
                    self.pubVideo360 = dict["PubVideo360"] as! Int64
                }
                if dict.keys.contains("PubVideo720") && dict["PubVideo720"] != nil {
                    self.pubVideo720 = dict["PubVideo720"] as! Int64
                }
                if dict.keys.contains("PubVideoScreenShare") && dict["PubVideoScreenShare"] != nil {
                    self.pubVideoScreenShare = dict["PubVideoScreenShare"] as! Int64
                }
                if dict.keys.contains("SubAudio") && dict["SubAudio"] != nil {
                    self.subAudio = dict["SubAudio"] as! Int64
                }
                if dict.keys.contains("SubVideo1080") && dict["SubVideo1080"] != nil {
                    self.subVideo1080 = dict["SubVideo1080"] as! Int64
                }
                if dict.keys.contains("SubVideo360") && dict["SubVideo360"] != nil {
                    self.subVideo360 = dict["SubVideo360"] as! Int64
                }
                if dict.keys.contains("SubVideo720") && dict["SubVideo720"] != nil {
                    self.subVideo720 = dict["SubVideo720"] as! Int64
                }
                if dict.keys.contains("SubVideoScreenShare") && dict["SubVideoScreenShare"] != nil {
                    self.subVideoScreenShare = dict["SubVideoScreenShare"] as! Int64
                }
            }
        }
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") && dict["JoinTs"] != nil {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") && dict["LeaveTs"] != nil {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var callExp: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var durMetricStatData: DescribeCallUserListResponseBody.UserDetailList.DurMetricStatData?

        public var duration: Int64?

        public var location: String?

        public var locationCn: String?

        public var locationEn: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeCallUserListResponseBody.UserDetailList.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public var userIdAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.durMetricStatData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callExp != nil {
                map["CallExp"] = self.callExp!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.durMetricStatData != nil {
                map["DurMetricStatData"] = self.durMetricStatData?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.locationCn != nil {
                map["LocationCn"] = self.locationCn!
            }
            if self.locationEn != nil {
                map["LocationEn"] = self.locationEn!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userIdAlias != nil {
                map["UserIdAlias"] = self.userIdAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallExp") && dict["CallExp"] != nil {
                self.callExp = dict["CallExp"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("DurMetricStatData") && dict["DurMetricStatData"] != nil {
                var model = DescribeCallUserListResponseBody.UserDetailList.DurMetricStatData()
                model.fromMap(dict["DurMetricStatData"] as! [String: Any])
                self.durMetricStatData = model
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("LocationCn") && dict["LocationCn"] != nil {
                self.locationCn = dict["LocationCn"] as! String
            }
            if dict.keys.contains("LocationEn") && dict["LocationEn"] != nil {
                self.locationEn = dict["LocationEn"] as! String
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") && dict["NetworkList"] != nil {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") && dict["OnlineDuration"] != nil {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") && dict["OnlinePeriods"] != nil {
                var tmp : [DescribeCallUserListResponseBody.UserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeCallUserListResponseBody.UserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") && dict["OsList"] != nil {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") && dict["SdkVersion"] != nil {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") && dict["SdkVersionList"] != nil {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserIdAlias") && dict["UserIdAlias"] != nil {
                self.userIdAlias = dict["UserIdAlias"] as! String
            }
        }
    }
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCnt: Int32?

    public var userDetailList: [DescribeCallUserListResponseBody.UserDetailList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCnt != nil {
            map["TotalCnt"] = self.totalCnt!
        }
        if self.userDetailList != nil {
            var tmp : [Any] = []
            for k in self.userDetailList! {
                tmp.append(k.toMap())
            }
            map["UserDetailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCnt") && dict["TotalCnt"] != nil {
            self.totalCnt = dict["TotalCnt"] as! Int32
        }
        if dict.keys.contains("UserDetailList") && dict["UserDetailList"] != nil {
            var tmp : [DescribeCallUserListResponseBody.UserDetailList] = []
            for v in dict["UserDetailList"] as! [Any] {
                var model = DescribeCallUserListResponseBody.UserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userDetailList = tmp
        }
    }
}

public class DescribeCallUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallUserListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeCallUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelAreaDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var parentArea: String?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.parentArea != nil {
            map["ParentArea"] = self.parentArea!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("ParentArea") && dict["ParentArea"] != nil {
            self.parentArea = dict["ParentArea"] as! String
        }
    }
}

public class DescribeChannelAreaDistributionStatDataResponseBody : Tea.TeaModel {
    public class AreaStatList : Tea.TeaModel {
        public var areaName: String?

        public var callUserCount: Int32?

        public var highQualityTransmissionRate: String?

        public var pubUserCount: Int32?

        public var subUserCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaName != nil {
                map["AreaName"] = self.areaName!
            }
            if self.callUserCount != nil {
                map["CallUserCount"] = self.callUserCount!
            }
            if self.highQualityTransmissionRate != nil {
                map["HighQualityTransmissionRate"] = self.highQualityTransmissionRate!
            }
            if self.pubUserCount != nil {
                map["PubUserCount"] = self.pubUserCount!
            }
            if self.subUserCount != nil {
                map["SubUserCount"] = self.subUserCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AreaName") && dict["AreaName"] != nil {
                self.areaName = dict["AreaName"] as! String
            }
            if dict.keys.contains("CallUserCount") && dict["CallUserCount"] != nil {
                self.callUserCount = dict["CallUserCount"] as! Int32
            }
            if dict.keys.contains("HighQualityTransmissionRate") && dict["HighQualityTransmissionRate"] != nil {
                self.highQualityTransmissionRate = dict["HighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("PubUserCount") && dict["PubUserCount"] != nil {
                self.pubUserCount = dict["PubUserCount"] as! Int32
            }
            if dict.keys.contains("SubUserCount") && dict["SubUserCount"] != nil {
                self.subUserCount = dict["SubUserCount"] as! Int32
            }
        }
    }
    public var areaStatList: [DescribeChannelAreaDistributionStatDataResponseBody.AreaStatList]?

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
        if self.areaStatList != nil {
            var tmp : [Any] = []
            for k in self.areaStatList! {
                tmp.append(k.toMap())
            }
            map["AreaStatList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AreaStatList") && dict["AreaStatList"] != nil {
            var tmp : [DescribeChannelAreaDistributionStatDataResponseBody.AreaStatList] = []
            for v in dict["AreaStatList"] as! [Any] {
                var model = DescribeChannelAreaDistributionStatDataResponseBody.AreaStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.areaStatList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelAreaDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelAreaDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChannelAreaDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("StatDim") && dict["StatDim"] != nil {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeChannelDistributionStatDataResponseBody : Tea.TeaModel {
    public class StatList : Tea.TeaModel {
        public var callUserCount: Int32?

        public var callUserRatio: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callUserCount != nil {
                map["CallUserCount"] = self.callUserCount!
            }
            if self.callUserRatio != nil {
                map["CallUserRatio"] = self.callUserRatio!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallUserCount") && dict["CallUserCount"] != nil {
                self.callUserCount = dict["CallUserCount"] as! Int32
            }
            if dict.keys.contains("CallUserRatio") && dict["CallUserRatio"] != nil {
                self.callUserRatio = dict["CallUserRatio"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var requestId: String?

    public var statList: [DescribeChannelDistributionStatDataResponseBody.StatList]?

    public override init() {
        super.init()
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
        if self.statList != nil {
            var tmp : [Any] = []
            for k in self.statList! {
                tmp.append(k.toMap())
            }
            map["StatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatList") && dict["StatList"] != nil {
            var tmp : [DescribeChannelDistributionStatDataResponseBody.StatList] = []
            for v in dict["StatList"] as! [Any] {
                var model = DescribeChannelDistributionStatDataResponseBody.StatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statList = tmp
        }
    }
}

public class DescribeChannelDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChannelDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelJoinInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelJoinInfoResponseBody : Tea.TeaModel {
    public var joinFastSuccessRate: String?

    public var joinSlowThreshold: Int64?

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
        if self.joinFastSuccessRate != nil {
            map["JoinFastSuccessRate"] = self.joinFastSuccessRate!
        }
        if self.joinSlowThreshold != nil {
            map["JoinSlowThreshold"] = self.joinSlowThreshold!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinFastSuccessRate") && dict["JoinFastSuccessRate"] != nil {
            self.joinFastSuccessRate = dict["JoinFastSuccessRate"] as! String
        }
        if dict.keys.contains("JoinSlowThreshold") && dict["JoinSlowThreshold"] != nil {
            self.joinSlowThreshold = dict["JoinSlowThreshold"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelJoinInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelJoinInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChannelJoinInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelOverallDataResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public class MetricDatas : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeChannelOverallDataResponseBody.MetricDatas.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeChannelOverallDataResponseBody.MetricDatas.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeChannelOverallDataResponseBody.MetricDatas.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class OverallData : Tea.TeaModel {
        public var connAvgTime: Double?

        public var fiveSecJoinRate: Double?

        public var totalAudioStuckRate: Double?

        public var totalVideoStuckRate: Double?

        public var totalVideoVagueRate: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAvgTime != nil {
                map["ConnAvgTime"] = self.connAvgTime!
            }
            if self.fiveSecJoinRate != nil {
                map["FiveSecJoinRate"] = self.fiveSecJoinRate!
            }
            if self.totalAudioStuckRate != nil {
                map["TotalAudioStuckRate"] = self.totalAudioStuckRate!
            }
            if self.totalVideoStuckRate != nil {
                map["TotalVideoStuckRate"] = self.totalVideoStuckRate!
            }
            if self.totalVideoVagueRate != nil {
                map["TotalVideoVagueRate"] = self.totalVideoVagueRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAvgTime") && dict["ConnAvgTime"] != nil {
                self.connAvgTime = dict["ConnAvgTime"] as! Double
            }
            if dict.keys.contains("FiveSecJoinRate") && dict["FiveSecJoinRate"] != nil {
                self.fiveSecJoinRate = dict["FiveSecJoinRate"] as! Double
            }
            if dict.keys.contains("TotalAudioStuckRate") && dict["TotalAudioStuckRate"] != nil {
                self.totalAudioStuckRate = dict["TotalAudioStuckRate"] as! Double
            }
            if dict.keys.contains("TotalVideoStuckRate") && dict["TotalVideoStuckRate"] != nil {
                self.totalVideoStuckRate = dict["TotalVideoStuckRate"] as! Double
            }
            if dict.keys.contains("TotalVideoVagueRate") && dict["TotalVideoVagueRate"] != nil {
                self.totalVideoVagueRate = dict["TotalVideoVagueRate"] as! Double
            }
        }
    }
    public var callInfo: DescribeChannelOverallDataResponseBody.CallInfo?

    public var metricDatas: [DescribeChannelOverallDataResponseBody.MetricDatas]?

    public var overallData: DescribeChannelOverallDataResponseBody.OverallData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
        try self.overallData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.metricDatas != nil {
            var tmp : [Any] = []
            for k in self.metricDatas! {
                tmp.append(k.toMap())
            }
            map["MetricDatas"] = tmp
        }
        if self.overallData != nil {
            map["OverallData"] = self.overallData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") && dict["CallInfo"] != nil {
            var model = DescribeChannelOverallDataResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("MetricDatas") && dict["MetricDatas"] != nil {
            var tmp : [DescribeChannelOverallDataResponseBody.MetricDatas] = []
            for v in dict["MetricDatas"] as! [Any] {
                var model = DescribeChannelOverallDataResponseBody.MetricDatas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metricDatas = tmp
        }
        if dict.keys.contains("OverallData") && dict["OverallData"] != nil {
            var model = DescribeChannelOverallDataResponseBody.OverallData()
            model.fromMap(dict["OverallData"] as! [String: Any])
            self.overallData = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelOverallDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChannelOverallDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelTopPubUserListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelTopPubUserListResponseBody : Tea.TeaModel {
    public class TopPubUserDetailList : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") && dict["JoinTs"] != nil {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") && dict["LeaveTs"] != nil {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList.OnlinePeriods]?

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
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("OnlineDuration") && dict["OnlineDuration"] != nil {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") && dict["OnlinePeriods"] != nil {
                var tmp : [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var topPubUserDetailList: [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList]?

    public override init() {
        super.init()
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
        if self.topPubUserDetailList != nil {
            var tmp : [Any] = []
            for k in self.topPubUserDetailList! {
                tmp.append(k.toMap())
            }
            map["TopPubUserDetailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TopPubUserDetailList") && dict["TopPubUserDetailList"] != nil {
            var tmp : [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList] = []
            for v in dict["TopPubUserDetailList"] as! [Any] {
                var model = DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.topPubUserDetailList = tmp
        }
    }
}

public class DescribeChannelTopPubUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelTopPubUserListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChannelTopPubUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelUserMetricsRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelUserMetricsResponseBody : Tea.TeaModel {
    public class MetricDatas : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeChannelUserMetricsResponseBody.MetricDatas.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeChannelUserMetricsResponseBody.MetricDatas.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeChannelUserMetricsResponseBody.MetricDatas.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class OverallData : Tea.TeaModel {
        public var totalBadExpNum: Int64?

        public var totalJoinFailNum: Int64?

        public var totalPubUserNum: Int64?

        public var totalSubUserNum: Int64?

        public var totalUserNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalBadExpNum != nil {
                map["TotalBadExpNum"] = self.totalBadExpNum!
            }
            if self.totalJoinFailNum != nil {
                map["TotalJoinFailNum"] = self.totalJoinFailNum!
            }
            if self.totalPubUserNum != nil {
                map["TotalPubUserNum"] = self.totalPubUserNum!
            }
            if self.totalSubUserNum != nil {
                map["TotalSubUserNum"] = self.totalSubUserNum!
            }
            if self.totalUserNum != nil {
                map["TotalUserNum"] = self.totalUserNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalBadExpNum") && dict["TotalBadExpNum"] != nil {
                self.totalBadExpNum = dict["TotalBadExpNum"] as! Int64
            }
            if dict.keys.contains("TotalJoinFailNum") && dict["TotalJoinFailNum"] != nil {
                self.totalJoinFailNum = dict["TotalJoinFailNum"] as! Int64
            }
            if dict.keys.contains("TotalPubUserNum") && dict["TotalPubUserNum"] != nil {
                self.totalPubUserNum = dict["TotalPubUserNum"] as! Int64
            }
            if dict.keys.contains("TotalSubUserNum") && dict["TotalSubUserNum"] != nil {
                self.totalSubUserNum = dict["TotalSubUserNum"] as! Int64
            }
            if dict.keys.contains("TotalUserNum") && dict["TotalUserNum"] != nil {
                self.totalUserNum = dict["TotalUserNum"] as! Int64
            }
        }
    }
    public var metricDatas: [DescribeChannelUserMetricsResponseBody.MetricDatas]?

    public var overallData: DescribeChannelUserMetricsResponseBody.OverallData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.overallData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricDatas != nil {
            var tmp : [Any] = []
            for k in self.metricDatas! {
                tmp.append(k.toMap())
            }
            map["MetricDatas"] = tmp
        }
        if self.overallData != nil {
            map["OverallData"] = self.overallData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricDatas") && dict["MetricDatas"] != nil {
            var tmp : [DescribeChannelUserMetricsResponseBody.MetricDatas] = []
            for v in dict["MetricDatas"] as! [Any] {
                var model = DescribeChannelUserMetricsResponseBody.MetricDatas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metricDatas = tmp
        }
        if dict.keys.contains("OverallData") && dict["OverallData"] != nil {
            var model = DescribeChannelUserMetricsResponseBody.OverallData()
            model.fromMap(dict["OverallData"] as! [String: Any])
            self.overallData = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelUserMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelUserMetricsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeChannelUserMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEndPointEventListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var userIdList: String?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("UserIdList") && dict["UserIdList"] != nil {
            self.userIdList = dict["UserIdList"] as! String
        }
    }
}

public class DescribeEndPointEventListResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class EventDataItems : Tea.TeaModel {
            public class EventList : Tea.TeaModel {
                public var acs: String?

                public var eventCode: String?

                public var eventName: String?

                public var eventType: String?

                public var os: String?

                public var sdk: String?

                public var streamName: String?

                public var streamType: String?

                public var trackCode: String?

                public var trackName: String?

                public var ts: Int64?

                public var tsInMs: String?

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
                    if self.acs != nil {
                        map["Acs"] = self.acs!
                    }
                    if self.eventCode != nil {
                        map["EventCode"] = self.eventCode!
                    }
                    if self.eventName != nil {
                        map["EventName"] = self.eventName!
                    }
                    if self.eventType != nil {
                        map["EventType"] = self.eventType!
                    }
                    if self.os != nil {
                        map["Os"] = self.os!
                    }
                    if self.sdk != nil {
                        map["Sdk"] = self.sdk!
                    }
                    if self.streamName != nil {
                        map["StreamName"] = self.streamName!
                    }
                    if self.streamType != nil {
                        map["StreamType"] = self.streamType!
                    }
                    if self.trackCode != nil {
                        map["TrackCode"] = self.trackCode!
                    }
                    if self.trackName != nil {
                        map["TrackName"] = self.trackName!
                    }
                    if self.ts != nil {
                        map["Ts"] = self.ts!
                    }
                    if self.tsInMs != nil {
                        map["TsInMs"] = self.tsInMs!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Acs") && dict["Acs"] != nil {
                        self.acs = dict["Acs"] as! String
                    }
                    if dict.keys.contains("EventCode") && dict["EventCode"] != nil {
                        self.eventCode = dict["EventCode"] as! String
                    }
                    if dict.keys.contains("EventName") && dict["EventName"] != nil {
                        self.eventName = dict["EventName"] as! String
                    }
                    if dict.keys.contains("EventType") && dict["EventType"] != nil {
                        self.eventType = dict["EventType"] as! String
                    }
                    if dict.keys.contains("Os") && dict["Os"] != nil {
                        self.os = dict["Os"] as! String
                    }
                    if dict.keys.contains("Sdk") && dict["Sdk"] != nil {
                        self.sdk = dict["Sdk"] as! String
                    }
                    if dict.keys.contains("StreamName") && dict["StreamName"] != nil {
                        self.streamName = dict["StreamName"] as! String
                    }
                    if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                        self.streamType = dict["StreamType"] as! String
                    }
                    if dict.keys.contains("TrackCode") && dict["TrackCode"] != nil {
                        self.trackCode = dict["TrackCode"] as! String
                    }
                    if dict.keys.contains("TrackName") && dict["TrackName"] != nil {
                        self.trackName = dict["TrackName"] as! String
                    }
                    if dict.keys.contains("Ts") && dict["Ts"] != nil {
                        self.ts = dict["Ts"] as! Int64
                    }
                    if dict.keys.contains("TsInMs") && dict["TsInMs"] != nil {
                        self.tsInMs = dict["TsInMs"] as! String
                    }
                    if dict.keys.contains("UserId") && dict["UserId"] != nil {
                        self.userId = dict["UserId"] as! String
                    }
                }
            }
            public var eventList: [DescribeEndPointEventListResponseBody.Nodes.EventDataItems.EventList]?

            public var ts: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventList != nil {
                    var tmp : [Any] = []
                    for k in self.eventList! {
                        tmp.append(k.toMap())
                    }
                    map["EventList"] = tmp
                }
                if self.ts != nil {
                    map["Ts"] = self.ts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventList") && dict["EventList"] != nil {
                    var tmp : [DescribeEndPointEventListResponseBody.Nodes.EventDataItems.EventList] = []
                    for v in dict["EventList"] as! [Any] {
                        var model = DescribeEndPointEventListResponseBody.Nodes.EventDataItems.EventList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.eventList = tmp
                }
                if dict.keys.contains("Ts") && dict["Ts"] != nil {
                    self.ts = dict["Ts"] as! Int64
                }
            }
        }
        public var eventDataItems: [DescribeEndPointEventListResponseBody.Nodes.EventDataItems]?

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
            if self.eventDataItems != nil {
                var tmp : [Any] = []
                for k in self.eventDataItems! {
                    tmp.append(k.toMap())
                }
                map["EventDataItems"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventDataItems") && dict["EventDataItems"] != nil {
                var tmp : [DescribeEndPointEventListResponseBody.Nodes.EventDataItems] = []
                for v in dict["EventDataItems"] as! [Any] {
                    var model = DescribeEndPointEventListResponseBody.Nodes.EventDataItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.eventDataItems = tmp
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var nodes: [DescribeEndPointEventListResponseBody.Nodes]?

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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
            var tmp : [DescribeEndPointEventListResponseBody.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = DescribeEndPointEventListResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEndPointEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndPointEventListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeEndPointEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEndPointMetricDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var metrics: String?

    public var pubCallIdList: String?

    public var pubUserId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.pubCallIdList != nil {
            map["PubCallIdList"] = self.pubCallIdList!
        }
        if self.pubUserId != nil {
            map["PubUserId"] = self.pubUserId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            self.metrics = dict["Metrics"] as! String
        }
        if dict.keys.contains("PubCallIdList") && dict["PubCallIdList"] != nil {
            self.pubCallIdList = dict["PubCallIdList"] as! String
        }
        if dict.keys.contains("PubUserId") && dict["PubUserId"] != nil {
            self.pubUserId = dict["PubUserId"] as! String
        }
        if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DescribeEndPointMetricDataResponseBody : Tea.TeaModel {
    public class PubMetrics : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeEndPointMetricDataResponseBody.PubMetrics.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeEndPointMetricDataResponseBody.PubMetrics.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeEndPointMetricDataResponseBody.PubMetrics.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public class SubMetrics : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeEndPointMetricDataResponseBody.SubMetrics.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeEndPointMetricDataResponseBody.SubMetrics.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeEndPointMetricDataResponseBody.SubMetrics.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var pubMetrics: [DescribeEndPointMetricDataResponseBody.PubMetrics]?

    public var requestId: String?

    public var subMetrics: [DescribeEndPointMetricDataResponseBody.SubMetrics]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pubMetrics != nil {
            var tmp : [Any] = []
            for k in self.pubMetrics! {
                tmp.append(k.toMap())
            }
            map["PubMetrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subMetrics != nil {
            var tmp : [Any] = []
            for k in self.subMetrics! {
                tmp.append(k.toMap())
            }
            map["SubMetrics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PubMetrics") && dict["PubMetrics"] != nil {
            var tmp : [DescribeEndPointMetricDataResponseBody.PubMetrics] = []
            for v in dict["PubMetrics"] as! [Any] {
                var model = DescribeEndPointMetricDataResponseBody.PubMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pubMetrics = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubMetrics") && dict["SubMetrics"] != nil {
            var tmp : [DescribeEndPointMetricDataResponseBody.SubMetrics] = []
            for v in dict["SubMetrics"] as! [Any] {
                var model = DescribeEndPointMetricDataResponseBody.SubMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subMetrics = tmp
        }
    }
}

public class DescribeEndPointMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndPointMetricDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeEndPointMetricDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisFactorDistributionStatRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var startTs: Int64?

    public override init() {
        super.init()
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
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeFaultDiagnosisFactorDistributionStatResponseBody : Tea.TeaModel {
    public class StatList : Tea.TeaModel {
        public var factorId: String?

        public var userCount: Int32?

        public var userRatio: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.factorId != nil {
                map["FactorId"] = self.factorId!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.userRatio != nil {
                map["UserRatio"] = self.userRatio!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FactorId") && dict["FactorId"] != nil {
                self.factorId = dict["FactorId"] as! String
            }
            if dict.keys.contains("UserCount") && dict["UserCount"] != nil {
                self.userCount = dict["UserCount"] as! Int32
            }
            if dict.keys.contains("UserRatio") && dict["UserRatio"] != nil {
                self.userRatio = dict["UserRatio"] as! Double
            }
        }
    }
    public var requestId: String?

    public var statList: [DescribeFaultDiagnosisFactorDistributionStatResponseBody.StatList]?

    public override init() {
        super.init()
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
        if self.statList != nil {
            var tmp : [Any] = []
            for k in self.statList! {
                tmp.append(k.toMap())
            }
            map["StatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatList") && dict["StatList"] != nil {
            var tmp : [DescribeFaultDiagnosisFactorDistributionStatResponseBody.StatList] = []
            for v in dict["StatList"] as! [Any] {
                var model = DescribeFaultDiagnosisFactorDistributionStatResponseBody.StatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statList = tmp
        }
    }
}

public class DescribeFaultDiagnosisFactorDistributionStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisFactorDistributionStatResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeFaultDiagnosisFactorDistributionStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var startTs: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("StatDim") && dict["StatDim"] != nil {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeFaultDiagnosisOverallDataResponseBody : Tea.TeaModel {
    public class MetricData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeFaultDiagnosisOverallDataResponseBody.MetricData.Nodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeFaultDiagnosisOverallDataResponseBody.MetricData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeFaultDiagnosisOverallDataResponseBody.MetricData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
        }
    }
    public class OverallData : Tea.TeaModel {
        public var faultUserCount: Int32?

        public var faultUserRatio: Double?

        public var totalUserCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faultUserCount != nil {
                map["FaultUserCount"] = self.faultUserCount!
            }
            if self.faultUserRatio != nil {
                map["FaultUserRatio"] = self.faultUserRatio!
            }
            if self.totalUserCount != nil {
                map["TotalUserCount"] = self.totalUserCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaultUserCount") && dict["FaultUserCount"] != nil {
                self.faultUserCount = dict["FaultUserCount"] as! Int32
            }
            if dict.keys.contains("FaultUserRatio") && dict["FaultUserRatio"] != nil {
                self.faultUserRatio = dict["FaultUserRatio"] as! Double
            }
            if dict.keys.contains("TotalUserCount") && dict["TotalUserCount"] != nil {
                self.totalUserCount = dict["TotalUserCount"] as! Int32
            }
        }
    }
    public var metricData: DescribeFaultDiagnosisOverallDataResponseBody.MetricData?

    public var overallData: DescribeFaultDiagnosisOverallDataResponseBody.OverallData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metricData?.validate()
        try self.overallData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricData != nil {
            map["MetricData"] = self.metricData?.toMap()
        }
        if self.overallData != nil {
            map["OverallData"] = self.overallData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricData") && dict["MetricData"] != nil {
            var model = DescribeFaultDiagnosisOverallDataResponseBody.MetricData()
            model.fromMap(dict["MetricData"] as! [String: Any])
            self.metricData = model
        }
        if dict.keys.contains("OverallData") && dict["OverallData"] != nil {
            var model = DescribeFaultDiagnosisOverallDataResponseBody.OverallData()
            model.fromMap(dict["OverallData"] as! [String: Any])
            self.overallData = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFaultDiagnosisOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisOverallDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeFaultDiagnosisOverallDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisUserDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var faultType: String?

    public var queryCallUserInfo: Bool?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.faultType != nil {
            map["FaultType"] = self.faultType!
        }
        if self.queryCallUserInfo != nil {
            map["QueryCallUserInfo"] = self.queryCallUserInfo!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("FaultType") && dict["FaultType"] != nil {
            self.faultType = dict["FaultType"] as! String
        }
        if dict.keys.contains("QueryCallUserInfo") && dict["QueryCallUserInfo"] != nil {
            self.queryCallUserInfo = dict["QueryCallUserInfo"] as! Bool
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeFaultDiagnosisUserDetailResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public class FactorList : Tea.TeaModel {
        public class RelatedEventDatas : Tea.TeaModel {
            public class EventDataItems : Tea.TeaModel {
                public class EventList : Tea.TeaModel {
                    public var acs: String?

                    public var eventCode: String?

                    public var eventName: String?

                    public var eventType: String?

                    public var os: String?

                    public var sdk: String?

                    public var streamName: String?

                    public var streamType: String?

                    public var trackCode: String?

                    public var trackName: String?

                    public var ts: Int64?

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
                        if self.acs != nil {
                            map["Acs"] = self.acs!
                        }
                        if self.eventCode != nil {
                            map["EventCode"] = self.eventCode!
                        }
                        if self.eventName != nil {
                            map["EventName"] = self.eventName!
                        }
                        if self.eventType != nil {
                            map["EventType"] = self.eventType!
                        }
                        if self.os != nil {
                            map["Os"] = self.os!
                        }
                        if self.sdk != nil {
                            map["Sdk"] = self.sdk!
                        }
                        if self.streamName != nil {
                            map["StreamName"] = self.streamName!
                        }
                        if self.streamType != nil {
                            map["StreamType"] = self.streamType!
                        }
                        if self.trackCode != nil {
                            map["TrackCode"] = self.trackCode!
                        }
                        if self.trackName != nil {
                            map["TrackName"] = self.trackName!
                        }
                        if self.ts != nil {
                            map["Ts"] = self.ts!
                        }
                        if self.userId != nil {
                            map["UserId"] = self.userId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Acs") && dict["Acs"] != nil {
                            self.acs = dict["Acs"] as! String
                        }
                        if dict.keys.contains("EventCode") && dict["EventCode"] != nil {
                            self.eventCode = dict["EventCode"] as! String
                        }
                        if dict.keys.contains("EventName") && dict["EventName"] != nil {
                            self.eventName = dict["EventName"] as! String
                        }
                        if dict.keys.contains("EventType") && dict["EventType"] != nil {
                            self.eventType = dict["EventType"] as! String
                        }
                        if dict.keys.contains("Os") && dict["Os"] != nil {
                            self.os = dict["Os"] as! String
                        }
                        if dict.keys.contains("Sdk") && dict["Sdk"] != nil {
                            self.sdk = dict["Sdk"] as! String
                        }
                        if dict.keys.contains("StreamName") && dict["StreamName"] != nil {
                            self.streamName = dict["StreamName"] as! String
                        }
                        if dict.keys.contains("StreamType") && dict["StreamType"] != nil {
                            self.streamType = dict["StreamType"] as! String
                        }
                        if dict.keys.contains("TrackCode") && dict["TrackCode"] != nil {
                            self.trackCode = dict["TrackCode"] as! String
                        }
                        if dict.keys.contains("TrackName") && dict["TrackName"] != nil {
                            self.trackName = dict["TrackName"] as! String
                        }
                        if dict.keys.contains("Ts") && dict["Ts"] != nil {
                            self.ts = dict["Ts"] as! Int64
                        }
                        if dict.keys.contains("UserId") && dict["UserId"] != nil {
                            self.userId = dict["UserId"] as! String
                        }
                    }
                }
                public var eventList: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems.EventList]?

                public var ts: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventList != nil {
                        var tmp : [Any] = []
                        for k in self.eventList! {
                            tmp.append(k.toMap())
                        }
                        map["EventList"] = tmp
                    }
                    if self.ts != nil {
                        map["Ts"] = self.ts!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventList") && dict["EventList"] != nil {
                        var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems.EventList] = []
                        for v in dict["EventList"] as! [Any] {
                            var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems.EventList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.eventList = tmp
                    }
                    if dict.keys.contains("Ts") && dict["Ts"] != nil {
                        self.ts = dict["Ts"] as! Int64
                    }
                }
            }
            public var eventDataItems: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems]?

            public var role: String?

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
                if self.eventDataItems != nil {
                    var tmp : [Any] = []
                    for k in self.eventDataItems! {
                        tmp.append(k.toMap())
                    }
                    map["EventDataItems"] = tmp
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventDataItems") && dict["EventDataItems"] != nil {
                    var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems] = []
                    for v in dict["EventDataItems"] as! [Any] {
                        var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.eventDataItems = tmp
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public class RelatedMetricDatas : Tea.TeaModel {
            public class Nodes : Tea.TeaModel {
                public var ext: [String: Any]?

                public var x: String?

                public var y: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! [String: Any]
                    }
                    if dict.keys.contains("X") && dict["X"] != nil {
                        self.x = dict["X"] as! String
                    }
                    if dict.keys.contains("Y") && dict["Y"] != nil {
                        self.y = dict["Y"] as! String
                    }
                }
            }
            public var nodes: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas.Nodes]?

            public var role: String?

            public var type: String?

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
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                    var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas.Nodes] = []
                    for v in dict["Nodes"] as! [Any] {
                        var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas.Nodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nodes = tmp
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var factorId: String?

        public var faultSource: String?

        public var relatedEventDatas: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas]?

        public var relatedMetricDatas: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.factorId != nil {
                map["FactorId"] = self.factorId!
            }
            if self.faultSource != nil {
                map["FaultSource"] = self.faultSource!
            }
            if self.relatedEventDatas != nil {
                var tmp : [Any] = []
                for k in self.relatedEventDatas! {
                    tmp.append(k.toMap())
                }
                map["RelatedEventDatas"] = tmp
            }
            if self.relatedMetricDatas != nil {
                var tmp : [Any] = []
                for k in self.relatedMetricDatas! {
                    tmp.append(k.toMap())
                }
                map["RelatedMetricDatas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FactorId") && dict["FactorId"] != nil {
                self.factorId = dict["FactorId"] as! String
            }
            if dict.keys.contains("FaultSource") && dict["FaultSource"] != nil {
                self.faultSource = dict["FaultSource"] as! String
            }
            if dict.keys.contains("RelatedEventDatas") && dict["RelatedEventDatas"] != nil {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas] = []
                for v in dict["RelatedEventDatas"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedEventDatas = tmp
            }
            if dict.keys.contains("RelatedMetricDatas") && dict["RelatedMetricDatas"] != nil {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas] = []
                for v in dict["RelatedMetricDatas"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedMetricDatas = tmp
            }
        }
    }
    public class FaultMetricData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData.Nodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
        }
    }
    public class UserDetail : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") && dict["JoinTs"] != nil {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") && dict["LeaveTs"] != nil {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeFaultDiagnosisUserDetailResponseBody.UserDetail.OnlinePeriods]?

        public var os: String?

        public var sdkVersion: String?

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
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("OnlineDuration") && dict["OnlineDuration"] != nil {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") && dict["OnlinePeriods"] != nil {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.UserDetail.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.UserDetail.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("SdkVersion") && dict["SdkVersion"] != nil {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var callInfo: DescribeFaultDiagnosisUserDetailResponseBody.CallInfo?

    public var factorList: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList]?

    public var faultMetricData: DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData?

    public var networkOperators: [String]?

    public var requestId: String?

    public var userDetail: DescribeFaultDiagnosisUserDetailResponseBody.UserDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
        try self.faultMetricData?.validate()
        try self.userDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.factorList != nil {
            var tmp : [Any] = []
            for k in self.factorList! {
                tmp.append(k.toMap())
            }
            map["FactorList"] = tmp
        }
        if self.faultMetricData != nil {
            map["FaultMetricData"] = self.faultMetricData?.toMap()
        }
        if self.networkOperators != nil {
            map["NetworkOperators"] = self.networkOperators!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userDetail != nil {
            map["UserDetail"] = self.userDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") && dict["CallInfo"] != nil {
            var model = DescribeFaultDiagnosisUserDetailResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("FactorList") && dict["FactorList"] != nil {
            var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList] = []
            for v in dict["FactorList"] as! [Any] {
                var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.factorList = tmp
        }
        if dict.keys.contains("FaultMetricData") && dict["FaultMetricData"] != nil {
            var model = DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData()
            model.fromMap(dict["FaultMetricData"] as! [String: Any])
            self.faultMetricData = model
        }
        if dict.keys.contains("NetworkOperators") && dict["NetworkOperators"] != nil {
            self.networkOperators = dict["NetworkOperators"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserDetail") && dict["UserDetail"] != nil {
            var model = DescribeFaultDiagnosisUserDetailResponseBody.UserDetail()
            model.fromMap(dict["UserDetail"] as! [String: Any])
            self.userDetail = model
        }
    }
}

public class DescribeFaultDiagnosisUserDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisUserDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeFaultDiagnosisUserDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisUserListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var endTs: Int64?

    public var faultTypes: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.faultTypes != nil {
            map["FaultTypes"] = self.faultTypes!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("FaultTypes") && dict["FaultTypes"] != nil {
            self.faultTypes = dict["FaultTypes"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeFaultDiagnosisUserListResponseBody : Tea.TeaModel {
    public class UserList : Tea.TeaModel {
        public class FaultList : Tea.TeaModel {
            public var faultType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faultType != nil {
                    map["FaultType"] = self.faultType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaultType") && dict["FaultType"] != nil {
                    self.faultType = dict["FaultType"] as! String
                }
            }
        }
        public var channelCreatedTs: Int64?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var faultList: [DescribeFaultDiagnosisUserListResponseBody.UserList.FaultList]?

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
            if self.channelCreatedTs != nil {
                map["ChannelCreatedTs"] = self.channelCreatedTs!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.faultList != nil {
                var tmp : [Any] = []
                for k in self.faultList! {
                    tmp.append(k.toMap())
                }
                map["FaultList"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCreatedTs") && dict["ChannelCreatedTs"] != nil {
                self.channelCreatedTs = dict["ChannelCreatedTs"] as! Int64
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("FaultList") && dict["FaultList"] != nil {
                var tmp : [DescribeFaultDiagnosisUserListResponseBody.UserList.FaultList] = []
                for v in dict["FaultList"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserListResponseBody.UserList.FaultList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.faultList = tmp
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCnt: Int32?

    public var userList: [DescribeFaultDiagnosisUserListResponseBody.UserList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCnt != nil {
            map["TotalCnt"] = self.totalCnt!
        }
        if self.userList != nil {
            var tmp : [Any] = []
            for k in self.userList! {
                tmp.append(k.toMap())
            }
            map["UserList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCnt") && dict["TotalCnt"] != nil {
            self.totalCnt = dict["TotalCnt"] as! Int32
        }
        if dict.keys.contains("UserList") && dict["UserList"] != nil {
            var tmp : [DescribeFaultDiagnosisUserListResponseBody.UserList] = []
            for v in dict["UserList"] as! [Any] {
                var model = DescribeFaultDiagnosisUserListResponseBody.UserList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userList = tmp
        }
    }
}

public class DescribeFaultDiagnosisUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisUserListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeFaultDiagnosisUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIceDurPeriodByDaySubTypeRequest : Tea.TeaModel {
    public var endTs: Int64?

    public var jobType: String?

    public var startTs: Int64?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class DescribeIceDurPeriodByDaySubTypeResponseBody : Tea.TeaModel {
    public class JobInfoList : Tea.TeaModel {
        public class SubJobInfoList : Tea.TeaModel {
            public var subJobDuration: Int64?

            public var subJobType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subJobDuration != nil {
                    map["SubJobDuration"] = self.subJobDuration!
                }
                if self.subJobType != nil {
                    map["SubJobType"] = self.subJobType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SubJobDuration") && dict["SubJobDuration"] != nil {
                    self.subJobDuration = dict["SubJobDuration"] as! Int64
                }
                if dict.keys.contains("SubJobType") && dict["SubJobType"] != nil {
                    self.subJobType = dict["SubJobType"] as! String
                }
            }
        }
        public var dateTs: Int64?

        public var duration: Int64?

        public var subJobInfoList: [DescribeIceDurPeriodByDaySubTypeResponseBody.JobInfoList.SubJobInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dateTs != nil {
                map["DateTs"] = self.dateTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.subJobInfoList != nil {
                var tmp : [Any] = []
                for k in self.subJobInfoList! {
                    tmp.append(k.toMap())
                }
                map["SubJobInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DateTs") && dict["DateTs"] != nil {
                self.dateTs = dict["DateTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("SubJobInfoList") && dict["SubJobInfoList"] != nil {
                var tmp : [DescribeIceDurPeriodByDaySubTypeResponseBody.JobInfoList.SubJobInfoList] = []
                for v in dict["SubJobInfoList"] as! [Any] {
                    var model = DescribeIceDurPeriodByDaySubTypeResponseBody.JobInfoList.SubJobInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subJobInfoList = tmp
            }
        }
    }
    public var jobInfoList: [DescribeIceDurPeriodByDaySubTypeResponseBody.JobInfoList]?

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
        if self.jobInfoList != nil {
            var tmp : [Any] = []
            for k in self.jobInfoList! {
                tmp.append(k.toMap())
            }
            map["JobInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobInfoList") && dict["JobInfoList"] != nil {
            var tmp : [DescribeIceDurPeriodByDaySubTypeResponseBody.JobInfoList] = []
            for v in dict["JobInfoList"] as! [Any] {
                var model = DescribeIceDurPeriodByDaySubTypeResponseBody.JobInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobInfoList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeIceDurPeriodByDaySubTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIceDurPeriodByDaySubTypeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeIceDurPeriodByDaySubTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIceDurSummaryOverviewRequest : Tea.TeaModel {
    public var curTs: Int64?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.curTs != nil {
            map["CurTs"] = self.curTs!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurTs") && dict["CurTs"] != nil {
            self.curTs = dict["CurTs"] as! Int64
        }
        if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class DescribeIceDurSummaryOverviewResponseBody : Tea.TeaModel {
    public class JobInfoList : Tea.TeaModel {
        public var duration: Int64?

        public var jobType: String?

        public var timeRange: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.timeRange != nil {
                map["TimeRange"] = self.timeRange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("JobType") && dict["JobType"] != nil {
                self.jobType = dict["JobType"] as! String
            }
            if dict.keys.contains("TimeRange") && dict["TimeRange"] != nil {
                self.timeRange = dict["TimeRange"] as! String
            }
        }
    }
    public var jobInfoList: [DescribeIceDurSummaryOverviewResponseBody.JobInfoList]?

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
        if self.jobInfoList != nil {
            var tmp : [Any] = []
            for k in self.jobInfoList! {
                tmp.append(k.toMap())
            }
            map["JobInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobInfoList") && dict["JobInfoList"] != nil {
            var tmp : [DescribeIceDurSummaryOverviewResponseBody.JobInfoList] = []
            for v in dict["JobInfoList"] as! [Any] {
                var model = DescribeIceDurSummaryOverviewResponseBody.JobInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobInfoList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeIceDurSummaryOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIceDurSummaryOverviewResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeIceDurSummaryOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePubUserListBySubUserRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DescribePubUserListBySubUserResponseBody : Tea.TeaModel {
    public class PubUserDetailList : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") && dict["JoinTs"] != nil {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") && dict["LeaveTs"] != nil {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var callIdList: [String]?

        public var clientType: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribePubUserListBySubUserResponseBody.PubUserDetailList.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public var userIdAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callIdList != nil {
                map["CallIdList"] = self.callIdList!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userIdAlias != nil {
                map["UserIdAlias"] = self.userIdAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallIdList") && dict["CallIdList"] != nil {
                self.callIdList = dict["CallIdList"] as! [String]
            }
            if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") && dict["NetworkList"] != nil {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") && dict["OnlineDuration"] != nil {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") && dict["OnlinePeriods"] != nil {
                var tmp : [DescribePubUserListBySubUserResponseBody.PubUserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribePubUserListBySubUserResponseBody.PubUserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") && dict["OsList"] != nil {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") && dict["SdkVersion"] != nil {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") && dict["SdkVersionList"] != nil {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserIdAlias") && dict["UserIdAlias"] != nil {
                self.userIdAlias = dict["UserIdAlias"] as! String
            }
        }
    }
    public class SubUserDetail : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") && dict["JoinTs"] != nil {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") && dict["LeaveTs"] != nil {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var clientType: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribePubUserListBySubUserResponseBody.SubUserDetail.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public var userIdAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userIdAlias != nil {
                map["UserIdAlias"] = self.userIdAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") && dict["NetworkList"] != nil {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") && dict["OnlineDuration"] != nil {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") && dict["OnlinePeriods"] != nil {
                var tmp : [DescribePubUserListBySubUserResponseBody.SubUserDetail.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribePubUserListBySubUserResponseBody.SubUserDetail.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") && dict["OsList"] != nil {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") && dict["SdkVersion"] != nil {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") && dict["SdkVersionList"] != nil {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserIdAlias") && dict["UserIdAlias"] != nil {
                self.userIdAlias = dict["UserIdAlias"] as! String
            }
        }
    }
    public var callStatus: String?

    public var pubUserDetailList: [DescribePubUserListBySubUserResponseBody.PubUserDetailList]?

    public var requestId: String?

    public var subUserDetail: DescribePubUserListBySubUserResponseBody.SubUserDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.subUserDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callStatus != nil {
            map["CallStatus"] = self.callStatus!
        }
        if self.pubUserDetailList != nil {
            var tmp : [Any] = []
            for k in self.pubUserDetailList! {
                tmp.append(k.toMap())
            }
            map["PubUserDetailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subUserDetail != nil {
            map["SubUserDetail"] = self.subUserDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallStatus") && dict["CallStatus"] != nil {
            self.callStatus = dict["CallStatus"] as! String
        }
        if dict.keys.contains("PubUserDetailList") && dict["PubUserDetailList"] != nil {
            var tmp : [DescribePubUserListBySubUserResponseBody.PubUserDetailList] = []
            for v in dict["PubUserDetailList"] as! [Any] {
                var model = DescribePubUserListBySubUserResponseBody.PubUserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pubUserDetailList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubUserDetail") && dict["SubUserDetail"] != nil {
            var model = DescribePubUserListBySubUserResponseBody.SubUserDetail()
            model.fromMap(dict["SubUserDetail"] as! [String: Any])
            self.subUserDetail = model
        }
    }
}

public class DescribePubUserListBySubUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePubUserListBySubUserResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribePubUserListBySubUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQoeMetricDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CreatedTs") && dict["CreatedTs"] != nil {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") && dict["DestroyedTs"] != nil {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeQoeMetricDataResponseBody : Tea.TeaModel {
    public class AudioData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeQoeMetricDataResponseBody.AudioData.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeQoeMetricDataResponseBody.AudioData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeQoeMetricDataResponseBody.AudioData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public class VideoData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeQoeMetricDataResponseBody.VideoData.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeQoeMetricDataResponseBody.VideoData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeQoeMetricDataResponseBody.VideoData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var audioData: [DescribeQoeMetricDataResponseBody.AudioData]?

    public var requestId: String?

    public var videoData: [DescribeQoeMetricDataResponseBody.VideoData]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioData != nil {
            var tmp : [Any] = []
            for k in self.audioData! {
                tmp.append(k.toMap())
            }
            map["AudioData"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.videoData != nil {
            var tmp : [Any] = []
            for k in self.videoData! {
                tmp.append(k.toMap())
            }
            map["VideoData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioData") && dict["AudioData"] != nil {
            var tmp : [DescribeQoeMetricDataResponseBody.AudioData] = []
            for v in dict["AudioData"] as! [Any] {
                var model = DescribeQoeMetricDataResponseBody.AudioData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.audioData = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VideoData") && dict["VideoData"] != nil {
            var tmp : [DescribeQoeMetricDataResponseBody.VideoData] = []
            for v in dict["VideoData"] as! [Any] {
                var model = DescribeQoeMetricDataResponseBody.VideoData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.videoData = tmp
        }
    }
}

public class DescribeQoeMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQoeMetricDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeQoeMetricDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityAreaDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var parentArea: String?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.parentArea != nil {
            map["ParentArea"] = self.parentArea!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("ParentArea") && dict["ParentArea"] != nil {
            self.parentArea = dict["ParentArea"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class DescribeQualityAreaDistributionStatDataResponseBody : Tea.TeaModel {
    public class QualityStatDataList : Tea.TeaModel {
        public var audioDelay: Int64?

        public var audioHighQualityTransmissionRate: String?

        public var audioSpeakOutDuration: Int64?

        public var audioStuckRate: String?

        public var callDurationRatio: String?

        public var joinChannelSucFiveSecRate: String?

        public var joinChannelSucRate: String?

        public var name: String?

        public var videoDelay: Int64?

        public var videoFirstPicDuration: Int64?

        public var videoHighQualityTransmissionRate: String?

        public var videoStuckRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioDelay != nil {
                map["AudioDelay"] = self.audioDelay!
            }
            if self.audioHighQualityTransmissionRate != nil {
                map["AudioHighQualityTransmissionRate"] = self.audioHighQualityTransmissionRate!
            }
            if self.audioSpeakOutDuration != nil {
                map["AudioSpeakOutDuration"] = self.audioSpeakOutDuration!
            }
            if self.audioStuckRate != nil {
                map["AudioStuckRate"] = self.audioStuckRate!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.joinChannelSucFiveSecRate != nil {
                map["JoinChannelSucFiveSecRate"] = self.joinChannelSucFiveSecRate!
            }
            if self.joinChannelSucRate != nil {
                map["JoinChannelSucRate"] = self.joinChannelSucRate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.videoDelay != nil {
                map["VideoDelay"] = self.videoDelay!
            }
            if self.videoFirstPicDuration != nil {
                map["VideoFirstPicDuration"] = self.videoFirstPicDuration!
            }
            if self.videoHighQualityTransmissionRate != nil {
                map["VideoHighQualityTransmissionRate"] = self.videoHighQualityTransmissionRate!
            }
            if self.videoStuckRate != nil {
                map["VideoStuckRate"] = self.videoStuckRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDelay") && dict["AudioDelay"] != nil {
                self.audioDelay = dict["AudioDelay"] as! Int64
            }
            if dict.keys.contains("AudioHighQualityTransmissionRate") && dict["AudioHighQualityTransmissionRate"] != nil {
                self.audioHighQualityTransmissionRate = dict["AudioHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("AudioSpeakOutDuration") && dict["AudioSpeakOutDuration"] != nil {
                self.audioSpeakOutDuration = dict["AudioSpeakOutDuration"] as! Int64
            }
            if dict.keys.contains("AudioStuckRate") && dict["AudioStuckRate"] != nil {
                self.audioStuckRate = dict["AudioStuckRate"] as! String
            }
            if dict.keys.contains("CallDurationRatio") && dict["CallDurationRatio"] != nil {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("JoinChannelSucFiveSecRate") && dict["JoinChannelSucFiveSecRate"] != nil {
                self.joinChannelSucFiveSecRate = dict["JoinChannelSucFiveSecRate"] as! String
            }
            if dict.keys.contains("JoinChannelSucRate") && dict["JoinChannelSucRate"] != nil {
                self.joinChannelSucRate = dict["JoinChannelSucRate"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("VideoDelay") && dict["VideoDelay"] != nil {
                self.videoDelay = dict["VideoDelay"] as! Int64
            }
            if dict.keys.contains("VideoFirstPicDuration") && dict["VideoFirstPicDuration"] != nil {
                self.videoFirstPicDuration = dict["VideoFirstPicDuration"] as! Int64
            }
            if dict.keys.contains("VideoHighQualityTransmissionRate") && dict["VideoHighQualityTransmissionRate"] != nil {
                self.videoHighQualityTransmissionRate = dict["VideoHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("VideoStuckRate") && dict["VideoStuckRate"] != nil {
                self.videoStuckRate = dict["VideoStuckRate"] as! String
            }
        }
    }
    public var qualityStatDataList: [DescribeQualityAreaDistributionStatDataResponseBody.QualityStatDataList]?

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
        if self.qualityStatDataList != nil {
            var tmp : [Any] = []
            for k in self.qualityStatDataList! {
                tmp.append(k.toMap())
            }
            map["QualityStatDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityStatDataList") && dict["QualityStatDataList"] != nil {
            var tmp : [DescribeQualityAreaDistributionStatDataResponseBody.QualityStatDataList] = []
            for v in dict["QualityStatDataList"] as! [Any] {
                var model = DescribeQualityAreaDistributionStatDataResponseBody.QualityStatDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityStatDataList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityAreaDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityAreaDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeQualityAreaDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("StatDim") && dict["StatDim"] != nil {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeQualityDistributionStatDataResponseBody : Tea.TeaModel {
    public class QualityStatDataList : Tea.TeaModel {
        public var audioDelay: Int64?

        public var audioHighQualityTransmissionRate: String?

        public var audioSpeakOutDuration: Int64?

        public var audioStuckRate: String?

        public var callDurationRatio: String?

        public var joinChannelSucFiveSecRate: String?

        public var joinChannelSucRate: String?

        public var name: String?

        public var videoDelay: Int64?

        public var videoFirstPicDuration: Int64?

        public var videoHighQualityTransmissionRate: String?

        public var videoStuckRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioDelay != nil {
                map["AudioDelay"] = self.audioDelay!
            }
            if self.audioHighQualityTransmissionRate != nil {
                map["AudioHighQualityTransmissionRate"] = self.audioHighQualityTransmissionRate!
            }
            if self.audioSpeakOutDuration != nil {
                map["AudioSpeakOutDuration"] = self.audioSpeakOutDuration!
            }
            if self.audioStuckRate != nil {
                map["AudioStuckRate"] = self.audioStuckRate!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.joinChannelSucFiveSecRate != nil {
                map["JoinChannelSucFiveSecRate"] = self.joinChannelSucFiveSecRate!
            }
            if self.joinChannelSucRate != nil {
                map["JoinChannelSucRate"] = self.joinChannelSucRate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.videoDelay != nil {
                map["VideoDelay"] = self.videoDelay!
            }
            if self.videoFirstPicDuration != nil {
                map["VideoFirstPicDuration"] = self.videoFirstPicDuration!
            }
            if self.videoHighQualityTransmissionRate != nil {
                map["VideoHighQualityTransmissionRate"] = self.videoHighQualityTransmissionRate!
            }
            if self.videoStuckRate != nil {
                map["VideoStuckRate"] = self.videoStuckRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDelay") && dict["AudioDelay"] != nil {
                self.audioDelay = dict["AudioDelay"] as! Int64
            }
            if dict.keys.contains("AudioHighQualityTransmissionRate") && dict["AudioHighQualityTransmissionRate"] != nil {
                self.audioHighQualityTransmissionRate = dict["AudioHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("AudioSpeakOutDuration") && dict["AudioSpeakOutDuration"] != nil {
                self.audioSpeakOutDuration = dict["AudioSpeakOutDuration"] as! Int64
            }
            if dict.keys.contains("AudioStuckRate") && dict["AudioStuckRate"] != nil {
                self.audioStuckRate = dict["AudioStuckRate"] as! String
            }
            if dict.keys.contains("CallDurationRatio") && dict["CallDurationRatio"] != nil {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("JoinChannelSucFiveSecRate") && dict["JoinChannelSucFiveSecRate"] != nil {
                self.joinChannelSucFiveSecRate = dict["JoinChannelSucFiveSecRate"] as! String
            }
            if dict.keys.contains("JoinChannelSucRate") && dict["JoinChannelSucRate"] != nil {
                self.joinChannelSucRate = dict["JoinChannelSucRate"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("VideoDelay") && dict["VideoDelay"] != nil {
                self.videoDelay = dict["VideoDelay"] as! Int64
            }
            if dict.keys.contains("VideoFirstPicDuration") && dict["VideoFirstPicDuration"] != nil {
                self.videoFirstPicDuration = dict["VideoFirstPicDuration"] as! Int64
            }
            if dict.keys.contains("VideoHighQualityTransmissionRate") && dict["VideoHighQualityTransmissionRate"] != nil {
                self.videoHighQualityTransmissionRate = dict["VideoHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("VideoStuckRate") && dict["VideoStuckRate"] != nil {
                self.videoStuckRate = dict["VideoStuckRate"] as! String
            }
        }
    }
    public var qualityStatDataList: [DescribeQualityDistributionStatDataResponseBody.QualityStatDataList]?

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
        if self.qualityStatDataList != nil {
            var tmp : [Any] = []
            for k in self.qualityStatDataList! {
                tmp.append(k.toMap())
            }
            map["QualityStatDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityStatDataList") && dict["QualityStatDataList"] != nil {
            var tmp : [DescribeQualityDistributionStatDataResponseBody.QualityStatDataList] = []
            for v in dict["QualityStatDataList"] as! [Any] {
                var model = DescribeQualityDistributionStatDataResponseBody.QualityStatDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityStatDataList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeQualityDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityOsSdkVersionDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class DescribeQualityOsSdkVersionDistributionStatDataResponseBody : Tea.TeaModel {
    public class QualityOsSdkVersionStatDataList : Tea.TeaModel {
        public var audioDelay: Int64?

        public var audioHighQualityTransmissionRate: String?

        public var audioSpeakOutDuration: Int64?

        public var audioStuckRate: String?

        public var callDurationRatio: String?

        public var joinChannelSucFiveSecRate: String?

        public var joinChannelSucRate: String?

        public var name: String?

        public var os: String?

        public var videoDelay: Int64?

        public var videoFirstPicDuration: Int64?

        public var videoHighQualityTransmissionRate: String?

        public var videoStuckRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioDelay != nil {
                map["AudioDelay"] = self.audioDelay!
            }
            if self.audioHighQualityTransmissionRate != nil {
                map["AudioHighQualityTransmissionRate"] = self.audioHighQualityTransmissionRate!
            }
            if self.audioSpeakOutDuration != nil {
                map["AudioSpeakOutDuration"] = self.audioSpeakOutDuration!
            }
            if self.audioStuckRate != nil {
                map["AudioStuckRate"] = self.audioStuckRate!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.joinChannelSucFiveSecRate != nil {
                map["JoinChannelSucFiveSecRate"] = self.joinChannelSucFiveSecRate!
            }
            if self.joinChannelSucRate != nil {
                map["JoinChannelSucRate"] = self.joinChannelSucRate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.videoDelay != nil {
                map["VideoDelay"] = self.videoDelay!
            }
            if self.videoFirstPicDuration != nil {
                map["VideoFirstPicDuration"] = self.videoFirstPicDuration!
            }
            if self.videoHighQualityTransmissionRate != nil {
                map["VideoHighQualityTransmissionRate"] = self.videoHighQualityTransmissionRate!
            }
            if self.videoStuckRate != nil {
                map["VideoStuckRate"] = self.videoStuckRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDelay") && dict["AudioDelay"] != nil {
                self.audioDelay = dict["AudioDelay"] as! Int64
            }
            if dict.keys.contains("AudioHighQualityTransmissionRate") && dict["AudioHighQualityTransmissionRate"] != nil {
                self.audioHighQualityTransmissionRate = dict["AudioHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("AudioSpeakOutDuration") && dict["AudioSpeakOutDuration"] != nil {
                self.audioSpeakOutDuration = dict["AudioSpeakOutDuration"] as! Int64
            }
            if dict.keys.contains("AudioStuckRate") && dict["AudioStuckRate"] != nil {
                self.audioStuckRate = dict["AudioStuckRate"] as! String
            }
            if dict.keys.contains("CallDurationRatio") && dict["CallDurationRatio"] != nil {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("JoinChannelSucFiveSecRate") && dict["JoinChannelSucFiveSecRate"] != nil {
                self.joinChannelSucFiveSecRate = dict["JoinChannelSucFiveSecRate"] as! String
            }
            if dict.keys.contains("JoinChannelSucRate") && dict["JoinChannelSucRate"] != nil {
                self.joinChannelSucRate = dict["JoinChannelSucRate"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("VideoDelay") && dict["VideoDelay"] != nil {
                self.videoDelay = dict["VideoDelay"] as! Int64
            }
            if dict.keys.contains("VideoFirstPicDuration") && dict["VideoFirstPicDuration"] != nil {
                self.videoFirstPicDuration = dict["VideoFirstPicDuration"] as! Int64
            }
            if dict.keys.contains("VideoHighQualityTransmissionRate") && dict["VideoHighQualityTransmissionRate"] != nil {
                self.videoHighQualityTransmissionRate = dict["VideoHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("VideoStuckRate") && dict["VideoStuckRate"] != nil {
                self.videoStuckRate = dict["VideoStuckRate"] as! String
            }
        }
    }
    public var qualityOsSdkVersionStatDataList: [DescribeQualityOsSdkVersionDistributionStatDataResponseBody.QualityOsSdkVersionStatDataList]?

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
        if self.qualityOsSdkVersionStatDataList != nil {
            var tmp : [Any] = []
            for k in self.qualityOsSdkVersionStatDataList! {
                tmp.append(k.toMap())
            }
            map["QualityOsSdkVersionStatDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityOsSdkVersionStatDataList") && dict["QualityOsSdkVersionStatDataList"] != nil {
            var tmp : [DescribeQualityOsSdkVersionDistributionStatDataResponseBody.QualityOsSdkVersionStatDataList] = []
            for v in dict["QualityOsSdkVersionStatDataList"] as! [Any] {
                var model = DescribeQualityOsSdkVersionDistributionStatDataResponseBody.QualityOsSdkVersionStatDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityOsSdkVersionStatDataList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityOsSdkVersionDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityOsSdkVersionDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeQualityOsSdkVersionDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var types: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! String
        }
    }
}

public class DescribeQualityOverallDataResponseBody : Tea.TeaModel {
    public class QualityOverallData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var average: String?

        public var nodes: [DescribeQualityOverallDataResponseBody.QualityOverallData.Nodes]?

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
            if self.average != nil {
                map["Average"] = self.average!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Average") && dict["Average"] != nil {
                self.average = dict["Average"] as! String
            }
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeQualityOverallDataResponseBody.QualityOverallData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeQualityOverallDataResponseBody.QualityOverallData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var qualityOverallData: [DescribeQualityOverallDataResponseBody.QualityOverallData]?

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
        if self.qualityOverallData != nil {
            var tmp : [Any] = []
            for k in self.qualityOverallData! {
                tmp.append(k.toMap())
            }
            map["QualityOverallData"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityOverallData") && dict["QualityOverallData"] != nil {
            var tmp : [DescribeQualityOverallDataResponseBody.QualityOverallData] = []
            for v in dict["QualityOverallData"] as! [Any] {
                var model = DescribeQualityOverallDataResponseBody.QualityOverallData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityOverallData = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityOverallDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeQualityOverallDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageAreaDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: String?

    public var parentArea: String?

    public var startDate: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.parentArea != nil {
            map["ParentArea"] = self.parentArea!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ParentArea") && dict["ParentArea"] != nil {
            self.parentArea = dict["ParentArea"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class DescribeUsageAreaDistributionStatDataResponseBody : Tea.TeaModel {
    public class UsageAreaStatList : Tea.TeaModel {
        public var audioCallDuration: Int32?

        public var name: String?

        public var totalCallDuration: Int32?

        public var videoCallDuration: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioCallDuration != nil {
                map["AudioCallDuration"] = self.audioCallDuration!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.totalCallDuration != nil {
                map["TotalCallDuration"] = self.totalCallDuration!
            }
            if self.videoCallDuration != nil {
                map["VideoCallDuration"] = self.videoCallDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioCallDuration") && dict["AudioCallDuration"] != nil {
                self.audioCallDuration = dict["AudioCallDuration"] as! Int32
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TotalCallDuration") && dict["TotalCallDuration"] != nil {
                self.totalCallDuration = dict["TotalCallDuration"] as! Int32
            }
            if dict.keys.contains("VideoCallDuration") && dict["VideoCallDuration"] != nil {
                self.videoCallDuration = dict["VideoCallDuration"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var usageAreaStatList: [DescribeUsageAreaDistributionStatDataResponseBody.UsageAreaStatList]?

    public override init() {
        super.init()
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
        if self.usageAreaStatList != nil {
            var tmp : [Any] = []
            for k in self.usageAreaStatList! {
                tmp.append(k.toMap())
            }
            map["UsageAreaStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageAreaStatList") && dict["UsageAreaStatList"] != nil {
            var tmp : [DescribeUsageAreaDistributionStatDataResponseBody.UsageAreaStatList] = []
            for v in dict["UsageAreaStatList"] as! [Any] {
                var model = DescribeUsageAreaDistributionStatDataResponseBody.UsageAreaStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageAreaStatList = tmp
        }
    }
}

public class DescribeUsageAreaDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageAreaDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUsageAreaDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("StatDim") && dict["StatDim"] != nil {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeUsageDistributionStatDataResponseBody : Tea.TeaModel {
    public class UsageStatList : Tea.TeaModel {
        public var audioCallDuration: Int64?

        public var callDurationRatio: String?

        public var name: String?

        public var totalCallDuration: Int64?

        public var videoCallDuration: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioCallDuration != nil {
                map["AudioCallDuration"] = self.audioCallDuration!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.totalCallDuration != nil {
                map["TotalCallDuration"] = self.totalCallDuration!
            }
            if self.videoCallDuration != nil {
                map["VideoCallDuration"] = self.videoCallDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioCallDuration") && dict["AudioCallDuration"] != nil {
                self.audioCallDuration = dict["AudioCallDuration"] as! Int64
            }
            if dict.keys.contains("CallDurationRatio") && dict["CallDurationRatio"] != nil {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TotalCallDuration") && dict["TotalCallDuration"] != nil {
                self.totalCallDuration = dict["TotalCallDuration"] as! Int64
            }
            if dict.keys.contains("VideoCallDuration") && dict["VideoCallDuration"] != nil {
                self.videoCallDuration = dict["VideoCallDuration"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var usageStatList: [DescribeUsageDistributionStatDataResponseBody.UsageStatList]?

    public override init() {
        super.init()
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
        if self.usageStatList != nil {
            var tmp : [Any] = []
            for k in self.usageStatList! {
                tmp.append(k.toMap())
            }
            map["UsageStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageStatList") && dict["UsageStatList"] != nil {
            var tmp : [DescribeUsageDistributionStatDataResponseBody.UsageStatList] = []
            for v in dict["UsageStatList"] as! [Any] {
                var model = DescribeUsageDistributionStatDataResponseBody.UsageStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageStatList = tmp
        }
    }
}

public class DescribeUsageDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUsageDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageOsSdkVersionDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class DescribeUsageOsSdkVersionDistributionStatDataResponseBody : Tea.TeaModel {
    public class UsageOsSdkVersionStatList : Tea.TeaModel {
        public var audioCallDuration: Int64?

        public var callDurationRatio: String?

        public var name: String?

        public var os: String?

        public var totalCallDuration: Int64?

        public var videoCallDuration: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioCallDuration != nil {
                map["AudioCallDuration"] = self.audioCallDuration!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.totalCallDuration != nil {
                map["TotalCallDuration"] = self.totalCallDuration!
            }
            if self.videoCallDuration != nil {
                map["VideoCallDuration"] = self.videoCallDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioCallDuration") && dict["AudioCallDuration"] != nil {
                self.audioCallDuration = dict["AudioCallDuration"] as! Int64
            }
            if dict.keys.contains("CallDurationRatio") && dict["CallDurationRatio"] != nil {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Os") && dict["Os"] != nil {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("TotalCallDuration") && dict["TotalCallDuration"] != nil {
                self.totalCallDuration = dict["TotalCallDuration"] as! Int64
            }
            if dict.keys.contains("VideoCallDuration") && dict["VideoCallDuration"] != nil {
                self.videoCallDuration = dict["VideoCallDuration"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var usageOsSdkVersionStatList: [DescribeUsageOsSdkVersionDistributionStatDataResponseBody.UsageOsSdkVersionStatList]?

    public override init() {
        super.init()
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
        if self.usageOsSdkVersionStatList != nil {
            var tmp : [Any] = []
            for k in self.usageOsSdkVersionStatList! {
                tmp.append(k.toMap())
            }
            map["UsageOsSdkVersionStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageOsSdkVersionStatList") && dict["UsageOsSdkVersionStatList"] != nil {
            var tmp : [DescribeUsageOsSdkVersionDistributionStatDataResponseBody.UsageOsSdkVersionStatList] = []
            for v in dict["UsageOsSdkVersionStatList"] as! [Any] {
                var model = DescribeUsageOsSdkVersionDistributionStatDataResponseBody.UsageOsSdkVersionStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageOsSdkVersionStatList = tmp
        }
    }
}

public class DescribeUsageOsSdkVersionDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageOsSdkVersionDistributionStatDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUsageOsSdkVersionDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var types: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! String
        }
    }
}

public class DescribeUsageOverallDataResponseBody : Tea.TeaModel {
    public class UsageOverallData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeUsageOverallDataResponseBody.UsageOverallData.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [DescribeUsageOverallDataResponseBody.UsageOverallData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeUsageOverallDataResponseBody.UsageOverallData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestId: String?

    public var usageOverallData: [DescribeUsageOverallDataResponseBody.UsageOverallData]?

    public override init() {
        super.init()
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
        if self.usageOverallData != nil {
            var tmp : [Any] = []
            for k in self.usageOverallData! {
                tmp.append(k.toMap())
            }
            map["UsageOverallData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageOverallData") && dict["UsageOverallData"] != nil {
            var tmp : [DescribeUsageOverallDataResponseBody.UsageOverallData] = []
            for v in dict["UsageOverallData"] as! [Any] {
                var model = DescribeUsageOverallDataResponseBody.UsageOverallData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageOverallData = tmp
        }
    }
}

public class DescribeUsageOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageOverallDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUsageOverallDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
