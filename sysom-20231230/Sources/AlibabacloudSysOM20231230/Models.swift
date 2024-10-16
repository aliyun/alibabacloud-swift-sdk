import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthDiagnosisRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instance: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instance") {
                self.instance = dict["instance"] as! String
            }
            if dict.keys.contains("region") {
                self.region = dict["region"] as! String
            }
        }
    }
    public var autoCreateRole: Bool?

    public var autoInstallAgent: Bool?

    public var instances: [AuthDiagnosisRequest.Instances]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRole != nil {
            map["autoCreateRole"] = self.autoCreateRole!
        }
        if self.autoInstallAgent != nil {
            map["autoInstallAgent"] = self.autoInstallAgent!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoCreateRole") {
            self.autoCreateRole = dict["autoCreateRole"] as! Bool
        }
        if dict.keys.contains("autoInstallAgent") {
            self.autoInstallAgent = dict["autoInstallAgent"] as! Bool
        }
        if dict.keys.contains("instances") {
            var tmp : [AuthDiagnosisRequest.Instances] = []
            for v in dict["instances"] as! [Any] {
                var model = AuthDiagnosisRequest.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
    }
}

public class AuthDiagnosisResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class AuthDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthDiagnosisResponseBody?

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
            var model = AuthDiagnosisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateCopilotResponseRequest : Tea.TeaModel {
    public var llmParamString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.llmParamString != nil {
            map["llmParamString"] = self.llmParamString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("llmParamString") {
            self.llmParamString = dict["llmParamString"] as! String
        }
    }
}

public class GenerateCopilotResponseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var massage: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.massage != nil {
            map["massage"] = self.massage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("massage") {
            self.massage = dict["massage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GenerateCopilotResponseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCopilotResponseResponseBody?

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
            var model = GenerateCopilotResponseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAbnormalEventsCountRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var namespace: String?

    public var pod: String?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.pod != nil {
            map["pod"] = self.pod!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster") {
            self.cluster = dict["cluster"] as! String
        }
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Double
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("pod") {
            self.pod = dict["pod"] as! String
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! Double
        }
    }
}

public class GetAbnormalEventsCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var type: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [GetAbnormalEventsCountResponseBody.Data]?

    public var message: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetAbnormalEventsCountResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetAbnormalEventsCountResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class GetAbnormalEventsCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAbnormalEventsCountResponseBody?

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
            var model = GetAbnormalEventsCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiagnosisResultRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("task_id") {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class GetDiagnosisResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int32?

        public var command: Any?

        public var createdAt: String?

        public var errMsg: String?

        public var params: Any?

        public var result: Any?

        public var serviceName: String?

        public var status: String?

        public var taskId: String?

        public var updatedAt: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.command != nil {
                map["command"] = self.command!
            }
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.errMsg != nil {
                map["err_msg"] = self.errMsg!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.serviceName != nil {
                map["service_name"] = self.serviceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! Int32
            }
            if dict.keys.contains("command") {
                self.command = dict["command"] as! Any
            }
            if dict.keys.contains("created_at") {
                self.createdAt = dict["created_at"] as! String
            }
            if dict.keys.contains("err_msg") {
                self.errMsg = dict["err_msg"] as! String
            }
            if dict.keys.contains("params") {
                self.params = dict["params"] as! Any
            }
            if dict.keys.contains("result") {
                self.result = dict["result"] as! Any
            }
            if dict.keys.contains("service_name") {
                self.serviceName = dict["service_name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("task_id") {
                self.taskId = dict["task_id"] as! String
            }
            if dict.keys.contains("updated_at") {
                self.updatedAt = dict["updated_at"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDiagnosisResultResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetDiagnosisResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class GetDiagnosisResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiagnosisResultResponseBody?

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
            var model = GetDiagnosisResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHealthPercentageRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster") {
            self.cluster = dict["cluster"] as! String
        }
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Double
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! Double
        }
    }
}

public class GetHealthPercentageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var type: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [GetHealthPercentageResponseBody.Data]?

    public var message: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetHealthPercentageResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetHealthPercentageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class GetHealthPercentageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHealthPercentageResponseBody?

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
            var model = GetHealthPercentageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeDiagnosisRequest : Tea.TeaModel {
    public var channel: String?

    public var params: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! String
        }
        if dict.keys.contains("params") {
            self.params = dict["params"] as! String
        }
        if dict.keys.contains("service_name") {
            self.serviceName = dict["service_name"] as! String
        }
    }
}

public class InvokeDiagnosisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("task_id") {
                self.taskId = dict["task_id"] as! String
            }
        }
    }
    public var code: String?

    public var data: InvokeDiagnosisResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = InvokeDiagnosisResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class InvokeDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeDiagnosisResponseBody?

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
            var model = InvokeDiagnosisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
