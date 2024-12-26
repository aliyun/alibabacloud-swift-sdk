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

public class GetAIQueryResultRequest : Tea.TeaModel {
    public var analysisId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisId != nil {
            map["analysisId"] = self.analysisId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisId") {
            self.analysisId = dict["analysisId"] as! String
        }
    }
}

public class GetAIQueryResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetAIQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAIQueryResultResponseBody?

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
            var model = GetAIQueryResultResponseBody()
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

    public var showPod: Int32?

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
        if self.showPod != nil {
            map["showPod"] = self.showPod!
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
        if dict.keys.contains("showPod") {
            self.showPod = dict["showPod"] as! Int32
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

public class GetAgentRequest : Tea.TeaModel {
    public var agentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agent_id"] = self.agentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agent_id") {
            self.agentId = dict["agent_id"] as! String
        }
    }
}

public class GetAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Versions : Tea.TeaModel {
            public var createdAt: String?

            public var installScript: String?

            public var uninstallScript: String?

            public var updatedAt: String?

            public var upgradeScript: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["created_at"] = self.createdAt!
                }
                if self.installScript != nil {
                    map["install_script"] = self.installScript!
                }
                if self.uninstallScript != nil {
                    map["uninstall_script"] = self.uninstallScript!
                }
                if self.updatedAt != nil {
                    map["updated_at"] = self.updatedAt!
                }
                if self.upgradeScript != nil {
                    map["upgrade_script"] = self.upgradeScript!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("created_at") {
                    self.createdAt = dict["created_at"] as! String
                }
                if dict.keys.contains("install_script") {
                    self.installScript = dict["install_script"] as! String
                }
                if dict.keys.contains("uninstall_script") {
                    self.uninstallScript = dict["uninstall_script"] as! String
                }
                if dict.keys.contains("updated_at") {
                    self.updatedAt = dict["updated_at"] as! String
                }
                if dict.keys.contains("upgrade_script") {
                    self.upgradeScript = dict["upgrade_script"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var createdAt: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var supportArch: String?

        public var type: String?

        public var updatedAt: String?

        public var versions: [GetAgentResponseBody.Data.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.supportArch != nil {
                map["support_arch"] = self.supportArch!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created_at") {
                self.createdAt = dict["created_at"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("support_arch") {
                self.supportArch = dict["support_arch"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated_at") {
                self.updatedAt = dict["updated_at"] as! String
            }
            if dict.keys.contains("versions") {
                var tmp : [GetAgentResponseBody.Data.Versions] = []
                for v in dict["versions"] as! [Any] {
                    var model = GetAgentResponseBody.Data.Versions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: GetAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class GetAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentResponseBody?

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
            var model = GetAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAgentTaskRequest : Tea.TeaModel {
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

public class GetAgentTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Jobs : Tea.TeaModel {
            public var error: String?

            public var instance: String?

            public var params: Any?

            public var region: String?

            public var result: String?

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
                if self.error != nil {
                    map["error"] = self.error!
                }
                if self.instance != nil {
                    map["instance"] = self.instance!
                }
                if self.params != nil {
                    map["params"] = self.params!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.result != nil {
                    map["result"] = self.result!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("error") {
                    self.error = dict["error"] as! String
                }
                if dict.keys.contains("instance") {
                    self.instance = dict["instance"] as! String
                }
                if dict.keys.contains("params") {
                    self.params = dict["params"] as! Any
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! String
                }
                if dict.keys.contains("result") {
                    self.result = dict["result"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var jobs: [GetAgentTaskResponseBody.Data.Jobs]?

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
            if self.jobs != nil {
                var tmp : [Any] = []
                for k in self.jobs! {
                    tmp.append(k.toMap())
                }
                map["jobs"] = tmp
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("jobs") {
                var tmp : [GetAgentTaskResponseBody.Data.Jobs] = []
                for v in dict["jobs"] as! [Any] {
                    var model = GetAgentTaskResponseBody.Data.Jobs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobs = tmp
            }
            if dict.keys.contains("task_id") {
                self.taskId = dict["task_id"] as! String
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: GetAgentTaskResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetAgentTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class GetAgentTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentTaskResponseBody?

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
            var model = GetAgentTaskResponseBody()
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

public class GetHostCountRequest : Tea.TeaModel {
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

public class GetHostCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var time: Int64?

        public var value: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("time") {
                self.time = dict["time"] as! Int64
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [GetHostCountResponseBody.Data]?

    public var message: String?

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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetHostCountResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetHostCountResponseBody.Data()
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
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class GetHostCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostCountResponseBody?

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
            var model = GetHostCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotspotAnalysisRequest : Tea.TeaModel {
    public var appType: String?

    public var begEnd: Int64?

    public var begStart: Int64?

    public var instance: String?

    public var pid: Int64?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["appType"] = self.appType!
        }
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pid != nil {
            map["pid"] = self.pid!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appType") {
            self.appType = dict["appType"] as! String
        }
        if dict.keys.contains("beg_end") {
            self.begEnd = dict["beg_end"] as! Int64
        }
        if dict.keys.contains("beg_start") {
            self.begStart = dict["beg_start"] as! Int64
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("pid") {
            self.pid = dict["pid"] as! Int64
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
    }
}

public class GetHotspotAnalysisResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
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
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetHotspotAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotAnalysisResponseBody?

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
            var model = GetHotspotAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotspotInstanceListRequest : Tea.TeaModel {
    public var begEnd: Int64?

    public var begStart: Int64?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("beg_end") {
            self.begEnd = dict["beg_end"] as! Int64
        }
        if dict.keys.contains("beg_start") {
            self.begStart = dict["beg_start"] as! Int64
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
    }
}

public class GetHotspotInstanceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var columns: [String]?

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
            if self.columns != nil {
                map["columns"] = self.columns!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("columns") {
                self.columns = dict["columns"] as! [String]
            }
            if dict.keys.contains("values") {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: GetHotspotInstanceListResponseBody.Data?

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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetHotspotInstanceListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetHotspotInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotInstanceListResponseBody?

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
            var model = GetHotspotInstanceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotspotPidListRequest : Tea.TeaModel {
    public var begEnd: Int64?

    public var begStart: Int64?

    public var instance: String?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("beg_end") {
            self.begEnd = dict["beg_end"] as! Int64
        }
        if dict.keys.contains("beg_start") {
            self.begStart = dict["beg_start"] as! Int64
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
    }
}

public class GetHotspotPidListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var columns: [String]?

        public var values: [[String]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columns != nil {
                map["columns"] = self.columns!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("columns") {
                self.columns = dict["columns"] as! [String]
            }
            if dict.keys.contains("values") {
                self.values = dict["values"] as! [[String]]
            }
        }
    }
    public var code: String?

    public var data: GetHotspotPidListResponseBody.Data?

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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetHotspotPidListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetHotspotPidListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotPidListResponseBody?

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
            var model = GetHotspotPidListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetListRecordRequest : Tea.TeaModel {
    public var current: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
            map["current"] = self.current!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("current") {
            self.current = dict["current"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
    }
}

public class GetListRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysisId: String?

        public var analysisTime: String?

        public var arguments: String?

        public var failedLog: String?

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
            if self.analysisId != nil {
                map["analysisId"] = self.analysisId!
            }
            if self.analysisTime != nil {
                map["analysisTime"] = self.analysisTime!
            }
            if self.arguments != nil {
                map["arguments"] = self.arguments!
            }
            if self.failedLog != nil {
                map["failedLog"] = self.failedLog!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analysisId") {
                self.analysisId = dict["analysisId"] as! String
            }
            if dict.keys.contains("analysisTime") {
                self.analysisTime = dict["analysisTime"] as! String
            }
            if dict.keys.contains("arguments") {
                self.arguments = dict["arguments"] as! String
            }
            if dict.keys.contains("failedLog") {
                self.failedLog = dict["failedLog"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetListRecordResponseBody.Data]?

    public var message: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetListRecordResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetListRecordResponseBody.Data()
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class GetListRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetListRecordResponseBody?

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
            var model = GetListRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProblemPercentageRequest : Tea.TeaModel {
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

public class GetProblemPercentageResponseBody : Tea.TeaModel {
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

    public var data: [GetProblemPercentageResponseBody.Data]?

    public var message: String?

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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetProblemPercentageResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetProblemPercentageResponseBody.Data()
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
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class GetProblemPercentageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProblemPercentageResponseBody?

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
            var model = GetProblemPercentageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRangeScoreRequest : Tea.TeaModel {
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

public class GetRangeScoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var time: Double?

        public var type: String?

        public var value: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("time") {
                self.time = dict["time"] as! Double
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Double
            }
        }
    }
    public var code: String?

    public var data: [GetRangeScoreResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Double?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetRangeScoreResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetRangeScoreResponseBody.Data()
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
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Double
        }
    }
}

public class GetRangeScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRangeScoreResponseBody?

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
            var model = GetRangeScoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourcesRequest : Tea.TeaModel {
    public var cluster: String?

    public var instance: String?

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
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster") {
            self.cluster = dict["cluster"] as! String
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class GetResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var total: Double?

        public var unit: String?

        public var usage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.total != nil {
                map["total"] = self.total!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            if self.usage != nil {
                map["usage"] = self.usage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Double
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
            if dict.keys.contains("usage") {
                self.usage = dict["usage"] as! Double
            }
        }
    }
    public var code: String?

    public var data: GetResourcesResponseBody.Data?

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
            var model = GetResourcesResponseBody.Data()
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

public class GetResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcesResponseBody?

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
            var model = GetResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallAgentRequest : Tea.TeaModel {
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
    public var agentId: String?

    public var agentVersion: String?

    public var installType: String?

    public var instances: [InstallAgentRequest.Instances]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.installType != nil {
            map["install_type"] = self.installType!
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
        if dict.keys.contains("agent_id") {
            self.agentId = dict["agent_id"] as! String
        }
        if dict.keys.contains("agent_version") {
            self.agentVersion = dict["agent_version"] as! String
        }
        if dict.keys.contains("install_type") {
            self.installType = dict["install_type"] as! String
        }
        if dict.keys.contains("instances") {
            var tmp : [InstallAgentRequest.Instances] = []
            for v in dict["instances"] as! [Any] {
                var model = InstallAgentRequest.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
    }
}

public class InstallAgentResponseBody : Tea.TeaModel {
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
    public var requestId: String?

    public var code: String?

    public var data: InstallAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = InstallAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class InstallAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallAgentResponseBody?

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
            var model = InstallAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeAnomalyDiagnosisRequest : Tea.TeaModel {
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
        if self.uuid != nil {
            map["uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("uuid") {
            self.uuid = dict["uuid"] as! String
        }
    }
}

public class InvokeAnomalyDiagnosisResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class InvokeAnomalyDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeAnomalyDiagnosisResponseBody?

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
            var model = InvokeAnomalyDiagnosisResponseBody()
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

public class ListAbnormalyEventsRequest : Tea.TeaModel {
    public var cluster: String?

    public var current: Int32?

    public var end: Double?

    public var instance: String?

    public var level: String?

    public var namespace: String?

    public var pageSize: Int32?

    public var pod: String?

    public var showPod: Int32?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pod != nil {
            map["pod"] = self.pod!
        }
        if self.showPod != nil {
            map["showPod"] = self.showPod!
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
        if dict.keys.contains("current") {
            self.current = dict["current"] as! Int32
        }
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Double
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("level") {
            self.level = dict["level"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("pod") {
            self.pod = dict["pod"] as! String
        }
        if dict.keys.contains("showPod") {
            self.showPod = dict["showPod"] as! Int32
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! Double
        }
    }
}

public class ListAbnormalyEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Opts : Tea.TeaModel {
            public var label: String?

            public var params: String?

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
                if self.label != nil {
                    map["label"] = self.label!
                }
                if self.params != nil {
                    map["params"] = self.params!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("label") {
                    self.label = dict["label"] as! String
                }
                if dict.keys.contains("params") {
                    self.params = dict["params"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var createdAt: Double?

        public var description_: String?

        public var id: String?

        public var instance: String?

        public var item: String?

        public var opts: ListAbnormalyEventsResponseBody.Data.Opts?

        public var regionId: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.opts?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.item != nil {
                map["item"] = self.item!
            }
            if self.opts != nil {
                map["opts"] = self.opts?.toMap()
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created_at") {
                self.createdAt = dict["created_at"] as! Double
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instance") {
                self.instance = dict["instance"] as! String
            }
            if dict.keys.contains("item") {
                self.item = dict["item"] as! String
            }
            if dict.keys.contains("opts") {
                var model = ListAbnormalyEventsResponseBody.Data.Opts()
                model.fromMap(dict["opts"] as! [String: Any])
                self.opts = model
            }
            if dict.keys.contains("region_id") {
                self.regionId = dict["region_id"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListAbnormalyEventsResponseBody.Data]?

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
            var tmp : [ListAbnormalyEventsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListAbnormalyEventsResponseBody.Data()
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

public class ListAbnormalyEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAbnormalyEventsResponseBody?

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
            var model = ListAbnormalyEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAgentInstallRecordsRequest : Tea.TeaModel {
    public var current: Int64?

    public var instanceId: String?

    public var pageSize: Int64?

    public var pluginId: String?

    public var pluginVersion: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.instanceId != nil {
            map["instance_id"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginId != nil {
            map["plugin_id"] = self.pluginId!
        }
        if self.pluginVersion != nil {
            map["plugin_version"] = self.pluginVersion!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("current") {
            self.current = dict["current"] as! Int64
        }
        if dict.keys.contains("instance_id") {
            self.instanceId = dict["instance_id"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("plugin_id") {
            self.pluginId = dict["plugin_id"] as! String
        }
        if dict.keys.contains("plugin_version") {
            self.pluginVersion = dict["plugin_version"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListAgentInstallRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var instanceId: String?

        public var pluginId: String?

        public var pluginVersion: String?

        public var status: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.instanceId != nil {
                map["instance_id"] = self.instanceId!
            }
            if self.pluginId != nil {
                map["plugin_id"] = self.pluginId!
            }
            if self.pluginVersion != nil {
                map["plugin_version"] = self.pluginVersion!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created_at") {
                self.createdAt = dict["created_at"] as! String
            }
            if dict.keys.contains("instance_id") {
                self.instanceId = dict["instance_id"] as! String
            }
            if dict.keys.contains("plugin_id") {
                self.pluginId = dict["plugin_id"] as! String
            }
            if dict.keys.contains("plugin_version") {
                self.pluginVersion = dict["plugin_version"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updated_at") {
                self.updatedAt = dict["updated_at"] as! String
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListAgentInstallRecordsResponseBody.Data]?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
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
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListAgentInstallRecordsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListAgentInstallRecordsResponseBody.Data()
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
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class ListAgentInstallRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentInstallRecordsResponseBody?

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
            var model = ListAgentInstallRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAgentsRequest : Tea.TeaModel {
    public var current: Int64?

    public var name: String?

    public var pageSize: Int64?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("current") {
            self.current = dict["current"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListAgentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Versions : Tea.TeaModel {
            public var createdAt: String?

            public var installScript: String?

            public var uninstallScript: String?

            public var updatedAt: String?

            public var upgradeScript: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["created_at"] = self.createdAt!
                }
                if self.installScript != nil {
                    map["install_script"] = self.installScript!
                }
                if self.uninstallScript != nil {
                    map["uninstall_script"] = self.uninstallScript!
                }
                if self.updatedAt != nil {
                    map["updated_at"] = self.updatedAt!
                }
                if self.upgradeScript != nil {
                    map["upgrade_script"] = self.upgradeScript!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("created_at") {
                    self.createdAt = dict["created_at"] as! String
                }
                if dict.keys.contains("install_script") {
                    self.installScript = dict["install_script"] as! String
                }
                if dict.keys.contains("uninstall_script") {
                    self.uninstallScript = dict["uninstall_script"] as! String
                }
                if dict.keys.contains("updated_at") {
                    self.updatedAt = dict["updated_at"] as! String
                }
                if dict.keys.contains("upgrade_script") {
                    self.upgradeScript = dict["upgrade_script"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var createdAt: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var supportArch: String?

        public var type: String?

        public var updatedAt: String?

        public var versions: [ListAgentsResponseBody.Data.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.supportArch != nil {
                map["support_arch"] = self.supportArch!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created_at") {
                self.createdAt = dict["created_at"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("support_arch") {
                self.supportArch = dict["support_arch"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated_at") {
                self.updatedAt = dict["updated_at"] as! String
            }
            if dict.keys.contains("versions") {
                var tmp : [ListAgentsResponseBody.Data.Versions] = []
                for v in dict["versions"] as! [Any] {
                    var model = ListAgentsResponseBody.Data.Versions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListAgentsResponseBody.Data]?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
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
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListAgentsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListAgentsResponseBody.Data()
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
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class ListAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentsResponseBody?

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
            var model = ListAgentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceHealthRequest : Tea.TeaModel {
    public var cluster: String?

    public var current: Int32?

    public var end: Double?

    public var instance: String?

    public var pageSize: Int32?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
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
        if dict.keys.contains("current") {
            self.current = dict["current"] as! Int32
        }
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Double
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! Double
        }
    }
}

public class ListInstanceHealthResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var images: [String]?

        public var instance: String?

        public var namespace: String?

        public var pod: String?

        public var regionId: String?

        public var score: Double?

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
            if self.images != nil {
                map["images"] = self.images!
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
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.score != nil {
                map["score"] = self.score!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("images") {
                self.images = dict["images"] as! [String]
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
            if dict.keys.contains("region_id") {
                self.regionId = dict["region_id"] as! String
            }
            if dict.keys.contains("score") {
                self.score = dict["score"] as! Double
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var code: String?

    public var data: ListInstanceHealthResponseBody.Data?

    public var message: String?

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
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListInstanceHealthResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("request_id") {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
    }
}

public class ListInstanceHealthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceHealthResponseBody?

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
            var model = ListInstanceHealthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAIAnalysisRequest : Tea.TeaModel {
    public var channel: String?

    public var comms: String?

    public var instance: String?

    public var pids: String?

    public var region: String?

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
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.comms != nil {
            map["comms"] = self.comms!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pids != nil {
            map["pids"] = self.pids!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! String
        }
        if dict.keys.contains("comms") {
            self.comms = dict["comms"] as! String
        }
        if dict.keys.contains("instance") {
            self.instance = dict["instance"] as! String
        }
        if dict.keys.contains("pids") {
            self.pids = dict["pids"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class StartAIAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysisId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisId != nil {
                map["analysis_id"] = self.analysisId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analysis_id") {
                self.analysisId = dict["analysis_id"] as! String
            }
        }
    }
    public var code: String?

    public var data: StartAIAnalysisResponseBody.Data?

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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = StartAIAnalysisResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class StartAIAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAIAnalysisResponseBody?

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
            var model = StartAIAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UninstallAgentRequest : Tea.TeaModel {
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
    public var agentId: String?

    public var agentVersion: String?

    public var instances: [UninstallAgentRequest.Instances]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
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
        if dict.keys.contains("agent_id") {
            self.agentId = dict["agent_id"] as! String
        }
        if dict.keys.contains("agent_version") {
            self.agentVersion = dict["agent_version"] as! String
        }
        if dict.keys.contains("instances") {
            var tmp : [UninstallAgentRequest.Instances] = []
            for v in dict["instances"] as! [Any] {
                var model = UninstallAgentRequest.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
    }
}

public class UninstallAgentResponseBody : Tea.TeaModel {
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
    public var requestId: String?

    public var code: String?

    public var data: UninstallAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = UninstallAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class UninstallAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallAgentResponseBody?

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
            var model = UninstallAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeAgentRequest : Tea.TeaModel {
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
    public var agentId: String?

    public var agentVersion: String?

    public var instances: [UpgradeAgentRequest.Instances]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
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
        if dict.keys.contains("agent_id") {
            self.agentId = dict["agent_id"] as! String
        }
        if dict.keys.contains("agent_version") {
            self.agentVersion = dict["agent_version"] as! String
        }
        if dict.keys.contains("instances") {
            var tmp : [UpgradeAgentRequest.Instances] = []
            for v in dict["instances"] as! [Any] {
                var model = UpgradeAgentRequest.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
    }
}

public class UpgradeAgentResponseBody : Tea.TeaModel {
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
    public var requestId: String?

    public var code: String?

    public var data: UpgradeAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = UpgradeAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class UpgradeAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeAgentResponseBody?

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
            var model = UpgradeAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
