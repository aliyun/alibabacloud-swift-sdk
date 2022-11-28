import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: CancelVideoTaskRequest.App?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = CancelVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("TaskUuid") {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class CancelVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("TaskUuid") {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class CancelVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failReason: String?

        public var isCancel: Bool?

        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            if self.isCancel != nil {
                map["IsCancel"] = self.isCancel!
            }
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailReason") {
                self.failReason = dict["FailReason"] as! String
            }
            if dict.keys.contains("IsCancel") {
                self.isCancel = dict["IsCancel"] as! Bool
            }
            if dict.keys.contains("TaskUuid") {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CancelVideoTaskResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CancelVideoTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CancelVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelVideoTaskResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DuplexDecisionRequest : Tea.TeaModel {
    public class DialogContext : Tea.TeaModel {
        public class Histories : Tea.TeaModel {
            public var robot: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.robot != nil {
                    map["Robot"] = self.robot!
                }
                if self.user != nil {
                    map["User"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Robot") {
                    self.robot = dict["Robot"] as! String
                }
                if dict.keys.contains("User") {
                    self.user = dict["User"] as! String
                }
            }
        }
        public var curUtteranceIdx: Int32?

        public var histories: [DuplexDecisionRequest.DialogContext.Histories]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.curUtteranceIdx != nil {
                map["CurUtteranceIdx"] = self.curUtteranceIdx!
            }
            if self.histories != nil {
                var tmp : [Any] = []
                for k in self.histories! {
                    tmp.append(k.toMap())
                }
                map["Histories"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurUtteranceIdx") {
                self.curUtteranceIdx = dict["CurUtteranceIdx"] as! Int32
            }
            if dict.keys.contains("Histories") {
                self.histories = dict["Histories"] as! [DuplexDecisionRequest.DialogContext.Histories]
            }
        }
    }
    public var appId: String?

    public var bizRequestId: String?

    public var callTime: Int32?

    public var customKeywords: [String]?

    public var dialogContext: DuplexDecisionRequest.DialogContext?

    public var dialogStatus: String?

    public var interruptType: Int32?

    public var sessionId: String?

    public var tenantId: Int64?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dialogContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.bizRequestId != nil {
            map["BizRequestId"] = self.bizRequestId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.customKeywords != nil {
            map["CustomKeywords"] = self.customKeywords!
        }
        if self.dialogContext != nil {
            map["DialogContext"] = self.dialogContext?.toMap()
        }
        if self.dialogStatus != nil {
            map["DialogStatus"] = self.dialogStatus!
        }
        if self.interruptType != nil {
            map["InterruptType"] = self.interruptType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BizRequestId") {
            self.bizRequestId = dict["BizRequestId"] as! String
        }
        if dict.keys.contains("CallTime") {
            self.callTime = dict["CallTime"] as! Int32
        }
        if dict.keys.contains("CustomKeywords") {
            self.customKeywords = dict["CustomKeywords"] as! [String]
        }
        if dict.keys.contains("DialogContext") {
            var model = DuplexDecisionRequest.DialogContext()
            model.fromMap(dict["DialogContext"] as! [String: Any])
            self.dialogContext = model
        }
        if dict.keys.contains("DialogStatus") {
            self.dialogStatus = dict["DialogStatus"] as! String
        }
        if dict.keys.contains("InterruptType") {
            self.interruptType = dict["InterruptType"] as! Int32
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
    }
}

public class DuplexDecisionShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var bizRequestId: String?

    public var callTime: Int32?

    public var customKeywordsShrink: String?

    public var dialogContextShrink: String?

    public var dialogStatus: String?

    public var interruptType: Int32?

    public var sessionId: String?

    public var tenantId: Int64?

    public var text: String?

    public override init() {
        super.init()
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
        if self.bizRequestId != nil {
            map["BizRequestId"] = self.bizRequestId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.customKeywordsShrink != nil {
            map["CustomKeywords"] = self.customKeywordsShrink!
        }
        if self.dialogContextShrink != nil {
            map["DialogContext"] = self.dialogContextShrink!
        }
        if self.dialogStatus != nil {
            map["DialogStatus"] = self.dialogStatus!
        }
        if self.interruptType != nil {
            map["InterruptType"] = self.interruptType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BizRequestId") {
            self.bizRequestId = dict["BizRequestId"] as! String
        }
        if dict.keys.contains("CallTime") {
            self.callTime = dict["CallTime"] as! Int32
        }
        if dict.keys.contains("CustomKeywords") {
            self.customKeywordsShrink = dict["CustomKeywords"] as! String
        }
        if dict.keys.contains("DialogContext") {
            self.dialogContextShrink = dict["DialogContext"] as! String
        }
        if dict.keys.contains("DialogStatus") {
            self.dialogStatus = dict["DialogStatus"] as! String
        }
        if dict.keys.contains("InterruptType") {
            self.interruptType = dict["InterruptType"] as! Int32
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
    }
}

public class DuplexDecisionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actionType: String?

        public var grabType: String?

        public var outputText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.grabType != nil {
                map["GrabType"] = self.grabType!
            }
            if self.outputText != nil {
                map["OutputText"] = self.outputText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionType") {
                self.actionType = dict["ActionType"] as! String
            }
            if dict.keys.contains("GrabType") {
                self.grabType = dict["GrabType"] as! String
            }
            if dict.keys.contains("OutputText") {
                self.outputText = dict["OutputText"] as! String
            }
        }
    }
    public var code: String?

    public var data: DuplexDecisionResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DuplexDecisionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DuplexDecisionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DuplexDecisionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DuplexDecisionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVideoTaskInfoRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: GetVideoTaskInfoRequest.App?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = GetVideoTaskInfoRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("TaskUuid") {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class GetVideoTaskInfoShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("TaskUuid") {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class GetVideoTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskResult : Tea.TeaModel {
            public var failReason: String?

            public var subtitlesUrl: String?

            public var videoUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failReason != nil {
                    map["FailReason"] = self.failReason!
                }
                if self.subtitlesUrl != nil {
                    map["SubtitlesUrl"] = self.subtitlesUrl!
                }
                if self.videoUrl != nil {
                    map["VideoUrl"] = self.videoUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailReason") {
                    self.failReason = dict["FailReason"] as! String
                }
                if dict.keys.contains("SubtitlesUrl") {
                    self.subtitlesUrl = dict["SubtitlesUrl"] as! String
                }
                if dict.keys.contains("VideoUrl") {
                    self.videoUrl = dict["VideoUrl"] as! String
                }
            }
        }
        public var process: String?

        public var status: String?

        public var taskResult: GetVideoTaskInfoResponseBody.Data.TaskResult?

        public var taskUuid: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.taskResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.process != nil {
                map["Process"] = self.process!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult?.toMap()
            }
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Process") {
                self.process = dict["Process"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskResult") {
                var model = GetVideoTaskInfoResponseBody.Data.TaskResult()
                model.fromMap(dict["TaskResult"] as! [String: Any])
                self.taskResult = model
            }
            if dict.keys.contains("TaskUuid") {
                self.taskUuid = dict["TaskUuid"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetVideoTaskInfoResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetVideoTaskInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetVideoTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoTaskInfoResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVideoTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRunningInstanceRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: QueryRunningInstanceRequest.App?

    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = QueryRunningInstanceRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryRunningInstanceShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryRunningInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Channel : Tea.TeaModel {
            public var appId: String?

            public var channelId: String?

            public var expiredTime: String?

            public var gslb: [String]?

            public var nonce: String?

            public var token: String?

            public var type: String?

            public var userId: String?

            public var userInfoInChannel: String?

            public override init() {
                super.init()
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
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.gslb != nil {
                    map["Gslb"] = self.gslb!
                }
                if self.nonce != nil {
                    map["Nonce"] = self.nonce!
                }
                if self.token != nil {
                    map["Token"] = self.token!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userInfoInChannel != nil {
                    map["UserInfoInChannel"] = self.userInfoInChannel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! String
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("Gslb") {
                    self.gslb = dict["Gslb"] as! [String]
                }
                if dict.keys.contains("Nonce") {
                    self.nonce = dict["Nonce"] as! String
                }
                if dict.keys.contains("Token") {
                    self.token = dict["Token"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserInfoInChannel") {
                    self.userInfoInChannel = dict["UserInfoInChannel"] as! String
                }
            }
        }
        public class User : Tea.TeaModel {
            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var channel: QueryRunningInstanceResponseBody.Data.Channel?

        public var sessionId: String?

        public var user: QueryRunningInstanceResponseBody.Data.User?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channel?.validate()
            try self.user?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channel != nil {
                map["Channel"] = self.channel?.toMap()
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.user != nil {
                map["User"] = self.user?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Channel") {
                var model = QueryRunningInstanceResponseBody.Data.Channel()
                model.fromMap(dict["Channel"] as! [String: Any])
                self.channel = model
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("User") {
                var model = QueryRunningInstanceResponseBody.Data.User()
                model.fromMap(dict["User"] as! [String: Any])
                self.user = model
            }
        }
    }
    public var code: String?

    public var data: [QueryRunningInstanceResponseBody.Data]?

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
            self.data = dict["Data"] as! [QueryRunningInstanceResponseBody.Data]
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

public class QueryRunningInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRunningInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryRunningInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public class TextRequest : Tea.TeaModel {
        public var commandType: String?

        public var id: String?

        public var speechText: String?

        public var interrupt: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.speechText != nil {
                map["SpeechText"] = self.speechText!
            }
            if self.interrupt != nil {
                map["interrupt"] = self.interrupt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommandType") {
                self.commandType = dict["CommandType"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("SpeechText") {
                self.speechText = dict["SpeechText"] as! String
            }
            if dict.keys.contains("interrupt") {
                self.interrupt = dict["interrupt"] as! Bool
            }
        }
    }
    public class VAMLRequest : Tea.TeaModel {
        public var code: String?

        public var vaml: String?

        public override init() {
            super.init()
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
            if self.vaml != nil {
                map["Vaml"] = self.vaml!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Vaml") {
                self.vaml = dict["Vaml"] as! String
            }
        }
    }
    public var sessionId: String?

    public var tenantId: Int64?

    public var textRequest: SendMessageRequest.TextRequest?

    public var VAMLRequest: SendMessageRequest.VAMLRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.textRequest?.validate()
        try self.VAMLRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.textRequest != nil {
            map["TextRequest"] = self.textRequest?.toMap()
        }
        if self.VAMLRequest != nil {
            map["VAMLRequest"] = self.VAMLRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("TextRequest") {
            var model = SendMessageRequest.TextRequest()
            model.fromMap(dict["TextRequest"] as! [String: Any])
            self.textRequest = model
        }
        if dict.keys.contains("VAMLRequest") {
            var model = SendMessageRequest.VAMLRequest()
            model.fromMap(dict["VAMLRequest"] as! [String: Any])
            self.VAMLRequest = model
        }
    }
}

public class SendMessageShrinkRequest : Tea.TeaModel {
    public var sessionId: String?

    public var tenantId: Int64?

    public var textRequestShrink: String?

    public var VAMLRequestShrink: String?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.textRequestShrink != nil {
            map["TextRequest"] = self.textRequestShrink!
        }
        if self.VAMLRequestShrink != nil {
            map["VAMLRequest"] = self.VAMLRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("TextRequest") {
            self.textRequestShrink = dict["TextRequest"] as! String
        }
        if dict.keys.contains("VAMLRequest") {
            self.VAMLRequestShrink = dict["VAMLRequest"] as! String
        }
    }
}

public class SendMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var requestId: String?

        public var sessionId: String?

        public override init() {
            super.init()
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
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendMessageResponseBody.Data?

    public var message: String?

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
            var model = SendMessageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class Channel : Tea.TeaModel {
        public var reqConfig: [String: Any]?

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
            if self.reqConfig != nil {
                map["ReqConfig"] = self.reqConfig!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReqConfig") {
                self.reqConfig = dict["ReqConfig"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class CommandRequest : Tea.TeaModel {
        public var alphaSwitch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alphaSwitch != nil {
                map["AlphaSwitch"] = self.alphaSwitch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlphaSwitch") {
                self.alphaSwitch = dict["AlphaSwitch"] as! Bool
            }
        }
    }
    public class User : Tea.TeaModel {
        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var app: StartInstanceRequest.App?

    public var channel: StartInstanceRequest.Channel?

    public var commandRequest: StartInstanceRequest.CommandRequest?

    public var tenantId: Int64?

    public var user: StartInstanceRequest.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.channel?.validate()
        try self.commandRequest?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.channel != nil {
            map["Channel"] = self.channel?.toMap()
        }
        if self.commandRequest != nil {
            map["CommandRequest"] = self.commandRequest?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = StartInstanceRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("Channel") {
            var model = StartInstanceRequest.Channel()
            model.fromMap(dict["Channel"] as! [String: Any])
            self.channel = model
        }
        if dict.keys.contains("CommandRequest") {
            var model = StartInstanceRequest.CommandRequest()
            model.fromMap(dict["CommandRequest"] as! [String: Any])
            self.commandRequest = model
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("User") {
            var model = StartInstanceRequest.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class StartInstanceShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var channelShrink: String?

    public var commandRequestShrink: String?

    public var tenantId: Int64?

    public var userShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.channelShrink != nil {
            map["Channel"] = self.channelShrink!
        }
        if self.commandRequestShrink != nil {
            map["CommandRequest"] = self.commandRequestShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("Channel") {
            self.channelShrink = dict["Channel"] as! String
        }
        if dict.keys.contains("CommandRequest") {
            self.commandRequestShrink = dict["CommandRequest"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("User") {
            self.userShrink = dict["User"] as! String
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Channel : Tea.TeaModel {
            public var appId: String?

            public var channelId: String?

            public var expiredTime: String?

            public var gslb: [String]?

            public var nonce: String?

            public var token: String?

            public var type: String?

            public var userId: String?

            public var userInfoInChannel: String?

            public override init() {
                super.init()
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
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.gslb != nil {
                    map["Gslb"] = self.gslb!
                }
                if self.nonce != nil {
                    map["Nonce"] = self.nonce!
                }
                if self.token != nil {
                    map["Token"] = self.token!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userInfoInChannel != nil {
                    map["UserInfoInChannel"] = self.userInfoInChannel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! String
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("Gslb") {
                    self.gslb = dict["Gslb"] as! [String]
                }
                if dict.keys.contains("Nonce") {
                    self.nonce = dict["Nonce"] as! String
                }
                if dict.keys.contains("Token") {
                    self.token = dict["Token"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserInfoInChannel") {
                    self.userInfoInChannel = dict["UserInfoInChannel"] as! String
                }
            }
        }
        public var channel: StartInstanceResponseBody.Data.Channel?

        public var requestId: String?

        public var sessionId: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channel != nil {
                map["Channel"] = self.channel?.toMap()
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Channel") {
                var model = StartInstanceResponseBody.Data.Channel()
                model.fromMap(dict["Channel"] as! [String: Any])
                self.channel = model
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var code: String?

    public var data: StartInstanceResponseBody.Data?

    public var message: String?

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
            var model = StartInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var requestId: String?

        public var sessionId: String?

        public override init() {
            super.init()
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
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: StopInstanceResponseBody.Data?

    public var message: String?

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
            var model = StopInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class AudioInfo : Tea.TeaModel {
        public var pitchRate: Int32?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PitchRate") {
                self.pitchRate = dict["PitchRate"] as! Int32
            }
            if dict.keys.contains("SpeechRate") {
                self.speechRate = dict["SpeechRate"] as! Int32
            }
            if dict.keys.contains("Voice") {
                self.voice = dict["Voice"] as! String
            }
            if dict.keys.contains("Volume") {
                self.volume = dict["Volume"] as! Int32
            }
        }
    }
    public class AvatarInfo : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var backgroundImageUrl: String?

        public var isAlpha: Bool?

        public var isSubtitles: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundImageUrl != nil {
                map["BackgroundImageUrl"] = self.backgroundImageUrl!
            }
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.isSubtitles != nil {
                map["IsSubtitles"] = self.isSubtitles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackgroundImageUrl") {
                self.backgroundImageUrl = dict["BackgroundImageUrl"] as! String
            }
            if dict.keys.contains("IsAlpha") {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("IsSubtitles") {
                self.isSubtitles = dict["IsSubtitles"] as! Bool
            }
        }
    }
    public var app: SubmitTextTo2DAvatarVideoTaskRequest.App?

    public var audioInfo: SubmitTextTo2DAvatarVideoTaskRequest.AudioInfo?

    public var avatarInfo: SubmitTextTo2DAvatarVideoTaskRequest.AvatarInfo?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfo: SubmitTextTo2DAvatarVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.audioInfo?.validate()
        try self.avatarInfo?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.audioInfo != nil {
            map["AudioInfo"] = self.audioInfo?.toMap()
        }
        if self.avatarInfo != nil {
            map["AvatarInfo"] = self.avatarInfo?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("AudioInfo") {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.AudioInfo()
            model.fromMap(dict["AudioInfo"] as! [String: Any])
            self.audioInfo = model
        }
        if dict.keys.contains("AvatarInfo") {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.AvatarInfo()
            model.fromMap(dict["AvatarInfo"] as! [String: Any])
            self.avatarInfo = model
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var audioInfoShrink: String?

    public var avatarInfoShrink: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.audioInfoShrink != nil {
            map["AudioInfo"] = self.audioInfoShrink!
        }
        if self.avatarInfoShrink != nil {
            map["AvatarInfo"] = self.avatarInfoShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("AudioInfo") {
            self.audioInfoShrink = dict["AudioInfo"] as! String
        }
        if dict.keys.contains("AvatarInfo") {
            self.avatarInfoShrink = dict["AvatarInfo"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitTextTo2DAvatarVideoTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitTextTo2DAvatarVideoTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTextTo2DAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitTextTo2DAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var backgroundImageUrl: String?

        public var isAlpha: Bool?

        public var isSubtitles: Bool?

        public var resolution: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundImageUrl != nil {
                map["BackgroundImageUrl"] = self.backgroundImageUrl!
            }
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.isSubtitles != nil {
                map["IsSubtitles"] = self.isSubtitles!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackgroundImageUrl") {
                self.backgroundImageUrl = dict["BackgroundImageUrl"] as! String
            }
            if dict.keys.contains("IsAlpha") {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("IsSubtitles") {
                self.isSubtitles = dict["IsSubtitles"] as! Bool
            }
            if dict.keys.contains("Resolution") {
                self.resolution = dict["Resolution"] as! Int32
            }
        }
    }
    public var app: SubmitTextTo3DAvatarVideoTaskRequest.App?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfo: SubmitTextTo3DAvatarVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = SubmitTextTo3DAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") {
            var model = SubmitTextTo3DAvatarVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitTextTo3DAvatarVideoTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitTextTo3DAvatarVideoTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTextTo3DAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitTextTo3DAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTextToSignVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
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
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var isAlpha: Bool?

        public var isSubtitles: Bool?

        public var resolution: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.isSubtitles != nil {
                map["IsSubtitles"] = self.isSubtitles!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsAlpha") {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("IsSubtitles") {
                self.isSubtitles = dict["IsSubtitles"] as! Bool
            }
            if dict.keys.contains("Resolution") {
                self.resolution = dict["Resolution"] as! Int32
            }
        }
    }
    public var app: SubmitTextToSignVideoTaskRequest.App?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfo: SubmitTextToSignVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            var model = SubmitTextToSignVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") {
            var model = SubmitTextToSignVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitTextToSignVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitTextToSignVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitTextToSignVideoTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitTextToSignVideoTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class SubmitTextToSignVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTextToSignVideoTaskResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitTextToSignVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
