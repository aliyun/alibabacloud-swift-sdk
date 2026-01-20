import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ReadOutboundTaskCallListRequest : Tea.TeaModel {
    public var current: Int32?

    public var customerNameOrPhone: String?

    public var displayStatusList: [String]?

    public var labelTags: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var size: Int32?

    public var taskId: String?

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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.customerNameOrPhone != nil {
            map["CustomerNameOrPhone"] = self.customerNameOrPhone!
        }
        if self.displayStatusList != nil {
            map["DisplayStatusList"] = self.displayStatusList!
        }
        if self.labelTags != nil {
            map["LabelTags"] = self.labelTags!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Current"] as? Int32 {
            self.current = value
        }
        if let value = dict["CustomerNameOrPhone"] as? String {
            self.customerNameOrPhone = value
        }
        if let value = dict["DisplayStatusList"] as? [String] {
            self.displayStatusList = value
        }
        if let value = dict["LabelTags"] as? [String] {
            self.labelTags = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ReadOutboundTaskCallListShrinkRequest : Tea.TeaModel {
    public var current: Int32?

    public var customerNameOrPhone: String?

    public var displayStatusListShrink: String?

    public var labelTagsShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var size: Int32?

    public var taskId: String?

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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.customerNameOrPhone != nil {
            map["CustomerNameOrPhone"] = self.customerNameOrPhone!
        }
        if self.displayStatusListShrink != nil {
            map["DisplayStatusList"] = self.displayStatusListShrink!
        }
        if self.labelTagsShrink != nil {
            map["LabelTags"] = self.labelTagsShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Current"] as? Int32 {
            self.current = value
        }
        if let value = dict["CustomerNameOrPhone"] as? String {
            self.customerNameOrPhone = value
        }
        if let value = dict["DisplayStatusList"] as? String {
            self.displayStatusListShrink = value
        }
        if let value = dict["LabelTags"] as? String {
            self.labelTagsShrink = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ReadOutboundTaskCallListResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public class DialogueList : Tea.TeaModel {
            public var beginTime: Int32?

            public var endTime: Int32?

            public var role: String?

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
                if self.beginTime != nil {
                    map["BeginTime"] = self.beginTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTime"] as? Int32 {
                    self.beginTime = value
                }
                if let value = dict["EndTime"] as? Int32 {
                    self.endTime = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
            }
        }
        public var callEndTime: String?

        public var callId: String?

        public var callStartTime: String?

        public var callSummary: String?

        public var channel: String?

        public var customerName: String?

        public var customerPhone: String?

        public var dialogueList: [ReadOutboundTaskCallListResponseBody.Records.DialogueList]?

        public var displayStatus: String?

        public var duration: Int64?

        public var durationText: String?

        public var extInfo: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: String?

        public var labelTags: [String]?

        public var recordDetailReady: Bool?

        public var recordUrl: String?

        public var retryCount: Int32?

        public var sceneId: String?

        public var status: String?

        public var taskId: String?

        public var tenantId: String?

        public var ttsVoiceCode: String?

        public var ttsVoiceDesc: String?

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
            if self.callEndTime != nil {
                map["CallEndTime"] = self.callEndTime!
            }
            if self.callId != nil {
                map["CallId"] = self.callId!
            }
            if self.callStartTime != nil {
                map["CallStartTime"] = self.callStartTime!
            }
            if self.callSummary != nil {
                map["CallSummary"] = self.callSummary!
            }
            if self.channel != nil {
                map["Channel"] = self.channel!
            }
            if self.customerName != nil {
                map["CustomerName"] = self.customerName!
            }
            if self.customerPhone != nil {
                map["CustomerPhone"] = self.customerPhone!
            }
            if self.dialogueList != nil {
                var tmp : [Any] = []
                for k in self.dialogueList! {
                    tmp.append(k.toMap())
                }
                map["DialogueList"] = tmp
            }
            if self.displayStatus != nil {
                map["DisplayStatus"] = self.displayStatus!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.durationText != nil {
                map["DurationText"] = self.durationText!
            }
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.labelTags != nil {
                map["LabelTags"] = self.labelTags!
            }
            if self.recordDetailReady != nil {
                map["RecordDetailReady"] = self.recordDetailReady!
            }
            if self.recordUrl != nil {
                map["RecordUrl"] = self.recordUrl!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.ttsVoiceCode != nil {
                map["TtsVoiceCode"] = self.ttsVoiceCode!
            }
            if self.ttsVoiceDesc != nil {
                map["TtsVoiceDesc"] = self.ttsVoiceDesc!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallEndTime"] as? String {
                self.callEndTime = value
            }
            if let value = dict["CallId"] as? String {
                self.callId = value
            }
            if let value = dict["CallStartTime"] as? String {
                self.callStartTime = value
            }
            if let value = dict["CallSummary"] as? String {
                self.callSummary = value
            }
            if let value = dict["Channel"] as? String {
                self.channel = value
            }
            if let value = dict["CustomerName"] as? String {
                self.customerName = value
            }
            if let value = dict["CustomerPhone"] as? String {
                self.customerPhone = value
            }
            if let value = dict["DialogueList"] as? [Any?] {
                var tmp : [ReadOutboundTaskCallListResponseBody.Records.DialogueList] = []
                for v in value {
                    if v != nil {
                        var model = ReadOutboundTaskCallListResponseBody.Records.DialogueList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dialogueList = tmp
            }
            if let value = dict["DisplayStatus"] as? String {
                self.displayStatus = value
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["DurationText"] as? String {
                self.durationText = value
            }
            if let value = dict["ExtInfo"] as? String {
                self.extInfo = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LabelTags"] as? [String] {
                self.labelTags = value
            }
            if let value = dict["RecordDetailReady"] as? Bool {
                self.recordDetailReady = value
            }
            if let value = dict["RecordUrl"] as? String {
                self.recordUrl = value
            }
            if let value = dict["RetryCount"] as? Int32 {
                self.retryCount = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["TtsVoiceCode"] as? String {
                self.ttsVoiceCode = value
            }
            if let value = dict["TtsVoiceDesc"] as? String {
                self.ttsVoiceDesc = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var message: String?

    public var records: [ReadOutboundTaskCallListResponseBody.Records]?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var timestamp: String?

    public var total: Int64?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Current"] as? Int32 {
            self.current = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [ReadOutboundTaskCallListResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = ReadOutboundTaskCallListResponseBody.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? String {
            self.timestamp = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class ReadOutboundTaskCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadOutboundTaskCallListResponseBody?

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
            var model = ReadOutboundTaskCallListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
