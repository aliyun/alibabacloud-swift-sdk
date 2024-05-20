import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchCheckSessionRequest : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var customSessionId: String?

        public var platformSessionId: String?

        public var referenceInfo: [String: Any]?

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
            if self.customSessionId != nil {
                map["CustomSessionId"] = self.customSessionId!
            }
            if self.platformSessionId != nil {
                map["PlatformSessionId"] = self.platformSessionId!
            }
            if self.referenceInfo != nil {
                map["ReferenceInfo"] = self.referenceInfo!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
                self.customSessionId = dict["CustomSessionId"] as! String
            }
            if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
                self.platformSessionId = dict["PlatformSessionId"] as! String
            }
            if dict.keys.contains("ReferenceInfo") && dict["ReferenceInfo"] != nil {
                self.referenceInfo = dict["ReferenceInfo"] as! [String: Any]
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var records: [BatchCheckSessionRequest.Records]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") && dict["Records"] != nil {
            var tmp : [BatchCheckSessionRequest.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = BatchCheckSessionRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
    }
}

public class BatchCheckSessionShrinkRequest : Tea.TeaModel {
    public var recordsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordsShrink != nil {
            map["Records"] = self.recordsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") && dict["Records"] != nil {
            self.recordsShrink = dict["Records"] as! String
        }
    }
}

public class BatchCheckSessionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchCheckSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCheckSessionResponseBody?

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
            var model = BatchCheckSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelReserveTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancelReserveTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancelReserveTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelReserveTaskResponseBody?

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
            var model = CancelReserveTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAdaptationRequest : Tea.TeaModel {
    public class AdaptTarget : Tea.TeaModel {
        public var bitRate: Int32?

        public var frameRate: Int32?

        public var resolution: String?

        public var startProgram: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bitRate != nil {
                map["BitRate"] = self.bitRate!
            }
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.startProgram != nil {
                map["StartProgram"] = self.startProgram!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BitRate") && dict["BitRate"] != nil {
                self.bitRate = dict["BitRate"] as! Int32
            }
            if dict.keys.contains("FrameRate") && dict["FrameRate"] != nil {
                self.frameRate = dict["FrameRate"] as! Int32
            }
            if dict.keys.contains("Resolution") && dict["Resolution"] != nil {
                self.resolution = dict["Resolution"] as! String
            }
            if dict.keys.contains("StartProgram") && dict["StartProgram"] != nil {
                self.startProgram = dict["StartProgram"] as! String
            }
        }
    }
    public var adaptTarget: CreateAdaptationRequest.AdaptTarget?

    public var appVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.adaptTarget?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adaptTarget != nil {
            map["AdaptTarget"] = self.adaptTarget?.toMap()
        }
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdaptTarget") && dict["AdaptTarget"] != nil {
            var model = CreateAdaptationRequest.AdaptTarget()
            model.fromMap(dict["AdaptTarget"] as! [String: Any])
            self.adaptTarget = model
        }
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
    }
}

public class CreateAdaptationShrinkRequest : Tea.TeaModel {
    public var adaptTargetShrink: String?

    public var appVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adaptTargetShrink != nil {
            map["AdaptTarget"] = self.adaptTargetShrink!
        }
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdaptTarget") && dict["AdaptTarget"] != nil {
            self.adaptTargetShrink = dict["AdaptTarget"] as! String
        }
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
    }
}

public class CreateAdaptationResponseBody : Tea.TeaModel {
    public var adaptApplyId: Int64?

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
        if self.adaptApplyId != nil {
            map["AdaptApplyId"] = self.adaptApplyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdaptApplyId") && dict["AdaptApplyId"] != nil {
            self.adaptApplyId = dict["AdaptApplyId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAdaptationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAdaptationResponseBody?

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
            var model = CreateAdaptationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var appName: String?

    public var appType: String?

    public var streamingAppId: String?

    public var streamingSolution: String?

    public override init() {
        super.init()
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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.streamingAppId != nil {
            map["StreamingAppId"] = self.streamingAppId!
        }
        if self.streamingSolution != nil {
            map["StreamingSolution"] = self.streamingSolution!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("StreamingAppId") && dict["StreamingAppId"] != nil {
            self.streamingAppId = dict["StreamingAppId"] as! String
        }
        if dict.keys.contains("StreamingSolution") && dict["StreamingSolution"] != nil {
            self.streamingSolution = dict["StreamingSolution"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppSessionRequest : Tea.TeaModel {
    public class StartParameters : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class SystemInfo : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var adapterFileId: String?

    public var appId: String?

    public var appVersion: String?

    public var clientIp: String?

    public var customSessionId: String?

    public var customUserId: String?

    public var districtId: String?

    public var enablePostpaid: Bool?

    public var projectId: String?

    public var startParameters: [CreateAppSessionRequest.StartParameters]?

    public var systemInfo: [CreateAppSessionRequest.SystemInfo]?

    public var timeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adapterFileId != nil {
            map["AdapterFileId"] = self.adapterFileId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.customUserId != nil {
            map["CustomUserId"] = self.customUserId!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.enablePostpaid != nil {
            map["EnablePostpaid"] = self.enablePostpaid!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.startParameters != nil {
            var tmp : [Any] = []
            for k in self.startParameters! {
                tmp.append(k.toMap())
            }
            map["StartParameters"] = tmp
        }
        if self.systemInfo != nil {
            var tmp : [Any] = []
            for k in self.systemInfo! {
                tmp.append(k.toMap())
            }
            map["SystemInfo"] = tmp
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdapterFileId") && dict["AdapterFileId"] != nil {
            self.adapterFileId = dict["AdapterFileId"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
            self.customUserId = dict["CustomUserId"] as! String
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("EnablePostpaid") && dict["EnablePostpaid"] != nil {
            self.enablePostpaid = dict["EnablePostpaid"] as! Bool
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StartParameters") && dict["StartParameters"] != nil {
            var tmp : [CreateAppSessionRequest.StartParameters] = []
            for v in dict["StartParameters"] as! [Any] {
                var model = CreateAppSessionRequest.StartParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.startParameters = tmp
        }
        if dict.keys.contains("SystemInfo") && dict["SystemInfo"] != nil {
            var tmp : [CreateAppSessionRequest.SystemInfo] = []
            for v in dict["SystemInfo"] as! [Any] {
                var model = CreateAppSessionRequest.SystemInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemInfo = tmp
        }
        if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
            self.timeout = dict["Timeout"] as! Int64
        }
    }
}

public class CreateAppSessionResponseBody : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var customSessionId: String?

    public var platformSessionId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppSessionResponseBody?

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
            var model = CreateAppSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppSessionBatchRequest : Tea.TeaModel {
    public class AppInfos : Tea.TeaModel {
        public class ResultStore : Tea.TeaModel {
            public class StoreInfo : Tea.TeaModel {
                public var key: String?

                public var value: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") && dict["Key"] != nil {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var need: Bool?

            public var storeInfo: [CreateAppSessionBatchRequest.AppInfos.ResultStore.StoreInfo]?

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
                if self.need != nil {
                    map["Need"] = self.need!
                }
                if self.storeInfo != nil {
                    var tmp : [Any] = []
                    for k in self.storeInfo! {
                        tmp.append(k.toMap())
                    }
                    map["StoreInfo"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Need") && dict["Need"] != nil {
                    self.need = dict["Need"] as! Bool
                }
                if dict.keys.contains("StoreInfo") && dict["StoreInfo"] != nil {
                    var tmp : [CreateAppSessionBatchRequest.AppInfos.ResultStore.StoreInfo] = []
                    for v in dict["StoreInfo"] as! [Any] {
                        var model = CreateAppSessionBatchRequest.AppInfos.ResultStore.StoreInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.storeInfo = tmp
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class StartParameters : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class SystemInfo : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var adapterFileId: String?

        public var appId: String?

        public var appVersion: String?

        public var clientIp: String?

        public var customUserId: String?

        public var customerSessionId: String?

        public var datasetId: String?

        public var districtId: String?

        public var projectId: String?

        public var resultStore: CreateAppSessionBatchRequest.AppInfos.ResultStore?

        public var startParameters: [CreateAppSessionBatchRequest.AppInfos.StartParameters]?

        public var systemInfo: [CreateAppSessionBatchRequest.AppInfos.SystemInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resultStore?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adapterFileId != nil {
                map["AdapterFileId"] = self.adapterFileId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.customUserId != nil {
                map["CustomUserId"] = self.customUserId!
            }
            if self.customerSessionId != nil {
                map["CustomerSessionId"] = self.customerSessionId!
            }
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.districtId != nil {
                map["DistrictId"] = self.districtId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.resultStore != nil {
                map["ResultStore"] = self.resultStore?.toMap()
            }
            if self.startParameters != nil {
                var tmp : [Any] = []
                for k in self.startParameters! {
                    tmp.append(k.toMap())
                }
                map["StartParameters"] = tmp
            }
            if self.systemInfo != nil {
                var tmp : [Any] = []
                for k in self.systemInfo! {
                    tmp.append(k.toMap())
                }
                map["SystemInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdapterFileId") && dict["AdapterFileId"] != nil {
                self.adapterFileId = dict["AdapterFileId"] as! String
            }
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                self.customUserId = dict["CustomUserId"] as! String
            }
            if dict.keys.contains("CustomerSessionId") && dict["CustomerSessionId"] != nil {
                self.customerSessionId = dict["CustomerSessionId"] as! String
            }
            if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                self.districtId = dict["DistrictId"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ResultStore") && dict["ResultStore"] != nil {
                var model = CreateAppSessionBatchRequest.AppInfos.ResultStore()
                model.fromMap(dict["ResultStore"] as! [String: Any])
                self.resultStore = model
            }
            if dict.keys.contains("StartParameters") && dict["StartParameters"] != nil {
                var tmp : [CreateAppSessionBatchRequest.AppInfos.StartParameters] = []
                for v in dict["StartParameters"] as! [Any] {
                    var model = CreateAppSessionBatchRequest.AppInfos.StartParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.startParameters = tmp
            }
            if dict.keys.contains("SystemInfo") && dict["SystemInfo"] != nil {
                var tmp : [CreateAppSessionBatchRequest.AppInfos.SystemInfo] = []
                for v in dict["SystemInfo"] as! [Any] {
                    var model = CreateAppSessionBatchRequest.AppInfos.SystemInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemInfo = tmp
            }
        }
    }
    public var appInfos: [CreateAppSessionBatchRequest.AppInfos]?

    public var customTaskId: String?

    public var timeout: Int32?

    public override init() {
        super.init()
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
        if self.customTaskId != nil {
            map["CustomTaskId"] = self.customTaskId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfos") && dict["AppInfos"] != nil {
            var tmp : [CreateAppSessionBatchRequest.AppInfos] = []
            for v in dict["AppInfos"] as! [Any] {
                var model = CreateAppSessionBatchRequest.AppInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appInfos = tmp
        }
        if dict.keys.contains("CustomTaskId") && dict["CustomTaskId"] != nil {
            self.customTaskId = dict["CustomTaskId"] as! String
        }
        if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
            self.timeout = dict["Timeout"] as! Int32
        }
    }
}

public class CreateAppSessionBatchShrinkRequest : Tea.TeaModel {
    public var appInfosShrink: String?

    public var customTaskId: String?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInfosShrink != nil {
            map["AppInfos"] = self.appInfosShrink!
        }
        if self.customTaskId != nil {
            map["CustomTaskId"] = self.customTaskId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfos") && dict["AppInfos"] != nil {
            self.appInfosShrink = dict["AppInfos"] as! String
        }
        if dict.keys.contains("CustomTaskId") && dict["CustomTaskId"] != nil {
            self.customTaskId = dict["CustomTaskId"] as! String
        }
        if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
            self.timeout = dict["Timeout"] as! Int32
        }
    }
}

public class CreateAppSessionBatchResponseBody : Tea.TeaModel {
    public var customTaskId: String?

    public var platformTaskId: String?

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
        if self.customTaskId != nil {
            map["CustomTaskId"] = self.customTaskId!
        }
        if self.platformTaskId != nil {
            map["PlatformTaskId"] = self.platformTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomTaskId") && dict["CustomTaskId"] != nil {
            self.customTaskId = dict["CustomTaskId"] as! String
        }
        if dict.keys.contains("PlatformTaskId") && dict["PlatformTaskId"] != nil {
            self.platformTaskId = dict["PlatformTaskId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppSessionBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppSessionBatchResponseBody?

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
            var model = CreateAppSessionBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppSessionBatchSyncRequest : Tea.TeaModel {
    public class AppInfos : Tea.TeaModel {
        public class MatchRules : Tea.TeaModel {
            public var key: String?

            public var type: String?

            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public class StartParameters : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class SystemInfo : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var adapterFileId: String?

        public var appId: String?

        public var appVersion: String?

        public var clientIp: String?

        public var customUserId: String?

        public var customerSessionId: String?

        public var districtId: String?

        public var matchRules: [CreateAppSessionBatchSyncRequest.AppInfos.MatchRules]?

        public var projectId: String?

        public var startParameters: [CreateAppSessionBatchSyncRequest.AppInfos.StartParameters]?

        public var systemInfo: [CreateAppSessionBatchSyncRequest.AppInfos.SystemInfo]?

        public var tags: [CreateAppSessionBatchSyncRequest.AppInfos.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adapterFileId != nil {
                map["AdapterFileId"] = self.adapterFileId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.customUserId != nil {
                map["CustomUserId"] = self.customUserId!
            }
            if self.customerSessionId != nil {
                map["CustomerSessionId"] = self.customerSessionId!
            }
            if self.districtId != nil {
                map["DistrictId"] = self.districtId!
            }
            if self.matchRules != nil {
                var tmp : [Any] = []
                for k in self.matchRules! {
                    tmp.append(k.toMap())
                }
                map["MatchRules"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.startParameters != nil {
                var tmp : [Any] = []
                for k in self.startParameters! {
                    tmp.append(k.toMap())
                }
                map["StartParameters"] = tmp
            }
            if self.systemInfo != nil {
                var tmp : [Any] = []
                for k in self.systemInfo! {
                    tmp.append(k.toMap())
                }
                map["SystemInfo"] = tmp
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdapterFileId") && dict["AdapterFileId"] != nil {
                self.adapterFileId = dict["AdapterFileId"] as! String
            }
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
                self.customUserId = dict["CustomUserId"] as! String
            }
            if dict.keys.contains("CustomerSessionId") && dict["CustomerSessionId"] != nil {
                self.customerSessionId = dict["CustomerSessionId"] as! String
            }
            if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                self.districtId = dict["DistrictId"] as! String
            }
            if dict.keys.contains("MatchRules") && dict["MatchRules"] != nil {
                var tmp : [CreateAppSessionBatchSyncRequest.AppInfos.MatchRules] = []
                for v in dict["MatchRules"] as! [Any] {
                    var model = CreateAppSessionBatchSyncRequest.AppInfos.MatchRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.matchRules = tmp
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("StartParameters") && dict["StartParameters"] != nil {
                var tmp : [CreateAppSessionBatchSyncRequest.AppInfos.StartParameters] = []
                for v in dict["StartParameters"] as! [Any] {
                    var model = CreateAppSessionBatchSyncRequest.AppInfos.StartParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.startParameters = tmp
            }
            if dict.keys.contains("SystemInfo") && dict["SystemInfo"] != nil {
                var tmp : [CreateAppSessionBatchSyncRequest.AppInfos.SystemInfo] = []
                for v in dict["SystemInfo"] as! [Any] {
                    var model = CreateAppSessionBatchSyncRequest.AppInfos.SystemInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemInfo = tmp
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [CreateAppSessionBatchSyncRequest.AppInfos.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = CreateAppSessionBatchSyncRequest.AppInfos.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var appInfos: [CreateAppSessionBatchSyncRequest.AppInfos]?

    public var batchId: String?

    public override init() {
        super.init()
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
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfos") && dict["AppInfos"] != nil {
            var tmp : [CreateAppSessionBatchSyncRequest.AppInfos] = []
            for v in dict["AppInfos"] as! [Any] {
                var model = CreateAppSessionBatchSyncRequest.AppInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appInfos = tmp
        }
        if dict.keys.contains("BatchId") && dict["BatchId"] != nil {
            self.batchId = dict["BatchId"] as! String
        }
    }
}

public class CreateAppSessionBatchSyncShrinkRequest : Tea.TeaModel {
    public var appInfosShrink: String?

    public var batchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInfosShrink != nil {
            map["AppInfos"] = self.appInfosShrink!
        }
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfos") && dict["AppInfos"] != nil {
            self.appInfosShrink = dict["AppInfos"] as! String
        }
        if dict.keys.contains("BatchId") && dict["BatchId"] != nil {
            self.batchId = dict["BatchId"] as! String
        }
    }
}

public class CreateAppSessionBatchSyncResponseBody : Tea.TeaModel {
    public class FailedList : Tea.TeaModel {
        public class FailedInfo : Tea.TeaModel {
            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
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
            }
        }
        public var appId: String?

        public var customSessionId: String?

        public var failedInfo: CreateAppSessionBatchSyncResponseBody.FailedList.FailedInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.failedInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.customSessionId != nil {
                map["CustomSessionId"] = self.customSessionId!
            }
            if self.failedInfo != nil {
                map["FailedInfo"] = self.failedInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
                self.customSessionId = dict["CustomSessionId"] as! String
            }
            if dict.keys.contains("FailedInfo") && dict["FailedInfo"] != nil {
                var model = CreateAppSessionBatchSyncResponseBody.FailedList.FailedInfo()
                model.fromMap(dict["FailedInfo"] as! [String: Any])
                self.failedInfo = model
            }
        }
    }
    public class ResultList : Tea.TeaModel {
        public class BizInfo : Tea.TeaModel {
            public class Endpoints : Tea.TeaModel {
                public var accessHost: String?

                public var accessPort: String?

                public var districtId: String?

                public var isp: String?

                public var name: String?

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
                    if self.accessHost != nil {
                        map["AccessHost"] = self.accessHost!
                    }
                    if self.accessPort != nil {
                        map["AccessPort"] = self.accessPort!
                    }
                    if self.districtId != nil {
                        map["DistrictId"] = self.districtId!
                    }
                    if self.isp != nil {
                        map["Isp"] = self.isp!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessHost") && dict["AccessHost"] != nil {
                        self.accessHost = dict["AccessHost"] as! String
                    }
                    if dict.keys.contains("AccessPort") && dict["AccessPort"] != nil {
                        self.accessPort = dict["AccessPort"] as! String
                    }
                    if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                        self.districtId = dict["DistrictId"] as! String
                    }
                    if dict.keys.contains("Isp") && dict["Isp"] != nil {
                        self.isp = dict["Isp"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var biz: [String: Any]?

            public var endpoints: [CreateAppSessionBatchSyncResponseBody.ResultList.BizInfo.Endpoints]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.biz != nil {
                    map["Biz"] = self.biz!
                }
                if self.endpoints != nil {
                    var tmp : [Any] = []
                    for k in self.endpoints! {
                        tmp.append(k.toMap())
                    }
                    map["Endpoints"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Biz") && dict["Biz"] != nil {
                    self.biz = dict["Biz"] as! [String: Any]
                }
                if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                    var tmp : [CreateAppSessionBatchSyncResponseBody.ResultList.BizInfo.Endpoints] = []
                    for v in dict["Endpoints"] as! [Any] {
                        var model = CreateAppSessionBatchSyncResponseBody.ResultList.BizInfo.Endpoints()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.endpoints = tmp
                }
            }
        }
        public var appId: String?

        public var appVersion: String?

        public var bizInfo: CreateAppSessionBatchSyncResponseBody.ResultList.BizInfo?

        public var customSessionId: String?

        public var platformSessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bizInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.bizInfo != nil {
                map["BizInfo"] = self.bizInfo?.toMap()
            }
            if self.customSessionId != nil {
                map["CustomSessionId"] = self.customSessionId!
            }
            if self.platformSessionId != nil {
                map["PlatformSessionId"] = self.platformSessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("BizInfo") && dict["BizInfo"] != nil {
                var model = CreateAppSessionBatchSyncResponseBody.ResultList.BizInfo()
                model.fromMap(dict["BizInfo"] as! [String: Any])
                self.bizInfo = model
            }
            if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
                self.customSessionId = dict["CustomSessionId"] as! String
            }
            if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
                self.platformSessionId = dict["PlatformSessionId"] as! String
            }
        }
    }
    public var batchId: String?

    public var failedList: [CreateAppSessionBatchSyncResponseBody.FailedList]?

    public var requestId: String?

    public var resultList: [CreateAppSessionBatchSyncResponseBody.ResultList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.failedList != nil {
            var tmp : [Any] = []
            for k in self.failedList! {
                tmp.append(k.toMap())
            }
            map["FailedList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultList != nil {
            var tmp : [Any] = []
            for k in self.resultList! {
                tmp.append(k.toMap())
            }
            map["ResultList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchId") && dict["BatchId"] != nil {
            self.batchId = dict["BatchId"] as! String
        }
        if dict.keys.contains("FailedList") && dict["FailedList"] != nil {
            var tmp : [CreateAppSessionBatchSyncResponseBody.FailedList] = []
            for v in dict["FailedList"] as! [Any] {
                var model = CreateAppSessionBatchSyncResponseBody.FailedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.failedList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultList") && dict["ResultList"] != nil {
            var tmp : [CreateAppSessionBatchSyncResponseBody.ResultList] = []
            for v in dict["ResultList"] as! [Any] {
                var model = CreateAppSessionBatchSyncResponseBody.ResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resultList = tmp
        }
    }
}

public class CreateAppSessionBatchSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppSessionBatchSyncResponseBody?

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
            var model = CreateAppSessionBatchSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppSessionSyncRequest : Tea.TeaModel {
    public class MatchRules : Tea.TeaModel {
        public var key: String?

        public var type: String?

        public var values: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public class StartParameters : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class SystemInfo : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var adapterFileId: String?

    public var appId: String?

    public var appVersion: String?

    public var clientIp: String?

    public var customSessionId: String?

    public var customUserId: String?

    public var districtId: String?

    public var matchRules: [CreateAppSessionSyncRequest.MatchRules]?

    public var projectId: String?

    public var startParameters: [CreateAppSessionSyncRequest.StartParameters]?

    public var systemInfo: [CreateAppSessionSyncRequest.SystemInfo]?

    public var tags: [CreateAppSessionSyncRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adapterFileId != nil {
            map["AdapterFileId"] = self.adapterFileId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.customUserId != nil {
            map["CustomUserId"] = self.customUserId!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.matchRules != nil {
            var tmp : [Any] = []
            for k in self.matchRules! {
                tmp.append(k.toMap())
            }
            map["MatchRules"] = tmp
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.startParameters != nil {
            var tmp : [Any] = []
            for k in self.startParameters! {
                tmp.append(k.toMap())
            }
            map["StartParameters"] = tmp
        }
        if self.systemInfo != nil {
            var tmp : [Any] = []
            for k in self.systemInfo! {
                tmp.append(k.toMap())
            }
            map["SystemInfo"] = tmp
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdapterFileId") && dict["AdapterFileId"] != nil {
            self.adapterFileId = dict["AdapterFileId"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("CustomUserId") && dict["CustomUserId"] != nil {
            self.customUserId = dict["CustomUserId"] as! String
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("MatchRules") && dict["MatchRules"] != nil {
            var tmp : [CreateAppSessionSyncRequest.MatchRules] = []
            for v in dict["MatchRules"] as! [Any] {
                var model = CreateAppSessionSyncRequest.MatchRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.matchRules = tmp
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StartParameters") && dict["StartParameters"] != nil {
            var tmp : [CreateAppSessionSyncRequest.StartParameters] = []
            for v in dict["StartParameters"] as! [Any] {
                var model = CreateAppSessionSyncRequest.StartParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.startParameters = tmp
        }
        if dict.keys.contains("SystemInfo") && dict["SystemInfo"] != nil {
            var tmp : [CreateAppSessionSyncRequest.SystemInfo] = []
            for v in dict["SystemInfo"] as! [Any] {
                var model = CreateAppSessionSyncRequest.SystemInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemInfo = tmp
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [CreateAppSessionSyncRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateAppSessionSyncRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class CreateAppSessionSyncResponseBody : Tea.TeaModel {
    public class BizInfo : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var accessHost: String?

            public var accessPort: String?

            public var districtId: String?

            public var isp: String?

            public var name: String?

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
                if self.accessHost != nil {
                    map["AccessHost"] = self.accessHost!
                }
                if self.accessPort != nil {
                    map["AccessPort"] = self.accessPort!
                }
                if self.districtId != nil {
                    map["DistrictId"] = self.districtId!
                }
                if self.isp != nil {
                    map["Isp"] = self.isp!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessHost") && dict["AccessHost"] != nil {
                    self.accessHost = dict["AccessHost"] as! String
                }
                if dict.keys.contains("AccessPort") && dict["AccessPort"] != nil {
                    self.accessPort = dict["AccessPort"] as! String
                }
                if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                    self.districtId = dict["DistrictId"] as! String
                }
                if dict.keys.contains("Isp") && dict["Isp"] != nil {
                    self.isp = dict["Isp"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var biz: [String: Any]?

        public var endpoints: [CreateAppSessionSyncResponseBody.BizInfo.Endpoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.biz != nil {
                map["Biz"] = self.biz!
            }
            if self.endpoints != nil {
                var tmp : [Any] = []
                for k in self.endpoints! {
                    tmp.append(k.toMap())
                }
                map["Endpoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Biz") && dict["Biz"] != nil {
                self.biz = dict["Biz"] as! [String: Any]
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var tmp : [CreateAppSessionSyncResponseBody.BizInfo.Endpoints] = []
                for v in dict["Endpoints"] as! [Any] {
                    var model = CreateAppSessionSyncResponseBody.BizInfo.Endpoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.endpoints = tmp
            }
        }
    }
    public var appId: String?

    public var appVersion: String?

    public var bizInfo: CreateAppSessionSyncResponseBody.BizInfo?

    public var customSessionId: String?

    public var platformSessionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bizInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.bizInfo != nil {
            map["BizInfo"] = self.bizInfo?.toMap()
        }
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BizInfo") && dict["BizInfo"] != nil {
            var model = CreateAppSessionSyncResponseBody.BizInfo()
            model.fromMap(dict["BizInfo"] as! [String: Any])
            self.bizInfo = model
        }
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppSessionSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppSessionSyncResponseBody?

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
            var model = CreateAppSessionSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppVersionRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersionName: String?

    public override init() {
        super.init()
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
        if self.appVersionName != nil {
            map["AppVersionName"] = self.appVersionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersionName") && dict["AppVersionName"] != nil {
            self.appVersionName = dict["AppVersionName"] as! String
        }
    }
}

public class CreateAppVersionResponseBody : Tea.TeaModel {
    public var appVersionId: String?

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
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppVersionResponseBody?

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
            var model = CreateAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCapacityReservationRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var clientToken: String?

    public var districtId: String?

    public var expectResourceReadyTime: String?

    public var expectSessionCapacity: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.expectResourceReadyTime != nil {
            map["ExpectResourceReadyTime"] = self.expectResourceReadyTime!
        }
        if self.expectSessionCapacity != nil {
            map["ExpectSessionCapacity"] = self.expectSessionCapacity!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("ExpectResourceReadyTime") && dict["ExpectResourceReadyTime"] != nil {
            self.expectResourceReadyTime = dict["ExpectResourceReadyTime"] as! String
        }
        if dict.keys.contains("ExpectSessionCapacity") && dict["ExpectSessionCapacity"] != nil {
            self.expectSessionCapacity = dict["ExpectSessionCapacity"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateCapacityReservationResponseBody : Tea.TeaModel {
    public var currMaxAllocatableSessionCapacity: Int32?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currMaxAllocatableSessionCapacity != nil {
            map["CurrMaxAllocatableSessionCapacity"] = self.currMaxAllocatableSessionCapacity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrMaxAllocatableSessionCapacity") && dict["CurrMaxAllocatableSessionCapacity"] != nil {
            self.currMaxAllocatableSessionCapacity = dict["CurrMaxAllocatableSessionCapacity"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateCapacityReservationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCapacityReservationResponseBody?

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
            var model = CreateCapacityReservationResponseBody()
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
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

public class DeleteAppVersionRequest : Tea.TeaModel {
    public var appVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
    }
}

public class DeleteAppVersionResponseBody : Tea.TeaModel {
    public var appVersionId: String?

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
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppVersionResponseBody?

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
            var model = DeleteAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdaptationRequest : Tea.TeaModel {
    public var adaptApplyId: Int64?

    public var appVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adaptApplyId != nil {
            map["AdaptApplyId"] = self.adaptApplyId!
        }
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdaptApplyId") && dict["AdaptApplyId"] != nil {
            self.adaptApplyId = dict["AdaptApplyId"] as! Int64
        }
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
    }
}

public class GetAdaptationResponseBody : Tea.TeaModel {
    public class AdaptTarget : Tea.TeaModel {
        public var bitRate: Int32?

        public var frameRate: Int32?

        public var resolution: String?

        public var startProgram: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bitRate != nil {
                map["BitRate"] = self.bitRate!
            }
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.startProgram != nil {
                map["StartProgram"] = self.startProgram!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BitRate") && dict["BitRate"] != nil {
                self.bitRate = dict["BitRate"] as! Int32
            }
            if dict.keys.contains("FrameRate") && dict["FrameRate"] != nil {
                self.frameRate = dict["FrameRate"] as! Int32
            }
            if dict.keys.contains("Resolution") && dict["Resolution"] != nil {
                self.resolution = dict["Resolution"] as! String
            }
            if dict.keys.contains("StartProgram") && dict["StartProgram"] != nil {
                self.startProgram = dict["StartProgram"] as! String
            }
        }
    }
    public var adaptApplyId: Int64?

    public var adaptTarget: GetAdaptationResponseBody.AdaptTarget?

    public var appId: String?

    public var appVersionId: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.adaptTarget?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adaptApplyId != nil {
            map["AdaptApplyId"] = self.adaptApplyId!
        }
        if self.adaptTarget != nil {
            map["AdaptTarget"] = self.adaptTarget?.toMap()
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdaptApplyId") && dict["AdaptApplyId"] != nil {
            self.adaptApplyId = dict["AdaptApplyId"] as! Int64
        }
        if dict.keys.contains("AdaptTarget") && dict["AdaptTarget"] != nil {
            var model = GetAdaptationResponseBody.AdaptTarget()
            model.fromMap(dict["AdaptTarget"] as! [String: Any])
            self.adaptTarget = model
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAdaptationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdaptationResponseBody?

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
            var model = GetAdaptationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppRequest : Tea.TeaModel {
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

public class GetAppResponseBody : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var appType: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var requestId: String?

    public var streamingAppId: String?

    public var streamingSolution: String?

    public var versionAdaptNum: Int64?

    public var versionTotalNum: Int64?

    public override init() {
        super.init()
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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.streamingAppId != nil {
            map["StreamingAppId"] = self.streamingAppId!
        }
        if self.streamingSolution != nil {
            map["StreamingSolution"] = self.streamingSolution!
        }
        if self.versionAdaptNum != nil {
            map["VersionAdaptNum"] = self.versionAdaptNum!
        }
        if self.versionTotalNum != nil {
            map["VersionTotalNum"] = self.versionTotalNum!
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
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StreamingAppId") && dict["StreamingAppId"] != nil {
            self.streamingAppId = dict["StreamingAppId"] as! String
        }
        if dict.keys.contains("StreamingSolution") && dict["StreamingSolution"] != nil {
            self.streamingSolution = dict["StreamingSolution"] as! String
        }
        if dict.keys.contains("VersionAdaptNum") && dict["VersionAdaptNum"] != nil {
            self.versionAdaptNum = dict["VersionAdaptNum"] as! Int64
        }
        if dict.keys.contains("VersionTotalNum") && dict["VersionTotalNum"] != nil {
            self.versionTotalNum = dict["VersionTotalNum"] as! Int64
        }
    }
}

public class GetAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppResponseBody?

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
            var model = GetAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppCcuRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetAppCcuResponseBody : Tea.TeaModel {
    public class DetailList : Tea.TeaModel {
        public var appId: String?

        public var appVersion: String?

        public var ccu: String?

        public var districtId: String?

        public var projectId: String?

        public override init() {
            super.init()
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
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.ccu != nil {
                map["Ccu"] = self.ccu!
            }
            if self.districtId != nil {
                map["DistrictId"] = self.districtId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("Ccu") && dict["Ccu"] != nil {
                self.ccu = dict["Ccu"] as! String
            }
            if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                self.districtId = dict["DistrictId"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var detailList: [GetAppCcuResponseBody.DetailList]?

    public var requestId: String?

    public var timestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detailList != nil {
            var tmp : [Any] = []
            for k in self.detailList! {
                tmp.append(k.toMap())
            }
            map["DetailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DetailList") && dict["DetailList"] != nil {
            var tmp : [GetAppCcuResponseBody.DetailList] = []
            for v in dict["DetailList"] as! [Any] {
                var model = GetAppCcuResponseBody.DetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.detailList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
            self.timestamp = dict["Timestamp"] as! String
        }
    }
}

public class GetAppCcuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppCcuResponseBody?

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
            var model = GetAppCcuResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppSessionRequest : Tea.TeaModel {
    public var customSessionId: String?

    public var platformSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
    }
}

public class GetAppSessionResponseBody : Tea.TeaModel {
    public class BizInfo : Tea.TeaModel {
        public var startTime: String?

        public var stopTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.stopTime != nil {
                map["StopTime"] = self.stopTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StopTime") && dict["StopTime"] != nil {
                self.stopTime = dict["StopTime"] as! String
            }
        }
    }
    public var appId: String?

    public var appVersion: String?

    public var bizInfo: GetAppSessionResponseBody.BizInfo?

    public var customSessionId: String?

    public var platformSessionId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bizInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.bizInfo != nil {
            map["BizInfo"] = self.bizInfo?.toMap()
        }
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BizInfo") && dict["BizInfo"] != nil {
            var model = GetAppSessionResponseBody.BizInfo()
            model.fromMap(dict["BizInfo"] as! [String: Any])
            self.bizInfo = model
        }
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class GetAppSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppSessionResponseBody?

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
            var model = GetAppSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppVersionRequest : Tea.TeaModel {
    public var appVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
    }
}

public class GetAppVersionResponseBody : Tea.TeaModel {
    public var appId: String?

    public var appVersionId: String?

    public var appVersionName: String?

    public var appVersionStatus: String?

    public var appVersionStatusMemo: String?

    public var consumeCu: Double?

    public var fileAddress: String?

    public var fileSize: Int64?

    public var fileUploadFinishTime: String?

    public var fileUploadType: String?

    public var gmtCreate: String?

    public var gmtModified: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        if self.appVersionName != nil {
            map["AppVersionName"] = self.appVersionName!
        }
        if self.appVersionStatus != nil {
            map["AppVersionStatus"] = self.appVersionStatus!
        }
        if self.appVersionStatusMemo != nil {
            map["AppVersionStatusMemo"] = self.appVersionStatusMemo!
        }
        if self.consumeCu != nil {
            map["ConsumeCu"] = self.consumeCu!
        }
        if self.fileAddress != nil {
            map["FileAddress"] = self.fileAddress!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.fileUploadFinishTime != nil {
            map["FileUploadFinishTime"] = self.fileUploadFinishTime!
        }
        if self.fileUploadType != nil {
            map["FileUploadType"] = self.fileUploadType!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
        if dict.keys.contains("AppVersionName") && dict["AppVersionName"] != nil {
            self.appVersionName = dict["AppVersionName"] as! String
        }
        if dict.keys.contains("AppVersionStatus") && dict["AppVersionStatus"] != nil {
            self.appVersionStatus = dict["AppVersionStatus"] as! String
        }
        if dict.keys.contains("AppVersionStatusMemo") && dict["AppVersionStatusMemo"] != nil {
            self.appVersionStatusMemo = dict["AppVersionStatusMemo"] as! String
        }
        if dict.keys.contains("ConsumeCu") && dict["ConsumeCu"] != nil {
            self.consumeCu = dict["ConsumeCu"] as! Double
        }
        if dict.keys.contains("FileAddress") && dict["FileAddress"] != nil {
            self.fileAddress = dict["FileAddress"] as! String
        }
        if dict.keys.contains("FileSize") && dict["FileSize"] != nil {
            self.fileSize = dict["FileSize"] as! Int64
        }
        if dict.keys.contains("FileUploadFinishTime") && dict["FileUploadFinishTime"] != nil {
            self.fileUploadFinishTime = dict["FileUploadFinishTime"] as! String
        }
        if dict.keys.contains("FileUploadType") && dict["FileUploadType"] != nil {
            self.fileUploadType = dict["FileUploadType"] as! String
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppVersionResponseBody?

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
            var model = GetAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCapacityRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var districtId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetCapacityResponseBody : Tea.TeaModel {
    public class Capacities : Tea.TeaModel {
        public var appId: String?

        public var appVersion: String?

        public var districtId: String?

        public var projectId: String?

        public var sessionCapacity: Int32?

        public override init() {
            super.init()
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
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.districtId != nil {
                map["DistrictId"] = self.districtId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sessionCapacity != nil {
                map["SessionCapacity"] = self.sessionCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                self.districtId = dict["DistrictId"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SessionCapacity") && dict["SessionCapacity"] != nil {
                self.sessionCapacity = dict["SessionCapacity"] as! Int32
            }
        }
    }
    public var capacities: [GetCapacityResponseBody.Capacities]?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capacities != nil {
            var tmp : [Any] = []
            for k in self.capacities! {
                tmp.append(k.toMap())
            }
            map["Capacities"] = tmp
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Capacities") && dict["Capacities"] != nil {
            var tmp : [GetCapacityResponseBody.Capacities] = []
            for v in dict["Capacities"] as! [Any] {
                var model = GetCapacityResponseBody.Capacities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.capacities = tmp
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCapacityResponseBody?

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
            var model = GetCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetReserveTaskDetailRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetReserveTaskDetailResponseBody : Tea.TeaModel {
    public class ResBatchList : Tea.TeaModel {
        public var resBatchId: String?

        public var resBatchTagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resBatchId != nil {
                map["ResBatchId"] = self.resBatchId!
            }
            if self.resBatchTagName != nil {
                map["ResBatchTagName"] = self.resBatchTagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResBatchId") && dict["ResBatchId"] != nil {
                self.resBatchId = dict["ResBatchId"] as! String
            }
            if dict.keys.contains("ResBatchTagName") && dict["ResBatchTagName"] != nil {
                self.resBatchTagName = dict["ResBatchTagName"] as! String
            }
        }
    }
    public var appId: String?

    public var appVersion: String?

    public var currCompletedSessionCapacity: Int32?

    public var districtId: String?

    public var expectResourceReadyTime: String?

    public var expectSessionCapacity: Int32?

    public var projectId: String?

    public var requestId: String?

    public var resBatchList: [GetReserveTaskDetailResponseBody.ResBatchList]?

    public var taskId: String?

    public var taskStatus: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.currCompletedSessionCapacity != nil {
            map["CurrCompletedSessionCapacity"] = self.currCompletedSessionCapacity!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.expectResourceReadyTime != nil {
            map["ExpectResourceReadyTime"] = self.expectResourceReadyTime!
        }
        if self.expectSessionCapacity != nil {
            map["ExpectSessionCapacity"] = self.expectSessionCapacity!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resBatchList != nil {
            var tmp : [Any] = []
            for k in self.resBatchList! {
                tmp.append(k.toMap())
            }
            map["ResBatchList"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("CurrCompletedSessionCapacity") && dict["CurrCompletedSessionCapacity"] != nil {
            self.currCompletedSessionCapacity = dict["CurrCompletedSessionCapacity"] as! Int32
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("ExpectResourceReadyTime") && dict["ExpectResourceReadyTime"] != nil {
            self.expectResourceReadyTime = dict["ExpectResourceReadyTime"] as! String
        }
        if dict.keys.contains("ExpectSessionCapacity") && dict["ExpectSessionCapacity"] != nil {
            self.expectSessionCapacity = dict["ExpectSessionCapacity"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResBatchList") && dict["ResBatchList"] != nil {
            var tmp : [GetReserveTaskDetailResponseBody.ResBatchList] = []
            for v in dict["ResBatchList"] as! [Any] {
                var model = GetReserveTaskDetailResponseBody.ResBatchList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resBatchList = tmp
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
        }
    }
}

public class GetReserveTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReserveTaskDetailResponseBody?

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
            var model = GetReserveTaskDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourcePublicIPsRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetResourcePublicIPsResponseBody : Tea.TeaModel {
    public class IpList : Tea.TeaModel {
        public var ip: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var ipList: [GetResourcePublicIPsResponseBody.IpList]?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipList != nil {
            var tmp : [Any] = []
            for k in self.ipList! {
                tmp.append(k.toMap())
            }
            map["IpList"] = tmp
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpList") && dict["IpList"] != nil {
            var tmp : [GetResourcePublicIPsResponseBody.IpList] = []
            for v in dict["IpList"] as! [Any] {
                var model = GetResourcePublicIPsResponseBody.IpList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipList = tmp
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetResourcePublicIPsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcePublicIPsResponseBody?

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
            var model = GetResourcePublicIPsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppRequest : Tea.TeaModel {
    public var keySearch: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keySearch != nil {
            map["KeySearch"] = self.keySearch!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeySearch") && dict["KeySearch"] != nil {
            self.keySearch = dict["KeySearch"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListAppResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var versionAdaptNum: Int64?

        public var versionTotalNum: Int64?

        public override init() {
            super.init()
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
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.versionAdaptNum != nil {
                map["VersionAdaptNum"] = self.versionAdaptNum!
            }
            if self.versionTotalNum != nil {
                map["VersionTotalNum"] = self.versionTotalNum!
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
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("VersionAdaptNum") && dict["VersionAdaptNum"] != nil {
                self.versionAdaptNum = dict["VersionAdaptNum"] as! Int64
            }
            if dict.keys.contains("VersionTotalNum") && dict["VersionTotalNum"] != nil {
                self.versionTotalNum = dict["VersionTotalNum"] as! Int64
            }
        }
    }
    public var apps: [ListAppResponseBody.Apps]?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apps != nil {
            var tmp : [Any] = []
            for k in self.apps! {
                tmp.append(k.toMap())
            }
            map["Apps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Apps") && dict["Apps"] != nil {
            var tmp : [ListAppResponseBody.Apps] = []
            for v in dict["Apps"] as! [Any] {
                var model = ListAppResponseBody.Apps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.apps = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppResponseBody?

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
            var model = ListAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppSessionsRequest : Tea.TeaModel {
    public var appId: String?

    public var customSessionIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platformSessionIds: [String]?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.customSessionIds != nil {
            map["CustomSessionIds"] = self.customSessionIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platformSessionIds != nil {
            map["PlatformSessionIds"] = self.platformSessionIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CustomSessionIds") && dict["CustomSessionIds"] != nil {
            self.customSessionIds = dict["CustomSessionIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlatformSessionIds") && dict["PlatformSessionIds"] != nil {
            self.platformSessionIds = dict["PlatformSessionIds"] as! [String]
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListAppSessionsResponseBody : Tea.TeaModel {
    public class AppSessions : Tea.TeaModel {
        public class BizInfo : Tea.TeaModel {
            public var startTime: String?

            public var stopTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.stopTime != nil {
                    map["StopTime"] = self.stopTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StopTime") && dict["StopTime"] != nil {
                    self.stopTime = dict["StopTime"] as! String
                }
            }
        }
        public var appId: String?

        public var appVersion: String?

        public var bizInfo: ListAppSessionsResponseBody.AppSessions.BizInfo?

        public var customSessionId: String?

        public var platformSessionId: String?

        public var projectId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bizInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.bizInfo != nil {
                map["BizInfo"] = self.bizInfo?.toMap()
            }
            if self.customSessionId != nil {
                map["CustomSessionId"] = self.customSessionId!
            }
            if self.platformSessionId != nil {
                map["PlatformSessionId"] = self.platformSessionId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("BizInfo") && dict["BizInfo"] != nil {
                var model = ListAppSessionsResponseBody.AppSessions.BizInfo()
                model.fromMap(dict["BizInfo"] as! [String: Any])
                self.bizInfo = model
            }
            if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
                self.customSessionId = dict["CustomSessionId"] as! String
            }
            if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
                self.platformSessionId = dict["PlatformSessionId"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var appSessions: [ListAppSessionsResponseBody.AppSessions]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.appSessions != nil {
            var tmp : [Any] = []
            for k in self.appSessions! {
                tmp.append(k.toMap())
            }
            map["AppSessions"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSessions") && dict["AppSessions"] != nil {
            var tmp : [ListAppSessionsResponseBody.AppSessions] = []
            for v in dict["AppSessions"] as! [Any] {
                var model = ListAppSessionsResponseBody.AppSessions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appSessions = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAppSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppSessionsResponseBody?

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
            var model = ListAppSessionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppVersionRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListAppVersionResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var appId: String?

        public var appVersionId: String?

        public var appVersionName: String?

        public var appVersionStatus: String?

        public var appVersionStatusMemo: String?

        public var consumeCu: Double?

        public var fileAddress: String?

        public var fileSize: Int64?

        public var fileUploadFinishTime: String?

        public var fileUploadType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public override init() {
            super.init()
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
            if self.appVersionId != nil {
                map["AppVersionId"] = self.appVersionId!
            }
            if self.appVersionName != nil {
                map["AppVersionName"] = self.appVersionName!
            }
            if self.appVersionStatus != nil {
                map["AppVersionStatus"] = self.appVersionStatus!
            }
            if self.appVersionStatusMemo != nil {
                map["AppVersionStatusMemo"] = self.appVersionStatusMemo!
            }
            if self.consumeCu != nil {
                map["ConsumeCu"] = self.consumeCu!
            }
            if self.fileAddress != nil {
                map["FileAddress"] = self.fileAddress!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.fileUploadFinishTime != nil {
                map["FileUploadFinishTime"] = self.fileUploadFinishTime!
            }
            if self.fileUploadType != nil {
                map["FileUploadType"] = self.fileUploadType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
                self.appVersionId = dict["AppVersionId"] as! String
            }
            if dict.keys.contains("AppVersionName") && dict["AppVersionName"] != nil {
                self.appVersionName = dict["AppVersionName"] as! String
            }
            if dict.keys.contains("AppVersionStatus") && dict["AppVersionStatus"] != nil {
                self.appVersionStatus = dict["AppVersionStatus"] as! String
            }
            if dict.keys.contains("AppVersionStatusMemo") && dict["AppVersionStatusMemo"] != nil {
                self.appVersionStatusMemo = dict["AppVersionStatusMemo"] as! String
            }
            if dict.keys.contains("ConsumeCu") && dict["ConsumeCu"] != nil {
                self.consumeCu = dict["ConsumeCu"] as! Double
            }
            if dict.keys.contains("FileAddress") && dict["FileAddress"] != nil {
                self.fileAddress = dict["FileAddress"] as! String
            }
            if dict.keys.contains("FileSize") && dict["FileSize"] != nil {
                self.fileSize = dict["FileSize"] as! Int64
            }
            if dict.keys.contains("FileUploadFinishTime") && dict["FileUploadFinishTime"] != nil {
                self.fileUploadFinishTime = dict["FileUploadFinishTime"] as! String
            }
            if dict.keys.contains("FileUploadType") && dict["FileUploadType"] != nil {
                self.fileUploadType = dict["FileUploadType"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
        }
    }
    public var requestId: String?

    public var total: Int64?

    public var versions: [ListAppVersionResponseBody.Versions]?

    public override init() {
        super.init()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["Versions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
        if dict.keys.contains("Versions") && dict["Versions"] != nil {
            var tmp : [ListAppVersionResponseBody.Versions] = []
            for v in dict["Versions"] as! [Any] {
                var model = ListAppVersionResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class ListAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppVersionResponseBody?

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
            var model = ListAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var districtId: String?

    public var instanceId: [String]?

    public var instanceType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var projectId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var creationTime: String?

        public var districtId: String?

        public var instanceId: String?

        public var instanceType: String?

        public var projectId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.districtId != nil {
                map["DistrictId"] = self.districtId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
                self.districtId = dict["DistrictId"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
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
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

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
            var model = ModifyAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppVersionRequest : Tea.TeaModel {
    public var appVersionId: String?

    public var appVersionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        if self.appVersionName != nil {
            map["AppVersionName"] = self.appVersionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
        if dict.keys.contains("AppVersionName") && dict["AppVersionName"] != nil {
            self.appVersionName = dict["AppVersionName"] as! String
        }
    }
}

public class ModifyAppVersionResponseBody : Tea.TeaModel {
    public var appVersionId: String?

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
        if self.appVersionId != nil {
            map["AppVersionId"] = self.appVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionId") && dict["AppVersionId"] != nil {
            self.appVersionId = dict["AppVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppVersionResponseBody?

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
            var model = ModifyAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseCapacityRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var districtId: String?

    public var expectReleaseSessionCapacity: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.expectReleaseSessionCapacity != nil {
            map["ExpectReleaseSessionCapacity"] = self.expectReleaseSessionCapacity!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("ExpectReleaseSessionCapacity") && dict["ExpectReleaseSessionCapacity"] != nil {
            self.expectReleaseSessionCapacity = dict["ExpectReleaseSessionCapacity"] as! Int32
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ReleaseCapacityResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ReleaseCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseCapacityResponseBody?

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
            var model = ReleaseCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseCapacityByBatchRequest : Tea.TeaModel {
    public var resBatchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resBatchId != nil {
            map["ResBatchId"] = self.resBatchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResBatchId") && dict["ResBatchId"] != nil {
            self.resBatchId = dict["ResBatchId"] as! String
        }
    }
}

public class ReleaseCapacityByBatchResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReleaseCapacityByBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseCapacityByBatchResponseBody?

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
            var model = ReleaseCapacityByBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseInstancesRequest : Tea.TeaModel {
    public var amount: Int32?

    public var districtId: String?

    public var instanceType: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") && dict["Amount"] != nil {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ReleaseInstancesResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReleaseInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstancesResponseBody?

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
            var model = ReleaseInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReserveInstancesRequest : Tea.TeaModel {
    public var amount: Int32?

    public var districtId: String?

    public var instanceType: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.districtId != nil {
            map["DistrictId"] = self.districtId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") && dict["Amount"] != nil {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("DistrictId") && dict["DistrictId"] != nil {
            self.districtId = dict["DistrictId"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ReserveInstancesResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReserveInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReserveInstancesResponseBody?

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
            var model = ReserveInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendBizCocChangeCallbackRequest : Tea.TeaModel {
    public var platformSessionId: String?

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
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class SendBizCocChangeCallbackResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendBizCocChangeCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendBizCocChangeCallbackResponseBody?

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
            var model = SendBizCocChangeCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAppSessionRequest : Tea.TeaModel {
    public class StopParam : Tea.TeaModel {
        public var key: String?

        public var value: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! Any
            }
        }
    }
    public var customSessionId: String?

    public var platformSessionId: String?

    public var stopParam: [StopAppSessionRequest.StopParam]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.stopParam != nil {
            var tmp : [Any] = []
            for k in self.stopParam! {
                tmp.append(k.toMap())
            }
            map["StopParam"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("StopParam") && dict["StopParam"] != nil {
            var tmp : [StopAppSessionRequest.StopParam] = []
            for v in dict["StopParam"] as! [Any] {
                var model = StopAppSessionRequest.StopParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stopParam = tmp
        }
    }
}

public class StopAppSessionShrinkRequest : Tea.TeaModel {
    public var customSessionId: String?

    public var platformSessionId: String?

    public var stopParamShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.stopParamShrink != nil {
            map["StopParam"] = self.stopParamShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("StopParam") && dict["StopParam"] != nil {
            self.stopParamShrink = dict["StopParam"] as! String
        }
    }
}

public class StopAppSessionResponseBody : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

    public var customSessionId: String?

    public var platformSessionId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.customSessionId != nil {
            map["CustomSessionId"] = self.customSessionId!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
            self.customSessionId = dict["CustomSessionId"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopAppSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAppSessionResponseBody?

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
            var model = StopAppSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAppSessionBatchRequest : Tea.TeaModel {
    public class StopParam : Tea.TeaModel {
        public var key: String?

        public var value: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! Any
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var appId: String?

    public var appVersion: String?

    public var batchId: String?

    public var projectId: String?

    public var stopParam: [StopAppSessionBatchRequest.StopParam]?

    public var tags: [StopAppSessionBatchRequest.Tags]?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.stopParam != nil {
            var tmp : [Any] = []
            for k in self.stopParam! {
                tmp.append(k.toMap())
            }
            map["StopParam"] = tmp
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BatchId") && dict["BatchId"] != nil {
            self.batchId = dict["BatchId"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StopParam") && dict["StopParam"] != nil {
            var tmp : [StopAppSessionBatchRequest.StopParam] = []
            for v in dict["StopParam"] as! [Any] {
                var model = StopAppSessionBatchRequest.StopParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stopParam = tmp
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [StopAppSessionBatchRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = StopAppSessionBatchRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class StopAppSessionBatchShrinkRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var appId: String?

    public var appVersion: String?

    public var batchId: String?

    public var projectId: String?

    public var stopParamShrink: String?

    public var tags: [StopAppSessionBatchShrinkRequest.Tags]?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.stopParamShrink != nil {
            map["StopParam"] = self.stopParamShrink!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BatchId") && dict["BatchId"] != nil {
            self.batchId = dict["BatchId"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StopParam") && dict["StopParam"] != nil {
            self.stopParamShrink = dict["StopParam"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [StopAppSessionBatchShrinkRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = StopAppSessionBatchShrinkRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class StopAppSessionBatchResponseBody : Tea.TeaModel {
    public var appId: String?

    public var batchId: String?

    public var projectId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BatchId") && dict["BatchId"] != nil {
            self.batchId = dict["BatchId"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopAppSessionBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAppSessionBatchResponseBody?

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
            var model = StopAppSessionBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSessionBizStatusRequest : Tea.TeaModel {
    public var bizStatus: String?

    public var platformSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizStatus != nil {
            map["BizStatus"] = self.bizStatus!
        }
        if self.platformSessionId != nil {
            map["PlatformSessionId"] = self.platformSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
            self.bizStatus = dict["BizStatus"] as! String
        }
        if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
            self.platformSessionId = dict["PlatformSessionId"] as! String
        }
    }
}

public class UpdateSessionBizStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customSessionId: String?

        public var platformSessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customSessionId != nil {
                map["CustomSessionId"] = self.customSessionId!
            }
            if self.platformSessionId != nil {
                map["PlatformSessionId"] = self.platformSessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomSessionId") && dict["CustomSessionId"] != nil {
                self.customSessionId = dict["CustomSessionId"] as! String
            }
            if dict.keys.contains("PlatformSessionId") && dict["PlatformSessionId"] != nil {
                self.platformSessionId = dict["PlatformSessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateSessionBizStatusResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateSessionBizStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class UpdateSessionBizStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSessionBizStatusResponseBody?

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
            var model = UpdateSessionBizStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
