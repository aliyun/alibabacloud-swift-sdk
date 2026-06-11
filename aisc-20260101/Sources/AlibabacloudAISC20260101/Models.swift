import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateSkillFileCheckRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var downloadUrl: String?

        public var fileName: String?

        public override init() {
            super.init()
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
        }
    }
    public var files: [CreateSkillFileCheckRequest.Files]?

    public override init() {
        super.init()
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
