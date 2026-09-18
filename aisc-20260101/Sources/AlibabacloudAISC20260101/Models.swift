import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAttackTargetRequest : Tea.TeaModel {
    public var apiKey: String?

    public var connectionConfig: String?

    public var connectionMethod: String?

    public var description_: String?

    public var endpoint: String?

    public var modelName: String?

    public var provider: String?

    public var targetName: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.connectionConfig != nil {
            map["ConnectionConfig"] = self.connectionConfig!
        }
        if self.connectionMethod != nil {
            map["ConnectionMethod"] = self.connectionMethod!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.targetName != nil {
            map["TargetName"] = self.targetName!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ConnectionConfig"] as? String {
            self.connectionConfig = value
        }
        if let value = dict["ConnectionMethod"] as? String {
            self.connectionMethod = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["TargetName"] as? String {
            self.targetName = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class CreateAttackTargetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var targetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
        }
    }
    public var data: CreateAttackTargetResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAttackTargetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAttackTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAttackTargetResponseBody?

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
            var model = CreateAttackTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSkillFileCheckRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var downloadUrl: String?

        public var fileName: String?

        public var uploadKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.uploadKey != nil {
                map["UploadKey"] = self.uploadKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["UploadKey"] as? String {
                self.uploadKey = value
            }
        }
    }
    public var files: [CreateSkillFileCheckRequest.Files]?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [CreateSkillFileCheckRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = CreateSkillFileCheckRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
    }
}

public class CreateSkillFileCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UploadResults : Tea.TeaModel {
            public var errorMsg: String?

            public var fileHash: String?

            public var fileName: String?

            public var identifyId: String?

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
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.fileHash != nil {
                    map["FileHash"] = self.fileHash!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.identifyId != nil {
                    map["IdentifyId"] = self.identifyId!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["FileHash"] as? String {
                    self.fileHash = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["IdentifyId"] as? String {
                    self.identifyId = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var failCount: Int32?

        public var rootTaskId: String?

        public var successCount: Int32?

        public var uploadResults: [CreateSkillFileCheckResponseBody.Data.UploadResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.rootTaskId != nil {
                map["RootTaskId"] = self.rootTaskId!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.uploadResults != nil {
                var tmp : [Any] = []
                for k in self.uploadResults! {
                    tmp.append(k.toMap())
                }
                map["UploadResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["RootTaskId"] as? String {
                self.rootTaskId = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["UploadResults"] as? [Any?] {
                var tmp : [CreateSkillFileCheckResponseBody.Data.UploadResults] = []
                for v in value {
                    if v != nil {
                        var model = CreateSkillFileCheckResponseBody.Data.UploadResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.uploadResults = tmp
            }
        }
    }
    public var data: CreateSkillFileCheckResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateSkillFileCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSkillFileCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSkillFileCheckResponseBody?

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
            var model = CreateSkillFileCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTargetScanTaskRequest : Tea.TeaModel {
    public var lang: String?

    public var sampleLevel: Int64?

    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sampleLevel != nil {
            map["SampleLevel"] = self.sampleLevel!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SampleLevel"] as? Int64 {
            self.sampleLevel = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class CreateTargetScanTaskResponseBody : Tea.TeaModel {
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
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: CreateTargetScanTaskResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateTargetScanTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateTargetScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTargetScanTaskResponseBody?

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
            var model = CreateTargetScanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAttackTargetRequest : Tea.TeaModel {
    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class DeleteAttackTargetResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAttackTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAttackTargetResponseBody?

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
            var model = DeleteAttackTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScannerTaskRequest : Tea.TeaModel {
    public var scannerTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scannerTaskId != nil {
            map["ScannerTaskId"] = self.scannerTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ScannerTaskId"] as? String {
            self.scannerTaskId = value
        }
    }
}

public class DeleteScannerTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteScannerTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScannerTaskResponseBody?

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
            var model = DeleteScannerTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateRelayPollerScriptRequest : Tea.TeaModel {
    public var platform: String?

    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class GenerateRelayPollerScriptResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var platform: String?

        public var script: String?

        public var targetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.script != nil {
                map["Script"] = self.script!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["Script"] as? String {
                self.script = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
        }
    }
    public var data: GenerateRelayPollerScriptResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GenerateRelayPollerScriptResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateRelayPollerScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateRelayPollerScriptResponseBody?

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
            var model = GenerateRelayPollerScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAttackTargetRequest : Tea.TeaModel {
    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class GetAttackTargetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionConfig: String?

        public var connectionMethod: String?

        public var createTime: Int64?

        public var description_: String?

        public var endpoint: String?

        public var firstScanTime: Int64?

        public var lastScanFailMessage: String?

        public var lastScanStatus: String?

        public var lastScanTime: Int64?

        public var modelName: String?

        public var modifyTime: Int64?

        public var provider: String?

        public var riskLevel: String?

        public var scanCount: Int64?

        public var scanTaskConfig: String?

        public var targetId: String?

        public var targetName: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionConfig != nil {
                map["ConnectionConfig"] = self.connectionConfig!
            }
            if self.connectionMethod != nil {
                map["ConnectionMethod"] = self.connectionMethod!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.firstScanTime != nil {
                map["FirstScanTime"] = self.firstScanTime!
            }
            if self.lastScanFailMessage != nil {
                map["LastScanFailMessage"] = self.lastScanFailMessage!
            }
            if self.lastScanStatus != nil {
                map["LastScanStatus"] = self.lastScanStatus!
            }
            if self.lastScanTime != nil {
                map["LastScanTime"] = self.lastScanTime!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.scanCount != nil {
                map["ScanCount"] = self.scanCount!
            }
            if self.scanTaskConfig != nil {
                map["ScanTaskConfig"] = self.scanTaskConfig!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionConfig"] as? String {
                self.connectionConfig = value
            }
            if let value = dict["ConnectionMethod"] as? String {
                self.connectionMethod = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["FirstScanTime"] as? Int64 {
                self.firstScanTime = value
            }
            if let value = dict["LastScanFailMessage"] as? String {
                self.lastScanFailMessage = value
            }
            if let value = dict["LastScanStatus"] as? String {
                self.lastScanStatus = value
            }
            if let value = dict["LastScanTime"] as? Int64 {
                self.lastScanTime = value
            }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["ScanCount"] as? Int64 {
                self.scanCount = value
            }
            if let value = dict["ScanTaskConfig"] as? String {
                self.scanTaskConfig = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var data: GetAttackTargetResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAttackTargetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAttackTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAttackTargetResponseBody?

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
            var model = GetAttackTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScannerTaskHitDataUrlRequest : Tea.TeaModel {
    public var scannerTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scannerTaskId != nil {
            map["ScannerTaskId"] = self.scannerTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ScannerTaskId"] as? String {
            self.scannerTaskId = value
        }
    }
}

public class GetScannerTaskHitDataUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var scannerTaskHitDataDownloadUrl: String?

        public var scannerTaskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scannerTaskHitDataDownloadUrl != nil {
                map["ScannerTaskHitDataDownloadUrl"] = self.scannerTaskHitDataDownloadUrl!
            }
            if self.scannerTaskId != nil {
                map["ScannerTaskId"] = self.scannerTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScannerTaskHitDataDownloadUrl"] as? String {
                self.scannerTaskHitDataDownloadUrl = value
            }
            if let value = dict["ScannerTaskId"] as? String {
                self.scannerTaskId = value
            }
        }
    }
    public var data: GetScannerTaskHitDataUrlResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetScannerTaskHitDataUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetScannerTaskHitDataUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScannerTaskHitDataUrlResponseBody?

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
            var model = GetScannerTaskHitDataUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScannerTaskResultHtmlUrlRequest : Tea.TeaModel {
    public var scannerTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scannerTaskId != nil {
            map["ScannerTaskId"] = self.scannerTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ScannerTaskId"] as? String {
            self.scannerTaskId = value
        }
    }
}

public class GetScannerTaskResultHtmlUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var scannerTaskResultHtmlDownloadUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scannerTaskResultHtmlDownloadUrl != nil {
                map["ScannerTaskResultHtmlDownloadUrl"] = self.scannerTaskResultHtmlDownloadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScannerTaskResultHtmlDownloadUrl"] as? String {
                self.scannerTaskResultHtmlDownloadUrl = value
            }
        }
    }
    public var data: GetScannerTaskResultHtmlUrlResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetScannerTaskResultHtmlUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetScannerTaskResultHtmlUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScannerTaskResultHtmlUrlResponseBody?

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
            var model = GetScannerTaskResultHtmlUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAIAgentEventRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var assetName: String?

    public var assetType: String?

    public var currentPage: Int32?

    public var infraInstanceId: String?

    public var infraName: String?

    public var infraRegionId: String?

    public var lang: String?

    public var order: String?

    public var orderBy: String?

    public var pageSize: Int32?

    public var resourceDirectoryAccountId: Int64?

    public var riskLevel: String?

    public var riskName: String?

    public var source: String?

    public var status: String?

    public var statusList: [String]?

    public var vendor: String?

    public override init() {
        super.init()
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
        if self.assetName != nil {
            map["AssetName"] = self.assetName!
        }
        if self.assetType != nil {
            map["AssetType"] = self.assetType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.infraInstanceId != nil {
            map["InfraInstanceId"] = self.infraInstanceId!
        }
        if self.infraName != nil {
            map["InfraName"] = self.infraName!
        }
        if self.infraRegionId != nil {
            map["InfraRegionId"] = self.infraRegionId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceDirectoryAccountId != nil {
            map["ResourceDirectoryAccountId"] = self.resourceDirectoryAccountId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.riskName != nil {
            map["RiskName"] = self.riskName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AssetName"] as? String {
            self.assetName = value
        }
        if let value = dict["AssetType"] as? String {
            self.assetType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InfraInstanceId"] as? String {
            self.infraInstanceId = value
        }
        if let value = dict["InfraName"] as? String {
            self.infraName = value
        }
        if let value = dict["InfraRegionId"] as? String {
            self.infraRegionId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceDirectoryAccountId"] as? Int64 {
            self.resourceDirectoryAccountId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["RiskName"] as? String {
            self.riskName = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ListAIAgentEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var assetName: String?

        public var assetType: String?

        public var checkTime: String?

        public var handleTime: String?

        public var id: Int64?

        public var infraInstanceId: String?

        public var infraInternetIp: String?

        public var infraIntranetIp: String?

        public var infraName: String?

        public var infraRegionId: String?

        public var infraType: String?

        public var riskDesc: String?

        public var riskLevel: String?

        public var riskName: String?

        public var skillId: Int64?

        public var source: String?

        public var status: String?

        public var vendor: String?

        public override init() {
            super.init()
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
            if self.assetName != nil {
                map["AssetName"] = self.assetName!
            }
            if self.assetType != nil {
                map["AssetType"] = self.assetType!
            }
            if self.checkTime != nil {
                map["CheckTime"] = self.checkTime!
            }
            if self.handleTime != nil {
                map["HandleTime"] = self.handleTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.infraInstanceId != nil {
                map["InfraInstanceId"] = self.infraInstanceId!
            }
            if self.infraInternetIp != nil {
                map["InfraInternetIp"] = self.infraInternetIp!
            }
            if self.infraIntranetIp != nil {
                map["InfraIntranetIp"] = self.infraIntranetIp!
            }
            if self.infraName != nil {
                map["InfraName"] = self.infraName!
            }
            if self.infraRegionId != nil {
                map["InfraRegionId"] = self.infraRegionId!
            }
            if self.infraType != nil {
                map["InfraType"] = self.infraType!
            }
            if self.riskDesc != nil {
                map["RiskDesc"] = self.riskDesc!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.riskName != nil {
                map["RiskName"] = self.riskName!
            }
            if self.skillId != nil {
                map["SkillId"] = self.skillId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AssetName"] as? String {
                self.assetName = value
            }
            if let value = dict["AssetType"] as? String {
                self.assetType = value
            }
            if let value = dict["CheckTime"] as? String {
                self.checkTime = value
            }
            if let value = dict["HandleTime"] as? String {
                self.handleTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InfraInstanceId"] as? String {
                self.infraInstanceId = value
            }
            if let value = dict["InfraInternetIp"] as? String {
                self.infraInternetIp = value
            }
            if let value = dict["InfraIntranetIp"] as? String {
                self.infraIntranetIp = value
            }
            if let value = dict["InfraName"] as? String {
                self.infraName = value
            }
            if let value = dict["InfraRegionId"] as? String {
                self.infraRegionId = value
            }
            if let value = dict["InfraType"] as? String {
                self.infraType = value
            }
            if let value = dict["RiskDesc"] as? String {
                self.riskDesc = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["RiskName"] as? String {
                self.riskName = value
            }
            if let value = dict["SkillId"] as? Int64 {
                self.skillId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var nextToken: String?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: [ListAIAgentEventResponseBody.Data]?

    public var pageInfo: ListAIAgentEventResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
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
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAIAgentEventResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAIAgentEventResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListAIAgentEventResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAIAgentEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAIAgentEventResponseBody?

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
            var model = ListAIAgentEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAttackTargetsRequest : Tea.TeaModel {
    public var firstScanTimeEnd: String?

    public var firstScanTimeStart: String?

    public var lastScanStatus: String?

    public var lastScanTimeEnd: String?

    public var lastScanTimeStart: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var provider: String?

    public var riskLevel: String?

    public var sortField: String?

    public var sortOrder: String?

    public var targetName: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firstScanTimeEnd != nil {
            map["FirstScanTimeEnd"] = self.firstScanTimeEnd!
        }
        if self.firstScanTimeStart != nil {
            map["FirstScanTimeStart"] = self.firstScanTimeStart!
        }
        if self.lastScanStatus != nil {
            map["LastScanStatus"] = self.lastScanStatus!
        }
        if self.lastScanTimeEnd != nil {
            map["LastScanTimeEnd"] = self.lastScanTimeEnd!
        }
        if self.lastScanTimeStart != nil {
            map["LastScanTimeStart"] = self.lastScanTimeStart!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.targetName != nil {
            map["TargetName"] = self.targetName!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirstScanTimeEnd"] as? String {
            self.firstScanTimeEnd = value
        }
        if let value = dict["FirstScanTimeStart"] as? String {
            self.firstScanTimeStart = value
        }
        if let value = dict["LastScanStatus"] as? String {
            self.lastScanStatus = value
        }
        if let value = dict["LastScanTimeEnd"] as? String {
            self.lastScanTimeEnd = value
        }
        if let value = dict["LastScanTimeStart"] as? String {
            self.lastScanTimeStart = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["TargetName"] as? String {
            self.targetName = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class ListAttackTargetsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionConfig: String?

        public var connectionMethod: String?

        public var createTime: Int64?

        public var description_: String?

        public var endpoint: String?

        public var firstScanTime: Int64?

        public var lastScanFailMessage: String?

        public var lastScanStatus: String?

        public var lastScanTime: Int64?

        public var lastVerifyMessage: String?

        public var modelName: String?

        public var modifyTime: Int64?

        public var provider: String?

        public var riskLevel: String?

        public var scanCount: Int64?

        public var targetId: String?

        public var targetName: String?

        public var targetType: String?

        public var verifyStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionConfig != nil {
                map["ConnectionConfig"] = self.connectionConfig!
            }
            if self.connectionMethod != nil {
                map["ConnectionMethod"] = self.connectionMethod!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.firstScanTime != nil {
                map["FirstScanTime"] = self.firstScanTime!
            }
            if self.lastScanFailMessage != nil {
                map["LastScanFailMessage"] = self.lastScanFailMessage!
            }
            if self.lastScanStatus != nil {
                map["LastScanStatus"] = self.lastScanStatus!
            }
            if self.lastScanTime != nil {
                map["LastScanTime"] = self.lastScanTime!
            }
            if self.lastVerifyMessage != nil {
                map["LastVerifyMessage"] = self.lastVerifyMessage!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.scanCount != nil {
                map["ScanCount"] = self.scanCount!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.verifyStatus != nil {
                map["VerifyStatus"] = self.verifyStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionConfig"] as? String {
                self.connectionConfig = value
            }
            if let value = dict["ConnectionMethod"] as? String {
                self.connectionMethod = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["FirstScanTime"] as? Int64 {
                self.firstScanTime = value
            }
            if let value = dict["LastScanFailMessage"] as? String {
                self.lastScanFailMessage = value
            }
            if let value = dict["LastScanStatus"] as? String {
                self.lastScanStatus = value
            }
            if let value = dict["LastScanTime"] as? Int64 {
                self.lastScanTime = value
            }
            if let value = dict["LastVerifyMessage"] as? String {
                self.lastVerifyMessage = value
            }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["ScanCount"] as? Int64 {
                self.scanCount = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["VerifyStatus"] as? String {
                self.verifyStatus = value
            }
        }
    }
    public var data: [ListAttackTargetsResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAttackTargetsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAttackTargetsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListAttackTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAttackTargetsResponseBody?

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
            var model = ListAttackTargetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScanTasksByTargetRequest : Tea.TeaModel {
    public var pageNumber: String?

    public var pageSize: String?

    public var sampleLevel: String?

    public var scanType: String?

    public var targetId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sampleLevel != nil {
            map["SampleLevel"] = self.sampleLevel!
        }
        if self.scanType != nil {
            map["ScanType"] = self.scanType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SampleLevel"] as? String {
            self.sampleLevel = value
        }
        if let value = dict["ScanType"] as? String {
            self.scanType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class ListScanTasksByTargetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

        public var endTime: Int64?

        public var executeCaseCount: Int64?

        public var riskLevel: String?

        public var sampleLevel: Int64?

        public var scanType: String?

        public var scannerTaskId: String?

        public var scannerTaskMessage: String?

        public var scannerTaskStatus: String?

        public var startTime: Int64?

        public var taskName: String?

        public var totalCaseCount: Int64?

        public override init() {
            super.init()
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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executeCaseCount != nil {
                map["ExecuteCaseCount"] = self.executeCaseCount!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.sampleLevel != nil {
                map["SampleLevel"] = self.sampleLevel!
            }
            if self.scanType != nil {
                map["ScanType"] = self.scanType!
            }
            if self.scannerTaskId != nil {
                map["ScannerTaskId"] = self.scannerTaskId!
            }
            if self.scannerTaskMessage != nil {
                map["ScannerTaskMessage"] = self.scannerTaskMessage!
            }
            if self.scannerTaskStatus != nil {
                map["ScannerTaskStatus"] = self.scannerTaskStatus!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.totalCaseCount != nil {
                map["TotalCaseCount"] = self.totalCaseCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["ExecuteCaseCount"] as? Int64 {
                self.executeCaseCount = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["SampleLevel"] as? Int64 {
                self.sampleLevel = value
            }
            if let value = dict["ScanType"] as? String {
                self.scanType = value
            }
            if let value = dict["ScannerTaskId"] as? String {
                self.scannerTaskId = value
            }
            if let value = dict["ScannerTaskMessage"] as? String {
                self.scannerTaskMessage = value
            }
            if let value = dict["ScannerTaskStatus"] as? String {
                self.scannerTaskStatus = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TotalCaseCount"] as? Int64 {
                self.totalCaseCount = value
            }
        }
    }
    public var data: [ListScanTasksByTargetResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListScanTasksByTargetResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListScanTasksByTargetResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListScanTasksByTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScanTasksByTargetResponseBody?

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
            var model = ListScanTasksByTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubTasksRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var rootTaskId: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rootTaskId != nil {
            map["RootTaskId"] = self.rootTaskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RootTaskId"] as? String {
            self.rootTaskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class ListSubTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskResultMessage : Tea.TeaModel {
            public class SkillCheckResult : Tea.TeaModel {
                public class RiskInfo : Tea.TeaModel {
                    public class Ext : Tea.TeaModel {
                        public class Config : Tea.TeaModel {
                            public class Detail : Tea.TeaModel {
                                public var content: String?

                                public var description_: String?

                                public var itemName: String?

                                public var line: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.content != nil {
                                        map["Content"] = self.content!
                                    }
                                    if self.description_ != nil {
                                        map["Description"] = self.description_!
                                    }
                                    if self.itemName != nil {
                                        map["ItemName"] = self.itemName!
                                    }
                                    if self.line != nil {
                                        map["Line"] = self.line!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Content"] as? String {
                                        self.content = value
                                    }
                                    if let value = dict["Description"] as? String {
                                        self.description_ = value
                                    }
                                    if let value = dict["ItemName"] as? String {
                                        self.itemName = value
                                    }
                                    if let value = dict["Line"] as? String {
                                        self.line = value
                                    }
                                }
                            }
                            public var detail: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config.Detail]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.detail != nil {
                                    var tmp : [Any] = []
                                    for k in self.detail! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Detail"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Detail"] as? [Any?] {
                                    var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config.Detail] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config.Detail()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.detail = tmp
                                }
                            }
                        }
                        public class Guardrail : Tea.TeaModel {
                            public class Detail : Tea.TeaModel {
                                public class Result : Tea.TeaModel {
                                    public var confidence: Double?

                                    public var description_: String?

                                    public var label: String?

                                    public var level: String?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.confidence != nil {
                                            map["Confidence"] = self.confidence!
                                        }
                                        if self.description_ != nil {
                                            map["Description"] = self.description_!
                                        }
                                        if self.label != nil {
                                            map["Label"] = self.label!
                                        }
                                        if self.level != nil {
                                            map["Level"] = self.level!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["Confidence"] as? Double {
                                            self.confidence = value
                                        }
                                        if let value = dict["Description"] as? String {
                                            self.description_ = value
                                        }
                                        if let value = dict["Label"] as? String {
                                            self.label = value
                                        }
                                        if let value = dict["Level"] as? String {
                                            self.level = value
                                        }
                                    }
                                }
                                public var level: String?

                                public var result: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail.Result]?

                                public var suggestion: String?

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
                                    if self.level != nil {
                                        map["Level"] = self.level!
                                    }
                                    if self.result != nil {
                                        var tmp : [Any] = []
                                        for k in self.result! {
                                            tmp.append(k.toMap())
                                        }
                                        map["Result"] = tmp
                                    }
                                    if self.suggestion != nil {
                                        map["Suggestion"] = self.suggestion!
                                    }
                                    if self.type != nil {
                                        map["Type"] = self.type!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Level"] as? String {
                                        self.level = value
                                    }
                                    if let value = dict["Result"] as? [Any?] {
                                        var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail.Result] = []
                                        for v in value {
                                            if v != nil {
                                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail.Result()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.result = tmp
                                    }
                                    if let value = dict["Suggestion"] as? String {
                                        self.suggestion = value
                                    }
                                    if let value = dict["Type"] as? String {
                                        self.type = value
                                    }
                                }
                            }
                            public var detail: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail]?

                            public var suggestion: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.detail != nil {
                                    var tmp : [Any] = []
                                    for k in self.detail! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Detail"] = tmp
                                }
                                if self.suggestion != nil {
                                    map["Suggestion"] = self.suggestion!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Detail"] as? [Any?] {
                                    var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.detail = tmp
                                }
                                if let value = dict["Suggestion"] as? String {
                                    self.suggestion = value
                                }
                            }
                        }
                        public class Sensitive : Tea.TeaModel {
                            public class Detail : Tea.TeaModel {
                                public var desc: String?

                                public var result: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.desc != nil {
                                        map["Desc"] = self.desc!
                                    }
                                    if self.result != nil {
                                        map["Result"] = self.result!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Desc"] as? String {
                                        self.desc = value
                                    }
                                    if let value = dict["Result"] as? [String] {
                                        self.result = value
                                    }
                                }
                            }
                            public var detail: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive.Detail]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.detail != nil {
                                    var tmp : [Any] = []
                                    for k in self.detail! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Detail"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Detail"] as? [Any?] {
                                    var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive.Detail] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive.Detail()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.detail = tmp
                                }
                            }
                        }
                        public class Virus : Tea.TeaModel {
                            public var ext: String?

                            public var score: Int32?

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
                                if self.ext != nil {
                                    map["Ext"] = self.ext!
                                }
                                if self.score != nil {
                                    map["Score"] = self.score!
                                }
                                if self.type != nil {
                                    map["Type"] = self.type!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Ext"] as? String {
                                    self.ext = value
                                }
                                if let value = dict["Score"] as? Int32 {
                                    self.score = value
                                }
                                if let value = dict["Type"] as? String {
                                    self.type = value
                                }
                            }
                        }
                        public var config: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config?

                        public var guardrail: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail?

                        public var sensitive: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive?

                        public var virus: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Virus]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.config?.validate()
                            try self.guardrail?.validate()
                            try self.sensitive?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.config != nil {
                                map["Config"] = self.config?.toMap()
                            }
                            if self.guardrail != nil {
                                map["Guardrail"] = self.guardrail?.toMap()
                            }
                            if self.sensitive != nil {
                                map["Sensitive"] = self.sensitive?.toMap()
                            }
                            if self.virus != nil {
                                var tmp : [Any] = []
                                for k in self.virus! {
                                    tmp.append(k.toMap())
                                }
                                map["Virus"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Config"] as? [String: Any?] {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config()
                                model.fromMap(value)
                                self.config = model
                            }
                            if let value = dict["Guardrail"] as? [String: Any?] {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail()
                                model.fromMap(value)
                                self.guardrail = model
                            }
                            if let value = dict["Sensitive"] as? [String: Any?] {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive()
                                model.fromMap(value)
                                self.sensitive = model
                            }
                            if let value = dict["Virus"] as? [Any?] {
                                var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Virus] = []
                                for v in value {
                                    if v != nil {
                                        var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Virus()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.virus = tmp
                            }
                        }
                    }
                    public var ext: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext?

                    public var path: String?

                    public var resultType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.ext?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ext != nil {
                            map["Ext"] = self.ext?.toMap()
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.resultType != nil {
                            map["ResultType"] = self.resultType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Ext"] as? [String: Any?] {
                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext()
                            model.fromMap(value)
                            self.ext = model
                        }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["ResultType"] as? String {
                            self.resultType = value
                        }
                    }
                }
                public var riskInfo: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.riskInfo != nil {
                        var tmp : [Any] = []
                        for k in self.riskInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RiskInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RiskInfo"] as? [Any?] {
                        var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo] = []
                        for v in value {
                            if v != nil {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.riskInfo = tmp
                    }
                }
            }
            public var skillCheckResult: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.skillCheckResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.skillCheckResult != nil {
                    map["SkillCheckResult"] = self.skillCheckResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SkillCheckResult"] as? [String: Any?] {
                    var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult()
                    model.fromMap(value)
                    self.skillCheckResult = model
                }
            }
        }
        public var fileHash: String?

        public var id: Int64?

        public var target: String?

        public var taskResultMessage: ListSubTasksResponseBody.Data.TaskResultMessage?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.taskResultMessage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileHash != nil {
                map["FileHash"] = self.fileHash!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.taskResultMessage != nil {
                map["TaskResultMessage"] = self.taskResultMessage?.toMap()
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileHash"] as? String {
                self.fileHash = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["TaskResultMessage"] as? [String: Any?] {
                var model = ListSubTasksResponseBody.Data.TaskResultMessage()
                model.fromMap(value)
                self.taskResultMessage = model
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var count: String?

        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? String {
                self.count = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: [ListSubTasksResponseBody.Data]?

    public var pageInfo: ListSubTasksResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
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
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListSubTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListSubTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListSubTasksResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSubTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubTasksResponseBody?

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
            var model = ListSubTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopScannerTaskRequest : Tea.TeaModel {
    public var scannerTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scannerTaskId != nil {
            map["ScannerTaskId"] = self.scannerTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ScannerTaskId"] as? String {
            self.scannerTaskId = value
        }
    }
}

public class StopScannerTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopScannerTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopScannerTaskResponseBody?

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
            var model = StopScannerTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TestConnectivityRequest : Tea.TeaModel {
    public var apiKey: String?

    public var checkId: String?

    public var connectionConfig: String?

    public var connectionMethod: String?

    public var endpoint: String?

    public var modelName: String?

    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.connectionConfig != nil {
            map["ConnectionConfig"] = self.connectionConfig!
        }
        if self.connectionMethod != nil {
            map["ConnectionMethod"] = self.connectionMethod!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["CheckId"] as? String {
            self.checkId = value
        }
        if let value = dict["ConnectionConfig"] as? String {
            self.connectionConfig = value
        }
        if let value = dict["ConnectionMethod"] as? String {
            self.connectionMethod = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class TestConnectivityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkId: String?

        public var latencyMs: Int64?

        public var verifyMessage: String?

        public var verifyStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkId != nil {
                map["CheckId"] = self.checkId!
            }
            if self.latencyMs != nil {
                map["LatencyMs"] = self.latencyMs!
            }
            if self.verifyMessage != nil {
                map["VerifyMessage"] = self.verifyMessage!
            }
            if self.verifyStatus != nil {
                map["VerifyStatus"] = self.verifyStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckId"] as? String {
                self.checkId = value
            }
            if let value = dict["LatencyMs"] as? Int64 {
                self.latencyMs = value
            }
            if let value = dict["VerifyMessage"] as? String {
                self.verifyMessage = value
            }
            if let value = dict["VerifyStatus"] as? String {
                self.verifyStatus = value
            }
        }
    }
    public var data: TestConnectivityResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TestConnectivityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class TestConnectivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestConnectivityResponseBody?

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
            var model = TestConnectivityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
