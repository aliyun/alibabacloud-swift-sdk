import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AbortRunRequest : Tea.TeaModel {
    public var runId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RunId") {
            self.runId = dict["RunId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class AbortRunResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AbortRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortRunResponseBody?

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
            var model = AbortRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AbortSubmissionRequest : Tea.TeaModel {
    public var submissionId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class AbortSubmissionResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AbortSubmissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortSubmissionResponseBody?

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
            var model = AbortSubmissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyPublicEntityRequest : Tea.TeaModel {
    public var dataset: String?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataset != nil {
            map["Dataset"] = self.dataset!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dataset") {
            self.dataset = dict["Dataset"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CopyPublicEntityResponseBody : Tea.TeaModel {
    public var entityType: String?

    public var hostId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CopyPublicEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyPublicEntityResponseBody?

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
            var model = CopyPublicEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var content: String?

        public var path: String?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public class Dependencies : Tea.TeaModel {
        public var content: String?

        public var path: String?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public var appName: String?

    public var appType: String?

    public var clientToken: String?

    public var configs: [CreateAppRequest.Configs]?

    public var definition: String?

    public var dependencies: [CreateAppRequest.Dependencies]?

    public var description_: String?

    public var documentation: String?

    public var labels: String?

    public var language: String?

    public var languageVersion: String?

    public var path: String?

    public var revisionComment: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.dependencies != nil {
            var tmp : [Any] = []
            for k in self.dependencies! {
                tmp.append(k.toMap())
            }
            map["Dependencies"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentation != nil {
            map["Documentation"] = self.documentation!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.languageVersion != nil {
            map["LanguageVersion"] = self.languageVersion!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.revisionComment != nil {
            map["RevisionComment"] = self.revisionComment!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Configs") {
            var tmp : [CreateAppRequest.Configs] = []
            for v in dict["Configs"] as! [Any] {
                var model = CreateAppRequest.Configs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Dependencies") {
            var tmp : [CreateAppRequest.Dependencies] = []
            for v in dict["Dependencies"] as! [Any] {
                var model = CreateAppRequest.Dependencies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dependencies = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Documentation") {
            self.documentation = dict["Documentation"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LanguageVersion") {
            self.languageVersion = dict["LanguageVersion"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("RevisionComment") {
            self.revisionComment = dict["RevisionComment"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateAppShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var appType: String?

    public var clientToken: String?

    public var configsShrink: String?

    public var definition: String?

    public var dependenciesShrink: String?

    public var description_: String?

    public var documentation: String?

    public var labels: String?

    public var language: String?

    public var languageVersion: String?

    public var path: String?

    public var revisionComment: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configsShrink != nil {
            map["Configs"] = self.configsShrink!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.dependenciesShrink != nil {
            map["Dependencies"] = self.dependenciesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentation != nil {
            map["Documentation"] = self.documentation!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.languageVersion != nil {
            map["LanguageVersion"] = self.languageVersion!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.revisionComment != nil {
            map["RevisionComment"] = self.revisionComment!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Configs") {
            self.configsShrink = dict["Configs"] as! String
        }
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Dependencies") {
            self.dependenciesShrink = dict["Dependencies"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Documentation") {
            self.documentation = dict["Documentation"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LanguageVersion") {
            self.languageVersion = dict["LanguageVersion"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("RevisionComment") {
            self.revisionComment = dict["RevisionComment"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var appName: String?

    public var hostId: String?

    public var requestId: String?

    public var revision: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.revision != nil {
            map["Revision"] = self.revision!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Revision") {
            self.revision = dict["Revision"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEntityRequest : Tea.TeaModel {
    public class EntityItems : Tea.TeaModel {
        public var entityData: [String: String]?

        public var entityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityData != nil {
                map["EntityData"] = self.entityData!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityData") {
                self.entityData = dict["EntityData"] as! [String: String]
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
        }
    }
    public var clientToken: String?

    public var entityItems: [CreateEntityRequest.EntityItems]?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.entityItems != nil {
            var tmp : [Any] = []
            for k in self.entityItems! {
                tmp.append(k.toMap())
            }
            map["EntityItems"] = tmp
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EntityItems") {
            var tmp : [CreateEntityRequest.EntityItems] = []
            for v in dict["EntityItems"] as! [Any] {
                var model = CreateEntityRequest.EntityItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entityItems = tmp
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateEntityShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var entityItemsShrink: String?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.entityItemsShrink != nil {
            map["EntityItems"] = self.entityItemsShrink!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EntityItems") {
            self.entityItemsShrink = dict["EntityItems"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateEntityResponseBody : Tea.TeaModel {
    public var entityType: String?

    public var hostId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEntityResponseBody?

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
            var model = CreateEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRunRequest : Tea.TeaModel {
    public class ExecuteOptions : Tea.TeaModel {
        public var callCaching: Bool?

        public var dataLoader: String?

        public var deleteIntermediateResults: Bool?

        public var failureMode: String?

        public var useRelativeOutputPaths: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callCaching != nil {
                map["CallCaching"] = self.callCaching!
            }
            if self.dataLoader != nil {
                map["DataLoader"] = self.dataLoader!
            }
            if self.deleteIntermediateResults != nil {
                map["DeleteIntermediateResults"] = self.deleteIntermediateResults!
            }
            if self.failureMode != nil {
                map["FailureMode"] = self.failureMode!
            }
            if self.useRelativeOutputPaths != nil {
                map["UseRelativeOutputPaths"] = self.useRelativeOutputPaths!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallCaching") {
                self.callCaching = dict["CallCaching"] as! Bool
            }
            if dict.keys.contains("DataLoader") {
                self.dataLoader = dict["DataLoader"] as! String
            }
            if dict.keys.contains("DeleteIntermediateResults") {
                self.deleteIntermediateResults = dict["DeleteIntermediateResults"] as! Bool
            }
            if dict.keys.contains("FailureMode") {
                self.failureMode = dict["FailureMode"] as! String
            }
            if dict.keys.contains("UseRelativeOutputPaths") {
                self.useRelativeOutputPaths = dict["UseRelativeOutputPaths"] as! Bool
            }
        }
    }
    public var appName: String?

    public var appRevision: String?

    public var clientToken: String?

    public var defaultRuntime: String?

    public var description_: String?

    public var executeDirectory: String?

    public var executeOptions: CreateRunRequest.ExecuteOptions?

    public var inputs: String?

    public var labels: String?

    public var outputFolder: String?

    public var revisionTag: String?

    public var role: String?

    public var runName: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executeOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultRuntime != nil {
            map["DefaultRuntime"] = self.defaultRuntime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executeDirectory != nil {
            map["ExecuteDirectory"] = self.executeDirectory!
        }
        if self.executeOptions != nil {
            map["ExecuteOptions"] = self.executeOptions?.toMap()
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputFolder != nil {
            map["OutputFolder"] = self.outputFolder!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.runName != nil {
            map["RunName"] = self.runName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DefaultRuntime") {
            self.defaultRuntime = dict["DefaultRuntime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecuteDirectory") {
            self.executeDirectory = dict["ExecuteDirectory"] as! String
        }
        if dict.keys.contains("ExecuteOptions") {
            var model = CreateRunRequest.ExecuteOptions()
            model.fromMap(dict["ExecuteOptions"] as! [String: Any])
            self.executeOptions = model
        }
        if dict.keys.contains("Inputs") {
            self.inputs = dict["Inputs"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("OutputFolder") {
            self.outputFolder = dict["OutputFolder"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("RunName") {
            self.runName = dict["RunName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateRunShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var appRevision: String?

    public var clientToken: String?

    public var defaultRuntime: String?

    public var description_: String?

    public var executeDirectory: String?

    public var executeOptionsShrink: String?

    public var inputs: String?

    public var labels: String?

    public var outputFolder: String?

    public var revisionTag: String?

    public var role: String?

    public var runName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultRuntime != nil {
            map["DefaultRuntime"] = self.defaultRuntime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executeDirectory != nil {
            map["ExecuteDirectory"] = self.executeDirectory!
        }
        if self.executeOptionsShrink != nil {
            map["ExecuteOptions"] = self.executeOptionsShrink!
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputFolder != nil {
            map["OutputFolder"] = self.outputFolder!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.runName != nil {
            map["RunName"] = self.runName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DefaultRuntime") {
            self.defaultRuntime = dict["DefaultRuntime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecuteDirectory") {
            self.executeDirectory = dict["ExecuteDirectory"] as! String
        }
        if dict.keys.contains("ExecuteOptions") {
            self.executeOptionsShrink = dict["ExecuteOptions"] as! String
        }
        if dict.keys.contains("Inputs") {
            self.inputs = dict["Inputs"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("OutputFolder") {
            self.outputFolder = dict["OutputFolder"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("RunName") {
            self.runName = dict["RunName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateRunResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var requestId: String?

    public var runId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunId") {
            self.runId = dict["RunId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRunResponseBody?

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
            var model = CreateRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSubmissionRequest : Tea.TeaModel {
    public var appName: String?

    public var clientToken: String?

    public var defaultRuntime: String?

    public var entityNames: [String]?

    public var entityType: String?

    public var executeDirectory: String?

    public var executeOptions: String?

    public var inputs: String?

    public var outputFolder: String?

    public var outputs: String?

    public var revision: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultRuntime != nil {
            map["DefaultRuntime"] = self.defaultRuntime!
        }
        if self.entityNames != nil {
            map["EntityNames"] = self.entityNames!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.executeDirectory != nil {
            map["ExecuteDirectory"] = self.executeDirectory!
        }
        if self.executeOptions != nil {
            map["ExecuteOptions"] = self.executeOptions!
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs!
        }
        if self.outputFolder != nil {
            map["OutputFolder"] = self.outputFolder!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.revision != nil {
            map["Revision"] = self.revision!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DefaultRuntime") {
            self.defaultRuntime = dict["DefaultRuntime"] as! String
        }
        if dict.keys.contains("EntityNames") {
            self.entityNames = dict["EntityNames"] as! [String]
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("ExecuteDirectory") {
            self.executeDirectory = dict["ExecuteDirectory"] as! String
        }
        if dict.keys.contains("ExecuteOptions") {
            self.executeOptions = dict["ExecuteOptions"] as! String
        }
        if dict.keys.contains("Inputs") {
            self.inputs = dict["Inputs"] as! String
        }
        if dict.keys.contains("OutputFolder") {
            self.outputFolder = dict["OutputFolder"] as! String
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Revision") {
            self.revision = dict["Revision"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateSubmissionShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clientToken: String?

    public var defaultRuntime: String?

    public var entityNamesShrink: String?

    public var entityType: String?

    public var executeDirectory: String?

    public var executeOptions: String?

    public var inputs: String?

    public var outputFolder: String?

    public var outputs: String?

    public var revision: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultRuntime != nil {
            map["DefaultRuntime"] = self.defaultRuntime!
        }
        if self.entityNamesShrink != nil {
            map["EntityNames"] = self.entityNamesShrink!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.executeDirectory != nil {
            map["ExecuteDirectory"] = self.executeDirectory!
        }
        if self.executeOptions != nil {
            map["ExecuteOptions"] = self.executeOptions!
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs!
        }
        if self.outputFolder != nil {
            map["OutputFolder"] = self.outputFolder!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.revision != nil {
            map["Revision"] = self.revision!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DefaultRuntime") {
            self.defaultRuntime = dict["DefaultRuntime"] as! String
        }
        if dict.keys.contains("EntityNames") {
            self.entityNamesShrink = dict["EntityNames"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("ExecuteDirectory") {
            self.executeDirectory = dict["ExecuteDirectory"] as! String
        }
        if dict.keys.contains("ExecuteOptions") {
            self.executeOptions = dict["ExecuteOptions"] as! String
        }
        if dict.keys.contains("Inputs") {
            self.inputs = dict["Inputs"] as! String
        }
        if dict.keys.contains("OutputFolder") {
            self.outputFolder = dict["OutputFolder"] as! String
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Revision") {
            self.revision = dict["Revision"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateSubmissionResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var requestId: String?

    public var submissionId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateSubmissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubmissionResponseBody?

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
            var model = CreateSubmissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public class InputsExpression : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int32?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int32
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public class OutputsExpression : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int32?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int32
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public var appName: String?

    public var appRevision: String?

    public var clientToken: String?

    public var description_: String?

    public var inputsExpression: [CreateTemplateRequest.InputsExpression]?

    public var labels: String?

    public var outputsExpression: [CreateTemplateRequest.OutputsExpression]?

    public var revisionTag: String?

    public var rootEntity: String?

    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputsExpression != nil {
            var tmp : [Any] = []
            for k in self.inputsExpression! {
                tmp.append(k.toMap())
            }
            map["InputsExpression"] = tmp
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputsExpression != nil {
            var tmp : [Any] = []
            for k in self.outputsExpression! {
                tmp.append(k.toMap())
            }
            map["OutputsExpression"] = tmp
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.rootEntity != nil {
            map["RootEntity"] = self.rootEntity!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputsExpression") {
            var tmp : [CreateTemplateRequest.InputsExpression] = []
            for v in dict["InputsExpression"] as! [Any] {
                var model = CreateTemplateRequest.InputsExpression()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.inputsExpression = tmp
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("OutputsExpression") {
            var tmp : [CreateTemplateRequest.OutputsExpression] = []
            for v in dict["OutputsExpression"] as! [Any] {
                var model = CreateTemplateRequest.OutputsExpression()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputsExpression = tmp
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("RootEntity") {
            self.rootEntity = dict["RootEntity"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateTemplateShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var appRevision: String?

    public var clientToken: String?

    public var description_: String?

    public var inputsExpressionShrink: String?

    public var labels: String?

    public var outputsExpressionShrink: String?

    public var revisionTag: String?

    public var rootEntity: String?

    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputsExpressionShrink != nil {
            map["InputsExpression"] = self.inputsExpressionShrink!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputsExpressionShrink != nil {
            map["OutputsExpression"] = self.outputsExpressionShrink!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.rootEntity != nil {
            map["RootEntity"] = self.rootEntity!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputsExpression") {
            self.inputsExpressionShrink = dict["InputsExpression"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("OutputsExpression") {
            self.outputsExpressionShrink = dict["OutputsExpression"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("RootEntity") {
            self.rootEntity = dict["RootEntity"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var requestId: String?

    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

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
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var jobLifecycle: Int32?

    public var labels: String?

    public var role: String?

    public var storage: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jobLifecycle != nil {
            map["JobLifecycle"] = self.jobLifecycle!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("JobLifecycle") {
            self.jobLifecycle = dict["JobLifecycle"] as! Int32
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Storage") {
            self.storage = dict["Storage"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appName: String?

    public var revision: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.revision != nil {
            map["Revision"] = self.revision!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Revision") {
            self.revision = dict["Revision"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEntityRequest : Tea.TeaModel {
    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteEntityResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEntityResponseBody?

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
            var model = DeleteEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEntityItemsRequest : Tea.TeaModel {
    public var entityNames: [String]?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityNames != nil {
            map["EntityNames"] = self.entityNames!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityNames") {
            self.entityNames = dict["EntityNames"] as! [String]
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteEntityItemsShrinkRequest : Tea.TeaModel {
    public var entityNamesShrink: String?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityNamesShrink != nil {
            map["EntityNames"] = self.entityNamesShrink!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityNames") {
            self.entityNamesShrink = dict["EntityNames"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteEntityItemsResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEntityItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEntityItemsResponseBody?

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
            var model = DeleteEntityItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRunRequest : Tea.TeaModel {
    public var runId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RunId") {
            self.runId = dict["RunId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteRunResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRunResponseBody?

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
            var model = DeleteRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSubmissionRequest : Tea.TeaModel {
    public var submissionId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteSubmissionResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSubmissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSubmissionResponseBody?

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
            var model = DeleteSubmissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

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
            var model = DeleteTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkspaceRequest : Tea.TeaModel {
    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DeleteWorkspaceResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResponseBody?

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
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadEntityRequest : Tea.TeaModel {
    public var entityNames: [String]?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityNames != nil {
            map["EntityNames"] = self.entityNames!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityNames") {
            self.entityNames = dict["EntityNames"] as! [String]
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DownloadEntityShrinkRequest : Tea.TeaModel {
    public var entityNamesShrink: String?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityNamesShrink != nil {
            map["EntityNames"] = self.entityNamesShrink!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityNames") {
            self.entityNamesShrink = dict["EntityNames"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class DownloadEntityResponseBody : Tea.TeaModel {
    public var entityCSVFile: String?

    public var hostId: String?

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
        if self.entityCSVFile != nil {
            map["EntityCSVFile"] = self.entityCSVFile!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityCSVFile") {
            self.entityCSVFile = dict["EntityCSVFile"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DownloadEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadEntityResponseBody?

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
            var model = DownloadEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppRequest : Tea.TeaModel {
    public var appName: String?

    public var revision: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.revision != nil {
            map["Revision"] = self.revision!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Revision") {
            self.revision = dict["Revision"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetAppResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var content: String?

        public var path: String?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public class Dependencies : Tea.TeaModel {
        public var content: String?

        public var path: String?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public class Inputs : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int64?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int64
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public class Outputs : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int64?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int64
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public class Revisions : Tea.TeaModel {
        public var createTime: String?

        public var revision: String?

        public var revisionComment: String?

        public var revisionTag: String?

        public override init() {
            super.init()
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
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.revisionComment != nil {
                map["RevisionComment"] = self.revisionComment!
            }
            if self.revisionTag != nil {
                map["RevisionTag"] = self.revisionTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Revision") {
                self.revision = dict["Revision"] as! String
            }
            if dict.keys.contains("RevisionComment") {
                self.revisionComment = dict["RevisionComment"] as! String
            }
            if dict.keys.contains("RevisionTag") {
                self.revisionTag = dict["RevisionTag"] as! String
            }
        }
    }
    public var appName: String?

    public var appType: String?

    public var configs: [GetAppResponseBody.Configs]?

    public var createTime: String?

    public var definition: String?

    public var dependencies: [GetAppResponseBody.Dependencies]?

    public var description_: String?

    public var documentation: String?

    public var hostId: String?

    public var inputs: [GetAppResponseBody.Inputs]?

    public var labels: [String: String]?

    public var language: String?

    public var languageVersion: String?

    public var lastModifiedTime: String?

    public var outputs: [GetAppResponseBody.Outputs]?

    public var path: String?

    public var requestId: String?

    public var revision: String?

    public var revisionComment: String?

    public var revisionTag: String?

    public var revisions: [GetAppResponseBody.Revisions]?

    public var scope: String?

    public var source: String?

    public var URL: String?

    public var workflowName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.dependencies != nil {
            var tmp : [Any] = []
            for k in self.dependencies! {
                tmp.append(k.toMap())
            }
            map["Dependencies"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentation != nil {
            map["Documentation"] = self.documentation!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.inputs != nil {
            var tmp : [Any] = []
            for k in self.inputs! {
                tmp.append(k.toMap())
            }
            map["Inputs"] = tmp
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.languageVersion != nil {
            map["LanguageVersion"] = self.languageVersion!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.outputs != nil {
            var tmp : [Any] = []
            for k in self.outputs! {
                tmp.append(k.toMap())
            }
            map["Outputs"] = tmp
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.revision != nil {
            map["Revision"] = self.revision!
        }
        if self.revisionComment != nil {
            map["RevisionComment"] = self.revisionComment!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.revisions != nil {
            var tmp : [Any] = []
            for k in self.revisions! {
                tmp.append(k.toMap())
            }
            map["Revisions"] = tmp
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.URL != nil {
            map["URL"] = self.URL!
        }
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("Configs") {
            var tmp : [GetAppResponseBody.Configs] = []
            for v in dict["Configs"] as! [Any] {
                var model = GetAppResponseBody.Configs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Dependencies") {
            var tmp : [GetAppResponseBody.Dependencies] = []
            for v in dict["Dependencies"] as! [Any] {
                var model = GetAppResponseBody.Dependencies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dependencies = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Documentation") {
            self.documentation = dict["Documentation"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("Inputs") {
            var tmp : [GetAppResponseBody.Inputs] = []
            for v in dict["Inputs"] as! [Any] {
                var model = GetAppResponseBody.Inputs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.inputs = tmp
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LanguageVersion") {
            self.languageVersion = dict["LanguageVersion"] as! String
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Outputs") {
            var tmp : [GetAppResponseBody.Outputs] = []
            for v in dict["Outputs"] as! [Any] {
                var model = GetAppResponseBody.Outputs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputs = tmp
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Revision") {
            self.revision = dict["Revision"] as! String
        }
        if dict.keys.contains("RevisionComment") {
            self.revisionComment = dict["RevisionComment"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Revisions") {
            var tmp : [GetAppResponseBody.Revisions] = []
            for v in dict["Revisions"] as! [Any] {
                var model = GetAppResponseBody.Revisions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.revisions = tmp
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("URL") {
            self.URL = dict["URL"] as! String
        }
        if dict.keys.contains("WorkflowName") {
            self.workflowName = dict["WorkflowName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEntityRequest : Tea.TeaModel {
    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetEntityResponseBody : Tea.TeaModel {
    public var attributes: [String]?

    public var entityType: String?

    public var hostId: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! [String]
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEntityResponseBody?

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
            var model = GetEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGlobalAppRequest : Tea.TeaModel {
    public var appName: String?

    public var appVersion: String?

    public var attributes: [String]?

    public var location: String?

    public var namespaceName: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! [String]
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
    }
}

public class GetGlobalAppShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var appVersion: String?

    public var attributesShrink: String?

    public var location: String?

    public var namespaceName: String?

    public override init() {
        super.init()
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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.attributesShrink != nil {
            map["Attributes"] = self.attributesShrink!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("Attributes") {
            self.attributesShrink = dict["Attributes"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
    }
}

public class GetGlobalAppResponseBody : Tea.TeaModel {
    public class AppDescriptorFiles : Tea.TeaModel {
        public var checksum: String?

        public var content: String?

        public var fileType: String?

        public var path: String?

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
            if self.checksum != nil {
                map["Checksum"] = self.checksum!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Checksum") {
                self.checksum = dict["Checksum"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public class AppVersions : Tea.TeaModel {
        public var appVersion: String?

        public var comment: String?

        public var lastModified: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
        }
    }
    public var appDefaultVersion: String?

    public var appDescription: String?

    public var appDescriptorFiles: [GetGlobalAppResponseBody.AppDescriptorFiles]?

    public var appDescriptorType: String?

    public var appFee: String?

    public var appName: String?

    public var appScope: String?

    public var appType: String?

    public var appVersion: String?

    public var appVersions: [GetGlobalAppResponseBody.AppVersions]?

    public var categories: [String]?

    public var comment: String?

    public var contact: String?

    public var DAG: String?

    public var document: String?

    public var hostId: String?

    public var lastModified: String?

    public var links: [String]?

    public var locations: [String]?

    public var namespaceName: String?

    public var pinned: Bool?

    public var requestId: String?

    public var toolkit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDefaultVersion != nil {
            map["AppDefaultVersion"] = self.appDefaultVersion!
        }
        if self.appDescription != nil {
            map["AppDescription"] = self.appDescription!
        }
        if self.appDescriptorFiles != nil {
            var tmp : [Any] = []
            for k in self.appDescriptorFiles! {
                tmp.append(k.toMap())
            }
            map["AppDescriptorFiles"] = tmp
        }
        if self.appDescriptorType != nil {
            map["AppDescriptorType"] = self.appDescriptorType!
        }
        if self.appFee != nil {
            map["AppFee"] = self.appFee!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appScope != nil {
            map["AppScope"] = self.appScope!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.appVersions != nil {
            var tmp : [Any] = []
            for k in self.appVersions! {
                tmp.append(k.toMap())
            }
            map["AppVersions"] = tmp
        }
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.contact != nil {
            map["Contact"] = self.contact!
        }
        if self.DAG != nil {
            map["DAG"] = self.DAG!
        }
        if self.document != nil {
            map["Document"] = self.document!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.lastModified != nil {
            map["LastModified"] = self.lastModified!
        }
        if self.links != nil {
            map["Links"] = self.links!
        }
        if self.locations != nil {
            map["Locations"] = self.locations!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.pinned != nil {
            map["Pinned"] = self.pinned!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toolkit != nil {
            map["Toolkit"] = self.toolkit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppDefaultVersion") {
            self.appDefaultVersion = dict["AppDefaultVersion"] as! String
        }
        if dict.keys.contains("AppDescription") {
            self.appDescription = dict["AppDescription"] as! String
        }
        if dict.keys.contains("AppDescriptorFiles") {
            var tmp : [GetGlobalAppResponseBody.AppDescriptorFiles] = []
            for v in dict["AppDescriptorFiles"] as! [Any] {
                var model = GetGlobalAppResponseBody.AppDescriptorFiles()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appDescriptorFiles = tmp
        }
        if dict.keys.contains("AppDescriptorType") {
            self.appDescriptorType = dict["AppDescriptorType"] as! String
        }
        if dict.keys.contains("AppFee") {
            self.appFee = dict["AppFee"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppScope") {
            self.appScope = dict["AppScope"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("AppVersions") {
            var tmp : [GetGlobalAppResponseBody.AppVersions] = []
            for v in dict["AppVersions"] as! [Any] {
                var model = GetGlobalAppResponseBody.AppVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appVersions = tmp
        }
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! [String]
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Contact") {
            self.contact = dict["Contact"] as! String
        }
        if dict.keys.contains("DAG") {
            self.DAG = dict["DAG"] as! String
        }
        if dict.keys.contains("Document") {
            self.document = dict["Document"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("LastModified") {
            self.lastModified = dict["LastModified"] as! String
        }
        if dict.keys.contains("Links") {
            self.links = dict["Links"] as! [String]
        }
        if dict.keys.contains("Locations") {
            self.locations = dict["Locations"] as! [String]
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("Pinned") {
            self.pinned = dict["Pinned"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Toolkit") {
            self.toolkit = dict["Toolkit"] as! String
        }
    }
}

public class GetGlobalAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGlobalAppResponseBody?

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
            var model = GetGlobalAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublicDatasetRequest : Tea.TeaModel {
    public var attributes: [String]?

    public var datasetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! [String]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
    }
}

public class GetPublicDatasetShrinkRequest : Tea.TeaModel {
    public var attributesShrink: String?

    public var datasetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributesShrink != nil {
            map["Attributes"] = self.attributesShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            self.attributesShrink = dict["Attributes"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
    }
}

public class GetPublicDatasetResponseBody : Tea.TeaModel {
    public var about: String?

    public var accessRequirements: String?

    public var copyright: String?

    public var datasetDescription: String?

    public var datasetName: String?

    public var hostId: String?

    public var lastModified: String?

    public var locations: [String]?

    public var requestId: String?

    public var tags: [String]?

    public var updateFrequency: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.about != nil {
            map["About"] = self.about!
        }
        if self.accessRequirements != nil {
            map["AccessRequirements"] = self.accessRequirements!
        }
        if self.copyright != nil {
            map["Copyright"] = self.copyright!
        }
        if self.datasetDescription != nil {
            map["DatasetDescription"] = self.datasetDescription!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.lastModified != nil {
            map["LastModified"] = self.lastModified!
        }
        if self.locations != nil {
            map["Locations"] = self.locations!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.updateFrequency != nil {
            map["UpdateFrequency"] = self.updateFrequency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("About") {
            self.about = dict["About"] as! String
        }
        if dict.keys.contains("AccessRequirements") {
            self.accessRequirements = dict["AccessRequirements"] as! String
        }
        if dict.keys.contains("Copyright") {
            self.copyright = dict["Copyright"] as! String
        }
        if dict.keys.contains("DatasetDescription") {
            self.datasetDescription = dict["DatasetDescription"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("LastModified") {
            self.lastModified = dict["LastModified"] as! String
        }
        if dict.keys.contains("Locations") {
            self.locations = dict["Locations"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("UpdateFrequency") {
            self.updateFrequency = dict["UpdateFrequency"] as! String
        }
    }
}

public class GetPublicDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublicDatasetResponseBody?

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
            var model = GetPublicDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublicDatasetEntityRequest : Tea.TeaModel {
    public var datasetName: String?

    public var entityType: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class GetPublicDatasetEntityResponseBody : Tea.TeaModel {
    public var attributes: [String]?

    public var datasetName: String?

    public var entityType: String?

    public var hostId: String?

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
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! [String]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetPublicDatasetEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublicDatasetEntityResponseBody?

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
            var model = GetPublicDatasetEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRunRequest : Tea.TeaModel {
    public var runId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RunId") {
            self.runId = dict["RunId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetRunResponseBody : Tea.TeaModel {
    public class ExecuteOptions : Tea.TeaModel {
        public var callCaching: Bool?

        public var dataLoader: String?

        public var deleteIntermediateResults: Bool?

        public var failureMode: String?

        public var useRelativeOutputPaths: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callCaching != nil {
                map["CallCaching"] = self.callCaching!
            }
            if self.dataLoader != nil {
                map["DataLoader"] = self.dataLoader!
            }
            if self.deleteIntermediateResults != nil {
                map["DeleteIntermediateResults"] = self.deleteIntermediateResults!
            }
            if self.failureMode != nil {
                map["FailureMode"] = self.failureMode!
            }
            if self.useRelativeOutputPaths != nil {
                map["UseRelativeOutputPaths"] = self.useRelativeOutputPaths!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallCaching") {
                self.callCaching = dict["CallCaching"] as! Bool
            }
            if dict.keys.contains("DataLoader") {
                self.dataLoader = dict["DataLoader"] as! String
            }
            if dict.keys.contains("DeleteIntermediateResults") {
                self.deleteIntermediateResults = dict["DeleteIntermediateResults"] as! Bool
            }
            if dict.keys.contains("FailureMode") {
                self.failureMode = dict["FailureMode"] as! String
            }
            if dict.keys.contains("UseRelativeOutputPaths") {
                self.useRelativeOutputPaths = dict["UseRelativeOutputPaths"] as! Bool
            }
        }
    }
    public var appName: String?

    public var appRevision: String?

    public var billingInstanceIds: [String]?

    public var calls: String?

    public var createTime: String?

    public var defaultRuntime: String?

    public var description_: String?

    public var endTime: String?

    public var entityName: String?

    public var entityType: String?

    public var executeDirectory: String?

    public var executeOptions: GetRunResponseBody.ExecuteOptions?

    public var failures: String?

    public var hostId: String?

    public var inputs: String?

    public var labels: [String: String]?

    public var outputFolder: String?

    public var outputs: String?

    public var requestId: String?

    public var runId: String?

    public var runName: String?

    public var source: String?

    public var startTime: String?

    public var status: String?

    public var submissionId: String?

    public var timing: String?

    public var user: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executeOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.billingInstanceIds != nil {
            map["BillingInstanceIds"] = self.billingInstanceIds!
        }
        if self.calls != nil {
            map["Calls"] = self.calls!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.defaultRuntime != nil {
            map["DefaultRuntime"] = self.defaultRuntime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.executeDirectory != nil {
            map["ExecuteDirectory"] = self.executeDirectory!
        }
        if self.executeOptions != nil {
            map["ExecuteOptions"] = self.executeOptions?.toMap()
        }
        if self.failures != nil {
            map["Failures"] = self.failures!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputFolder != nil {
            map["OutputFolder"] = self.outputFolder!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.runName != nil {
            map["RunName"] = self.runName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.timing != nil {
            map["Timing"] = self.timing!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("BillingInstanceIds") {
            self.billingInstanceIds = dict["BillingInstanceIds"] as! [String]
        }
        if dict.keys.contains("Calls") {
            self.calls = dict["Calls"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DefaultRuntime") {
            self.defaultRuntime = dict["DefaultRuntime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EntityName") {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("ExecuteDirectory") {
            self.executeDirectory = dict["ExecuteDirectory"] as! String
        }
        if dict.keys.contains("ExecuteOptions") {
            var model = GetRunResponseBody.ExecuteOptions()
            model.fromMap(dict["ExecuteOptions"] as! [String: Any])
            self.executeOptions = model
        }
        if dict.keys.contains("Failures") {
            self.failures = dict["Failures"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("Inputs") {
            self.inputs = dict["Inputs"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
        }
        if dict.keys.contains("OutputFolder") {
            self.outputFolder = dict["OutputFolder"] as! String
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunId") {
            self.runId = dict["RunId"] as! String
        }
        if dict.keys.contains("RunName") {
            self.runName = dict["RunName"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Timing") {
            self.timing = dict["Timing"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRunResponseBody?

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
            var model = GetRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubmissionRequest : Tea.TeaModel {
    public var submissionId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetSubmissionResponseBody : Tea.TeaModel {
    public class Submission : Tea.TeaModel {
        public class RunStats : Tea.TeaModel {
            public var aborted: Int64?

            public var aborting: Int64?

            public var failed: Int64?

            public var pending: Int64?

            public var running: Int64?

            public var submitted: Int64?

            public var succeeded: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aborted != nil {
                    map["Aborted"] = self.aborted!
                }
                if self.aborting != nil {
                    map["Aborting"] = self.aborting!
                }
                if self.failed != nil {
                    map["Failed"] = self.failed!
                }
                if self.pending != nil {
                    map["Pending"] = self.pending!
                }
                if self.running != nil {
                    map["Running"] = self.running!
                }
                if self.submitted != nil {
                    map["Submitted"] = self.submitted!
                }
                if self.succeeded != nil {
                    map["Succeeded"] = self.succeeded!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Aborted") {
                    self.aborted = dict["Aborted"] as! Int64
                }
                if dict.keys.contains("Aborting") {
                    self.aborting = dict["Aborting"] as! Int64
                }
                if dict.keys.contains("Failed") {
                    self.failed = dict["Failed"] as! Int64
                }
                if dict.keys.contains("Pending") {
                    self.pending = dict["Pending"] as! Int64
                }
                if dict.keys.contains("Running") {
                    self.running = dict["Running"] as! Int64
                }
                if dict.keys.contains("Submitted") {
                    self.submitted = dict["Submitted"] as! Int64
                }
                if dict.keys.contains("Succeeded") {
                    self.succeeded = dict["Succeeded"] as! Int64
                }
            }
        }
        public var createTime: String?

        public var endTime: String?

        public var entityType: String?

        public var runStats: GetSubmissionResponseBody.Submission.RunStats?

        public var startTime: String?

        public var status: String?

        public var submissionId: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runStats?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.runStats != nil {
                map["RunStats"] = self.runStats?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submissionId != nil {
                map["SubmissionId"] = self.submissionId!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("RunStats") {
                var model = GetSubmissionResponseBody.Submission.RunStats()
                model.fromMap(dict["RunStats"] as! [String: Any])
                self.runStats = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubmissionId") {
                self.submissionId = dict["SubmissionId"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var hostId: String?

    public var requestId: String?

    public var submission: GetSubmissionResponseBody.Submission?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.submission?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.submission != nil {
            map["Submission"] = self.submission?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Submission") {
            var model = GetSubmissionResponseBody.Submission()
            model.fromMap(dict["Submission"] as! [String: Any])
            self.submission = model
        }
    }
}

public class GetSubmissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubmissionResponseBody?

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
            var model = GetSubmissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public class InputsExpression : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int64?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int64
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public class OutputsExpression : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int64?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int64
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public var appName: String?

    public var appRevision: String?

    public var createTime: String?

    public var description_: String?

    public var hostId: String?

    public var inputsExpression: [GetTemplateResponseBody.InputsExpression]?

    public var labels: [String: String]?

    public var lastModifiedTime: String?

    public var outputsExpression: [GetTemplateResponseBody.OutputsExpression]?

    public var requestId: String?

    public var revisionTag: String?

    public var rootEntity: String?

    public var source: String?

    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.inputsExpression != nil {
            var tmp : [Any] = []
            for k in self.inputsExpression! {
                tmp.append(k.toMap())
            }
            map["InputsExpression"] = tmp
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.outputsExpression != nil {
            var tmp : [Any] = []
            for k in self.outputsExpression! {
                tmp.append(k.toMap())
            }
            map["OutputsExpression"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.rootEntity != nil {
            map["RootEntity"] = self.rootEntity!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InputsExpression") {
            var tmp : [GetTemplateResponseBody.InputsExpression] = []
            for v in dict["InputsExpression"] as! [Any] {
                var model = GetTemplateResponseBody.InputsExpression()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.inputsExpression = tmp
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("OutputsExpression") {
            var tmp : [GetTemplateResponseBody.OutputsExpression] = []
            for v in dict["OutputsExpression"] as! [Any] {
                var model = GetTemplateResponseBody.OutputsExpression()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputsExpression = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("RootEntity") {
            self.rootEntity = dict["RootEntity"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

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
            var model = GetTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkspaceRequest : Tea.TeaModel {
    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public var bucketName: String?

    public var createTime: String?

    public var description_: String?

    public var hostId: String?

    public var jobLifecycle: Int32?

    public var labels: [String: String]?

    public var lastModifiedTime: String?

    public var location: String?

    public var requestId: String?

    public var role: String?

    public var status: String?

    public var storage: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.jobLifecycle != nil {
            map["JobLifecycle"] = self.jobLifecycle!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("JobLifecycle") {
            self.jobLifecycle = dict["JobLifecycle"] as! Int32
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Storage") {
            self.storage = dict["Storage"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

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
            var model = GetWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportAppRequest : Tea.TeaModel {
    public var appName: String?

    public var source: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ImportAppResponseBody : Tea.TeaModel {
    public var appName: String?

    public var hostId: String?

    public var regionId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ImportAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportAppResponseBody?

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
            var model = ImportAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallGlobalAppRequest : Tea.TeaModel {
    public var appName: String?

    public var installedAppName: String?

    public var namespaceName: String?

    public var source: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.installedAppName != nil {
            map["InstalledAppName"] = self.installedAppName!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("InstalledAppName") {
            self.installedAppName = dict["InstalledAppName"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class InstallGlobalAppResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var installedAppName: String?

    public var regionId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.installedAppName != nil {
            map["InstalledAppName"] = self.installedAppName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstalledAppName") {
            self.installedAppName = dict["InstalledAppName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class InstallGlobalAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallGlobalAppResponseBody?

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
            var model = InstallGlobalAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var appType: String?

    public var isReversed: Bool?

    public var labelSelector: String?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var scope: String?

    public var search: String?

    public var workspace: String?

    public override init() {
        super.init()
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
            map["AppType"] = self.appType!
        }
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.labelSelector != nil {
            map["LabelSelector"] = self.labelSelector!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("LabelSelector") {
            self.labelSelector = dict["LabelSelector"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public var appDefaultVersion: String?

        public var appName: String?

        public var appType: String?

        public var createTime: String?

        public var description_: String?

        public var labels: [String: String]?

        public var language: String?

        public var scope: String?

        public var source: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDefaultVersion != nil {
                map["AppDefaultVersion"] = self.appDefaultVersion!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppDefaultVersion") {
                self.appDefaultVersion = dict["AppDefaultVersion"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppType") {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var apps: [ListAppsResponseBody.Apps]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.apps != nil {
            var tmp : [Any] = []
            for k in self.apps! {
                tmp.append(k.toMap())
            }
            map["Apps"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Apps") {
            var tmp : [ListAppsResponseBody.Apps] = []
            for v in dict["Apps"] as! [Any] {
                var model = ListAppsResponseBody.Apps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.apps = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

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
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthorizedSoftwareRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var location: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
    }
}

public class ListAuthorizedSoftwareResponseBody : Tea.TeaModel {
    public class Softwares : Tea.TeaModel {
        public var helpLink: String?

        public var lastModified: String?

        public var locations: [String]?

        public var promotion: String?

        public var softwareDefaultVersion: String?

        public var softwareDescription: String?

        public var softwareIcon: String?

        public var softwareLicenseFee: Double?

        public var softwareLongName: String?

        public var softwareName: String?

        public var softwareVersions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.helpLink != nil {
                map["HelpLink"] = self.helpLink!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.locations != nil {
                map["Locations"] = self.locations!
            }
            if self.promotion != nil {
                map["Promotion"] = self.promotion!
            }
            if self.softwareDefaultVersion != nil {
                map["SoftwareDefaultVersion"] = self.softwareDefaultVersion!
            }
            if self.softwareDescription != nil {
                map["SoftwareDescription"] = self.softwareDescription!
            }
            if self.softwareIcon != nil {
                map["SoftwareIcon"] = self.softwareIcon!
            }
            if self.softwareLicenseFee != nil {
                map["SoftwareLicenseFee"] = self.softwareLicenseFee!
            }
            if self.softwareLongName != nil {
                map["SoftwareLongName"] = self.softwareLongName!
            }
            if self.softwareName != nil {
                map["SoftwareName"] = self.softwareName!
            }
            if self.softwareVersions != nil {
                map["SoftwareVersions"] = self.softwareVersions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HelpLink") {
                self.helpLink = dict["HelpLink"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("Locations") {
                self.locations = dict["Locations"] as! [String]
            }
            if dict.keys.contains("Promotion") {
                self.promotion = dict["Promotion"] as! String
            }
            if dict.keys.contains("SoftwareDefaultVersion") {
                self.softwareDefaultVersion = dict["SoftwareDefaultVersion"] as! String
            }
            if dict.keys.contains("SoftwareDescription") {
                self.softwareDescription = dict["SoftwareDescription"] as! String
            }
            if dict.keys.contains("SoftwareIcon") {
                self.softwareIcon = dict["SoftwareIcon"] as! String
            }
            if dict.keys.contains("SoftwareLicenseFee") {
                self.softwareLicenseFee = dict["SoftwareLicenseFee"] as! Double
            }
            if dict.keys.contains("SoftwareLongName") {
                self.softwareLongName = dict["SoftwareLongName"] as! String
            }
            if dict.keys.contains("SoftwareName") {
                self.softwareName = dict["SoftwareName"] as! String
            }
            if dict.keys.contains("SoftwareVersions") {
                self.softwareVersions = dict["SoftwareVersions"] as! [String]
            }
        }
    }
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var softwares: [ListAuthorizedSoftwareResponseBody.Softwares]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.softwares != nil {
            var tmp : [Any] = []
            for k in self.softwares! {
                tmp.append(k.toMap())
            }
            map["Softwares"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Softwares") {
            var tmp : [ListAuthorizedSoftwareResponseBody.Softwares] = []
            for v in dict["Softwares"] as! [Any] {
                var model = ListAuthorizedSoftwareResponseBody.Softwares()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.softwares = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAuthorizedSoftwareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizedSoftwareResponseBody?

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
            var model = ListAuthorizedSoftwareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListContainerImagesRequest : Tea.TeaModel {
    public var location: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListContainerImagesResponseBody : Tea.TeaModel {
    public class ContainerImages : Tea.TeaModel {
        public var containerImageDescription: String?

        public var containerImageName: String?

        public var containerImageNamespace: String?

        public var containerImageVersions: [String]?

        public var containerRegistry: String?

        public var lastModified: String?

        public var location: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerImageDescription != nil {
                map["ContainerImageDescription"] = self.containerImageDescription!
            }
            if self.containerImageName != nil {
                map["ContainerImageName"] = self.containerImageName!
            }
            if self.containerImageNamespace != nil {
                map["ContainerImageNamespace"] = self.containerImageNamespace!
            }
            if self.containerImageVersions != nil {
                map["ContainerImageVersions"] = self.containerImageVersions!
            }
            if self.containerRegistry != nil {
                map["ContainerRegistry"] = self.containerRegistry!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerImageDescription") {
                self.containerImageDescription = dict["ContainerImageDescription"] as! String
            }
            if dict.keys.contains("ContainerImageName") {
                self.containerImageName = dict["ContainerImageName"] as! String
            }
            if dict.keys.contains("ContainerImageNamespace") {
                self.containerImageNamespace = dict["ContainerImageNamespace"] as! String
            }
            if dict.keys.contains("ContainerImageVersions") {
                self.containerImageVersions = dict["ContainerImageVersions"] as! [String]
            }
            if dict.keys.contains("ContainerRegistry") {
                self.containerRegistry = dict["ContainerRegistry"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
        }
    }
    public var containerImages: [ListContainerImagesResponseBody.ContainerImages]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.containerImages != nil {
            var tmp : [Any] = []
            for k in self.containerImages! {
                tmp.append(k.toMap())
            }
            map["ContainerImages"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerImages") {
            var tmp : [ListContainerImagesResponseBody.ContainerImages] = []
            for v in dict["ContainerImages"] as! [Any] {
                var model = ListContainerImagesResponseBody.ContainerImages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.containerImages = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListContainerImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContainerImagesResponseBody?

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
            var model = ListContainerImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEntitiesRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ListEntitiesResponseBody : Tea.TeaModel {
    public class Entities : Tea.TeaModel {
        public var entityType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
        }
    }
    public var entities: [ListEntitiesResponseBody.Entities]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.entities != nil {
            var tmp : [Any] = []
            for k in self.entities! {
                tmp.append(k.toMap())
            }
            map["Entities"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Entities") {
            var tmp : [ListEntitiesResponseBody.Entities] = []
            for v in dict["Entities"] as! [Any] {
                var model = ListEntitiesResponseBody.Entities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entities = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEntitiesResponseBody?

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
            var model = ListEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEntityItemsRequest : Tea.TeaModel {
    public var entityType: String?

    public var isReversed: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ListEntityItemsResponseBody : Tea.TeaModel {
    public class EntityItems : Tea.TeaModel {
        public var entityData: [String: String]?

        public var entityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityData != nil {
                map["EntityData"] = self.entityData!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityData") {
                self.entityData = dict["EntityData"] as! [String: String]
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
        }
    }
    public var entityItems: [ListEntityItemsResponseBody.EntityItems]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.entityItems != nil {
            var tmp : [Any] = []
            for k in self.entityItems! {
                tmp.append(k.toMap())
            }
            map["EntityItems"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityItems") {
            var tmp : [ListEntityItemsResponseBody.EntityItems] = []
            for v in dict["EntityItems"] as! [Any] {
                var model = ListEntityItemsResponseBody.EntityItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entityItems = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListEntityItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEntityItemsResponseBody?

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
            var model = ListEntityItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGlobalAppsRequest : Tea.TeaModel {
    public var appScope: String?

    public var category: String?

    public var isReversed: Bool?

    public var location: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public var toolkit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appScope != nil {
            map["AppScope"] = self.appScope!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.toolkit != nil {
            map["Toolkit"] = self.toolkit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppScope") {
            self.appScope = dict["AppScope"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Toolkit") {
            self.toolkit = dict["Toolkit"] as! String
        }
    }
}

public class ListGlobalAppsResponseBody : Tea.TeaModel {
    public class GlobalApps : Tea.TeaModel {
        public var appDefaultVersion: String?

        public var appDescription: String?

        public var appFee: String?

        public var appName: String?

        public var appScope: String?

        public var categories: [String]?

        public var lastModified: String?

        public var locations: [String]?

        public var namespaceName: String?

        public var pinned: Bool?

        public var toolkit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDefaultVersion != nil {
                map["AppDefaultVersion"] = self.appDefaultVersion!
            }
            if self.appDescription != nil {
                map["AppDescription"] = self.appDescription!
            }
            if self.appFee != nil {
                map["AppFee"] = self.appFee!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appScope != nil {
                map["AppScope"] = self.appScope!
            }
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.locations != nil {
                map["Locations"] = self.locations!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.pinned != nil {
                map["Pinned"] = self.pinned!
            }
            if self.toolkit != nil {
                map["Toolkit"] = self.toolkit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppDefaultVersion") {
                self.appDefaultVersion = dict["AppDefaultVersion"] as! String
            }
            if dict.keys.contains("AppDescription") {
                self.appDescription = dict["AppDescription"] as! String
            }
            if dict.keys.contains("AppFee") {
                self.appFee = dict["AppFee"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppScope") {
                self.appScope = dict["AppScope"] as! String
            }
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("Locations") {
                self.locations = dict["Locations"] as! [String]
            }
            if dict.keys.contains("NamespaceName") {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("Pinned") {
                self.pinned = dict["Pinned"] as! Bool
            }
            if dict.keys.contains("Toolkit") {
                self.toolkit = dict["Toolkit"] as! String
            }
        }
    }
    public var globalApps: [ListGlobalAppsResponseBody.GlobalApps]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.globalApps != nil {
            var tmp : [Any] = []
            for k in self.globalApps! {
                tmp.append(k.toMap())
            }
            map["GlobalApps"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GlobalApps") {
            var tmp : [ListGlobalAppsResponseBody.GlobalApps] = []
            for v in dict["GlobalApps"] as! [Any] {
                var model = ListGlobalAppsResponseBody.GlobalApps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.globalApps = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListGlobalAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGlobalAppsResponseBody?

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
            var model = ListGlobalAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicDatasetRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public var tag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
    }
}

public class ListPublicDatasetResponseBody : Tea.TeaModel {
    public class Datasets : Tea.TeaModel {
        public var about: String?

        public var accessRequirements: String?

        public var copyright: String?

        public var datasetDescription: String?

        public var datasetId: String?

        public var datasetName: String?

        public var lastModified: String?

        public var locations: [String]?

        public var tags: [String]?

        public var updateFrequency: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.about != nil {
                map["About"] = self.about!
            }
            if self.accessRequirements != nil {
                map["AccessRequirements"] = self.accessRequirements!
            }
            if self.copyright != nil {
                map["Copyright"] = self.copyright!
            }
            if self.datasetDescription != nil {
                map["DatasetDescription"] = self.datasetDescription!
            }
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.datasetName != nil {
                map["DatasetName"] = self.datasetName!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.locations != nil {
                map["Locations"] = self.locations!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateFrequency != nil {
                map["UpdateFrequency"] = self.updateFrequency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("About") {
                self.about = dict["About"] as! String
            }
            if dict.keys.contains("AccessRequirements") {
                self.accessRequirements = dict["AccessRequirements"] as! String
            }
            if dict.keys.contains("Copyright") {
                self.copyright = dict["Copyright"] as! String
            }
            if dict.keys.contains("DatasetDescription") {
                self.datasetDescription = dict["DatasetDescription"] as! String
            }
            if dict.keys.contains("DatasetId") {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("DatasetName") {
                self.datasetName = dict["DatasetName"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("Locations") {
                self.locations = dict["Locations"] as! [String]
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String]
            }
            if dict.keys.contains("UpdateFrequency") {
                self.updateFrequency = dict["UpdateFrequency"] as! String
            }
        }
    }
    public var datasets: [ListPublicDatasetResponseBody.Datasets]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["Datasets"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Datasets") {
            var tmp : [ListPublicDatasetResponseBody.Datasets] = []
            for v in dict["Datasets"] as! [Any] {
                var model = ListPublicDatasetResponseBody.Datasets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasets = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPublicDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicDatasetResponseBody?

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
            var model = ListPublicDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicDatasetEntitiesRequest : Tea.TeaModel {
    public var datasetName: String?

    public var isReversed: Bool?

    public var location: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
    }
}

public class ListPublicDatasetEntitiesResponseBody : Tea.TeaModel {
    public class Entities : Tea.TeaModel {
        public var entityType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
        }
    }
    public var datasetName: String?

    public var entities: [ListPublicDatasetEntitiesResponseBody.Entities]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.entities != nil {
            var tmp : [Any] = []
            for k in self.entities! {
                tmp.append(k.toMap())
            }
            map["Entities"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Entities") {
            var tmp : [ListPublicDatasetEntitiesResponseBody.Entities] = []
            for v in dict["Entities"] as! [Any] {
                var model = ListPublicDatasetEntitiesResponseBody.Entities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entities = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPublicDatasetEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicDatasetEntitiesResponseBody?

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
            var model = ListPublicDatasetEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicDatasetEntityItemsRequest : Tea.TeaModel {
    public var datasetName: String?

    public var entityType: String?

    public var isReversed: Bool?

    public var location: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
    }
}

public class ListPublicDatasetEntityItemsResponseBody : Tea.TeaModel {
    public class EntityItems : Tea.TeaModel {
        public var entityData: [String: String]?

        public var entityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityData != nil {
                map["EntityData"] = self.entityData!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityData") {
                self.entityData = dict["EntityData"] as! [String: String]
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
        }
    }
    public var datasetName: String?

    public var entityItems: [ListPublicDatasetEntityItemsResponseBody.EntityItems]?

    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.entityItems != nil {
            var tmp : [Any] = []
            for k in self.entityItems! {
                tmp.append(k.toMap())
            }
            map["EntityItems"] = tmp
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("EntityItems") {
            var tmp : [ListPublicDatasetEntityItemsResponseBody.EntityItems] = []
            for v in dict["EntityItems"] as! [Any] {
                var model = ListPublicDatasetEntityItemsResponseBody.EntityItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entityItems = tmp
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPublicDatasetEntityItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicDatasetEntityItemsResponseBody?

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
            var model = ListPublicDatasetEntityItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicDatasetTagsRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
    }
}

public class ListPublicDatasetTagsResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tags: [String]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPublicDatasetTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicDatasetTagsResponseBody?

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
            var model = ListPublicDatasetTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var hostId: String?

    public var regions: [ListRegionsResponseBody.Regions]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("Regions") {
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRunsRequest : Tea.TeaModel {
    public var appName: String?

    public var appRevision: String?

    public var entityName: String?

    public var entityType: String?

    public var getTotal: Bool?

    public var isReversed: Bool?

    public var labelSelector: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public var status: String?

    public var submissionId: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.getTotal != nil {
            map["GetTotal"] = self.getTotal!
        }
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.labelSelector != nil {
            map["LabelSelector"] = self.labelSelector!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("EntityName") {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("GetTotal") {
            self.getTotal = dict["GetTotal"] as! Bool
        }
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("LabelSelector") {
            self.labelSelector = dict["LabelSelector"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ListRunsResponseBody : Tea.TeaModel {
    public class Runs : Tea.TeaModel {
        public class ExecuteOptions : Tea.TeaModel {
            public var callCaching: Bool?

            public var deleteIntermediateResults: Bool?

            public var failureMode: String?

            public var useRelativeOutputPaths: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callCaching != nil {
                    map["CallCaching"] = self.callCaching!
                }
                if self.deleteIntermediateResults != nil {
                    map["DeleteIntermediateResults"] = self.deleteIntermediateResults!
                }
                if self.failureMode != nil {
                    map["FailureMode"] = self.failureMode!
                }
                if self.useRelativeOutputPaths != nil {
                    map["UseRelativeOutputPaths"] = self.useRelativeOutputPaths!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallCaching") {
                    self.callCaching = dict["CallCaching"] as! Bool
                }
                if dict.keys.contains("DeleteIntermediateResults") {
                    self.deleteIntermediateResults = dict["DeleteIntermediateResults"] as! Bool
                }
                if dict.keys.contains("FailureMode") {
                    self.failureMode = dict["FailureMode"] as! String
                }
                if dict.keys.contains("UseRelativeOutputPaths") {
                    self.useRelativeOutputPaths = dict["UseRelativeOutputPaths"] as! Bool
                }
            }
        }
        public var appName: String?

        public var appRevision: String?

        public var createTime: String?

        public var defaultRuntime: String?

        public var endTime: String?

        public var entityName: String?

        public var entityType: String?

        public var executeDirectory: String?

        public var executeOptions: ListRunsResponseBody.Runs.ExecuteOptions?

        public var inputs: String?

        public var labels: [String: String]?

        public var regionId: String?

        public var runId: String?

        public var runName: String?

        public var source: String?

        public var startTime: String?

        public var status: String?

        public var submissionId: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.executeOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appRevision != nil {
                map["AppRevision"] = self.appRevision!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultRuntime != nil {
                map["DefaultRuntime"] = self.defaultRuntime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.executeDirectory != nil {
                map["ExecuteDirectory"] = self.executeDirectory!
            }
            if self.executeOptions != nil {
                map["ExecuteOptions"] = self.executeOptions?.toMap()
            }
            if self.inputs != nil {
                map["Inputs"] = self.inputs!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.runId != nil {
                map["RunId"] = self.runId!
            }
            if self.runName != nil {
                map["RunName"] = self.runName!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submissionId != nil {
                map["SubmissionId"] = self.submissionId!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppRevision") {
                self.appRevision = dict["AppRevision"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultRuntime") {
                self.defaultRuntime = dict["DefaultRuntime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ExecuteDirectory") {
                self.executeDirectory = dict["ExecuteDirectory"] as! String
            }
            if dict.keys.contains("ExecuteOptions") {
                var model = ListRunsResponseBody.Runs.ExecuteOptions()
                model.fromMap(dict["ExecuteOptions"] as! [String: Any])
                self.executeOptions = model
            }
            if dict.keys.contains("Inputs") {
                self.inputs = dict["Inputs"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RunId") {
                self.runId = dict["RunId"] as! String
            }
            if dict.keys.contains("RunName") {
                self.runName = dict["RunName"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubmissionId") {
                self.submissionId = dict["SubmissionId"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var runs: [ListRunsResponseBody.Runs]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.runs != nil {
            var tmp : [Any] = []
            for k in self.runs! {
                tmp.append(k.toMap())
            }
            map["Runs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Runs") {
            var tmp : [ListRunsResponseBody.Runs] = []
            for v in dict["Runs"] as! [Any] {
                var model = ListRunsResponseBody.Runs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.runs = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRunsResponseBody?

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
            var model = ListRunsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSubmissionsRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public var status: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ListSubmissionsResponseBody : Tea.TeaModel {
    public class Submissions : Tea.TeaModel {
        public class RunStats : Tea.TeaModel {
            public var aborted: Int64?

            public var aborting: Int64?

            public var failed: Int64?

            public var pending: Int64?

            public var running: Int64?

            public var submitted: Int64?

            public var succeeded: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aborted != nil {
                    map["Aborted"] = self.aborted!
                }
                if self.aborting != nil {
                    map["Aborting"] = self.aborting!
                }
                if self.failed != nil {
                    map["Failed"] = self.failed!
                }
                if self.pending != nil {
                    map["Pending"] = self.pending!
                }
                if self.running != nil {
                    map["Running"] = self.running!
                }
                if self.submitted != nil {
                    map["Submitted"] = self.submitted!
                }
                if self.succeeded != nil {
                    map["Succeeded"] = self.succeeded!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Aborted") {
                    self.aborted = dict["Aborted"] as! Int64
                }
                if dict.keys.contains("Aborting") {
                    self.aborting = dict["Aborting"] as! Int64
                }
                if dict.keys.contains("Failed") {
                    self.failed = dict["Failed"] as! Int64
                }
                if dict.keys.contains("Pending") {
                    self.pending = dict["Pending"] as! Int64
                }
                if dict.keys.contains("Running") {
                    self.running = dict["Running"] as! Int64
                }
                if dict.keys.contains("Submitted") {
                    self.submitted = dict["Submitted"] as! Int64
                }
                if dict.keys.contains("Succeeded") {
                    self.succeeded = dict["Succeeded"] as! Int64
                }
            }
        }
        public var createTime: String?

        public var endTime: String?

        public var entityType: String?

        public var runStats: ListSubmissionsResponseBody.Submissions.RunStats?

        public var startTime: String?

        public var status: String?

        public var submissionId: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runStats?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.runStats != nil {
                map["RunStats"] = self.runStats?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submissionId != nil {
                map["SubmissionId"] = self.submissionId!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("RunStats") {
                var model = ListSubmissionsResponseBody.Submissions.RunStats()
                model.fromMap(dict["RunStats"] as! [String: Any])
                self.runStats = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubmissionId") {
                self.submissionId = dict["SubmissionId"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var submissions: [ListSubmissionsResponseBody.Submissions]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.submissions != nil {
            var tmp : [Any] = []
            for k in self.submissions! {
                tmp.append(k.toMap())
            }
            map["Submissions"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Submissions") {
            var tmp : [ListSubmissionsResponseBody.Submissions] = []
            for v in dict["Submissions"] as! [Any] {
                var model = ListSubmissionsResponseBody.Submissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.submissions = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSubmissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubmissionsResponseBody?

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
            var model = ListSubmissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var labelSelector: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.labelSelector != nil {
            map["LabelSelector"] = self.labelSelector!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("LabelSelector") {
            self.labelSelector = dict["LabelSelector"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public class InputsExpression : Tea.TeaModel {
            public var help: String?

            public var required_: Bool?

            public var stepOrder: Int64?

            public var taskName: String?

            public var variableName: String?

            public var variableType: String?

            public var variableValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.help != nil {
                    map["Help"] = self.help!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.stepOrder != nil {
                    map["StepOrder"] = self.stepOrder!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.variableName != nil {
                    map["VariableName"] = self.variableName!
                }
                if self.variableType != nil {
                    map["VariableType"] = self.variableType!
                }
                if self.variableValue != nil {
                    map["VariableValue"] = self.variableValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Help") {
                    self.help = dict["Help"] as! String
                }
                if dict.keys.contains("Required") {
                    self.required_ = dict["Required"] as! Bool
                }
                if dict.keys.contains("StepOrder") {
                    self.stepOrder = dict["StepOrder"] as! Int64
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("VariableName") {
                    self.variableName = dict["VariableName"] as! String
                }
                if dict.keys.contains("VariableType") {
                    self.variableType = dict["VariableType"] as! String
                }
                if dict.keys.contains("VariableValue") {
                    self.variableValue = dict["VariableValue"] as! String
                }
            }
        }
        public class OutputsExpression : Tea.TeaModel {
            public var help: String?

            public var required_: Bool?

            public var stepOrder: Int64?

            public var taskName: String?

            public var variableName: String?

            public var variableType: String?

            public var variableValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.help != nil {
                    map["Help"] = self.help!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.stepOrder != nil {
                    map["StepOrder"] = self.stepOrder!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.variableName != nil {
                    map["VariableName"] = self.variableName!
                }
                if self.variableType != nil {
                    map["VariableType"] = self.variableType!
                }
                if self.variableValue != nil {
                    map["VariableValue"] = self.variableValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Help") {
                    self.help = dict["Help"] as! String
                }
                if dict.keys.contains("Required") {
                    self.required_ = dict["Required"] as! Bool
                }
                if dict.keys.contains("StepOrder") {
                    self.stepOrder = dict["StepOrder"] as! Int64
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("VariableName") {
                    self.variableName = dict["VariableName"] as! String
                }
                if dict.keys.contains("VariableType") {
                    self.variableType = dict["VariableType"] as! String
                }
                if dict.keys.contains("VariableValue") {
                    self.variableValue = dict["VariableValue"] as! String
                }
            }
        }
        public var appName: String?

        public var appRevision: String?

        public var createTime: String?

        public var description_: String?

        public var inputsExpression: [ListTemplatesResponseBody.Templates.InputsExpression]?

        public var labels: [String: String]?

        public var lastModifiedTime: String?

        public var outputsExpression: [ListTemplatesResponseBody.Templates.OutputsExpression]?

        public var revisionTag: String?

        public var rootEntity: String?

        public var templateName: String?

        public var workspace: String?

        public override init() {
            super.init()
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
            if self.appRevision != nil {
                map["AppRevision"] = self.appRevision!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.inputsExpression != nil {
                var tmp : [Any] = []
                for k in self.inputsExpression! {
                    tmp.append(k.toMap())
                }
                map["InputsExpression"] = tmp
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.outputsExpression != nil {
                var tmp : [Any] = []
                for k in self.outputsExpression! {
                    tmp.append(k.toMap())
                }
                map["OutputsExpression"] = tmp
            }
            if self.revisionTag != nil {
                map["RevisionTag"] = self.revisionTag!
            }
            if self.rootEntity != nil {
                map["RootEntity"] = self.rootEntity!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppRevision") {
                self.appRevision = dict["AppRevision"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InputsExpression") {
                var tmp : [ListTemplatesResponseBody.Templates.InputsExpression] = []
                for v in dict["InputsExpression"] as! [Any] {
                    var model = ListTemplatesResponseBody.Templates.InputsExpression()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inputsExpression = tmp
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! String
            }
            if dict.keys.contains("OutputsExpression") {
                var tmp : [ListTemplatesResponseBody.Templates.OutputsExpression] = []
                for v in dict["OutputsExpression"] as! [Any] {
                    var model = ListTemplatesResponseBody.Templates.OutputsExpression()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outputsExpression = tmp
            }
            if dict.keys.contains("RevisionTag") {
                self.revisionTag = dict["RevisionTag"] as! String
            }
            if dict.keys.contains("RootEntity") {
                self.rootEntity = dict["RootEntity"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templates: [ListTemplatesResponseBody.Templates]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            var tmp : [ListTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = ListTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

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
            var model = ListTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserActiveRunsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
    }
}

public class ListUserActiveRunsResponseBody : Tea.TeaModel {
    public class Runs : Tea.TeaModel {
        public class ExecuteOptions : Tea.TeaModel {
            public var callCaching: Bool?

            public var deleteIntermediateResults: Bool?

            public var failureMode: String?

            public var useRelativeOutputPaths: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callCaching != nil {
                    map["CallCaching"] = self.callCaching!
                }
                if self.deleteIntermediateResults != nil {
                    map["DeleteIntermediateResults"] = self.deleteIntermediateResults!
                }
                if self.failureMode != nil {
                    map["FailureMode"] = self.failureMode!
                }
                if self.useRelativeOutputPaths != nil {
                    map["UseRelativeOutputPaths"] = self.useRelativeOutputPaths!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallCaching") {
                    self.callCaching = dict["CallCaching"] as! Bool
                }
                if dict.keys.contains("DeleteIntermediateResults") {
                    self.deleteIntermediateResults = dict["DeleteIntermediateResults"] as! Bool
                }
                if dict.keys.contains("FailureMode") {
                    self.failureMode = dict["FailureMode"] as! String
                }
                if dict.keys.contains("UseRelativeOutputPaths") {
                    self.useRelativeOutputPaths = dict["UseRelativeOutputPaths"] as! Bool
                }
            }
        }
        public var appName: String?

        public var appRevision: String?

        public var createTime: String?

        public var defaultRuntime: String?

        public var endTime: String?

        public var entityName: String?

        public var entityType: String?

        public var executeDirectory: String?

        public var executeOptions: ListUserActiveRunsResponseBody.Runs.ExecuteOptions?

        public var inputs: String?

        public var labels: [String: String]?

        public var regionId: String?

        public var runId: String?

        public var runName: String?

        public var source: String?

        public var startTime: String?

        public var status: String?

        public var submissionId: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.executeOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appRevision != nil {
                map["AppRevision"] = self.appRevision!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultRuntime != nil {
                map["DefaultRuntime"] = self.defaultRuntime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.executeDirectory != nil {
                map["ExecuteDirectory"] = self.executeDirectory!
            }
            if self.executeOptions != nil {
                map["ExecuteOptions"] = self.executeOptions?.toMap()
            }
            if self.inputs != nil {
                map["Inputs"] = self.inputs!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.runId != nil {
                map["RunId"] = self.runId!
            }
            if self.runName != nil {
                map["RunName"] = self.runName!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submissionId != nil {
                map["SubmissionId"] = self.submissionId!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppRevision") {
                self.appRevision = dict["AppRevision"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultRuntime") {
                self.defaultRuntime = dict["DefaultRuntime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ExecuteDirectory") {
                self.executeDirectory = dict["ExecuteDirectory"] as! String
            }
            if dict.keys.contains("ExecuteOptions") {
                var model = ListUserActiveRunsResponseBody.Runs.ExecuteOptions()
                model.fromMap(dict["ExecuteOptions"] as! [String: Any])
                self.executeOptions = model
            }
            if dict.keys.contains("Inputs") {
                self.inputs = dict["Inputs"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RunId") {
                self.runId = dict["RunId"] as! String
            }
            if dict.keys.contains("RunName") {
                self.runName = dict["RunName"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubmissionId") {
                self.submissionId = dict["SubmissionId"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var runs: [ListUserActiveRunsResponseBody.Runs]?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.runs != nil {
            var tmp : [Any] = []
            for k in self.runs! {
                tmp.append(k.toMap())
            }
            map["Runs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Runs") {
            var tmp : [ListUserActiveRunsResponseBody.Runs] = []
            for v in dict["Runs"] as! [Any] {
                var model = ListUserActiveRunsResponseBody.Runs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.runs = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListUserActiveRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserActiveRunsResponseBody?

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
            var model = ListUserActiveRunsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var isReversed: Bool?

    public var labelSelector: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var search: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isReversed != nil {
            map["IsReversed"] = self.isReversed!
        }
        if self.labelSelector != nil {
            map["LabelSelector"] = self.labelSelector!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsReversed") {
            self.isReversed = dict["IsReversed"] as! Bool
        }
        if dict.keys.contains("LabelSelector") {
            self.labelSelector = dict["LabelSelector"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public var bucketName: String?

        public var createTime: String?

        public var description_: String?

        public var jobLifecycle: Int32?

        public var labels: [String: String]?

        public var lastModifiedTime: String?

        public var location: String?

        public var role: String?

        public var status: String?

        public var storage: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.jobLifecycle != nil {
                map["JobLifecycle"] = self.jobLifecycle!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storage != nil {
                map["Storage"] = self.storage!
            }
            if self.workspace != nil {
                map["Workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("JobLifecycle") {
                self.jobLifecycle = dict["JobLifecycle"] as! Int32
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: String]
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Storage") {
                self.storage = dict["Storage"] as! String
            }
            if dict.keys.contains("Workspace") {
                self.workspace = dict["Workspace"] as! String
            }
        }
    }
    public var hostId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["Workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Workspaces") {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in dict["Workspaces"] as! [Any] {
                var model = ListWorkspacesResponseBody.Workspaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workspaces = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

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
            var model = ListWorkspacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeSubmissionRequest : Tea.TeaModel {
    public var submissionId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.submissionId != nil {
            map["SubmissionId"] = self.submissionId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubmissionId") {
            self.submissionId = dict["SubmissionId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class ResumeSubmissionResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResumeSubmissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeSubmissionResponseBody?

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
            var model = ResumeSubmissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagAppRequest : Tea.TeaModel {
    public var appName: String?

    public var appRevision: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class TagAppResponseBody : Tea.TeaModel {
    public var appName: String?

    public var appRevision: String?

    public var formerRevision: String?

    public var formerTag: String?

    public var requestId: String?

    public var revisionTag: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.appRevision != nil {
            map["AppRevision"] = self.appRevision!
        }
        if self.formerRevision != nil {
            map["FormerRevision"] = self.formerRevision!
        }
        if self.formerTag != nil {
            map["FormerTag"] = self.formerTag!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.revisionTag != nil {
            map["RevisionTag"] = self.revisionTag!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppRevision") {
            self.appRevision = dict["AppRevision"] as! String
        }
        if dict.keys.contains("FormerRevision") {
            self.formerRevision = dict["FormerRevision"] as! String
        }
        if dict.keys.contains("FormerTag") {
            self.formerTag = dict["FormerTag"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RevisionTag") {
            self.revisionTag = dict["RevisionTag"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class TagAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagAppResponseBody?

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
            var model = TagAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEntityRequest : Tea.TeaModel {
    public class EntityItems : Tea.TeaModel {
        public var entityData: [String: String]?

        public var entityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityData != nil {
                map["EntityData"] = self.entityData!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityData") {
                self.entityData = dict["EntityData"] as! [String: String]
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
        }
    }
    public var entityItems: [UpdateEntityRequest.EntityItems]?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityItems != nil {
            var tmp : [Any] = []
            for k in self.entityItems! {
                tmp.append(k.toMap())
            }
            map["EntityItems"] = tmp
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityItems") {
            var tmp : [UpdateEntityRequest.EntityItems] = []
            for v in dict["EntityItems"] as! [Any] {
                var model = UpdateEntityRequest.EntityItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entityItems = tmp
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateEntityShrinkRequest : Tea.TeaModel {
    public var entityItemsShrink: String?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityItemsShrink != nil {
            map["EntityItems"] = self.entityItemsShrink!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityItems") {
            self.entityItemsShrink = dict["EntityItems"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateEntityResponseBody : Tea.TeaModel {
    public var entityType: String?

    public var hostId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEntityResponseBody?

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
            var model = UpdateEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEntityItemsRequest : Tea.TeaModel {
    public class EntityItems : Tea.TeaModel {
        public var entityData: [String: String]?

        public var entityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityData != nil {
                map["EntityData"] = self.entityData!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityData") {
                self.entityData = dict["EntityData"] as! [String: String]
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
        }
    }
    public var entityItems: [UpdateEntityItemsRequest.EntityItems]?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityItems != nil {
            var tmp : [Any] = []
            for k in self.entityItems! {
                tmp.append(k.toMap())
            }
            map["EntityItems"] = tmp
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityItems") {
            var tmp : [UpdateEntityItemsRequest.EntityItems] = []
            for v in dict["EntityItems"] as! [Any] {
                var model = UpdateEntityItemsRequest.EntityItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entityItems = tmp
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateEntityItemsShrinkRequest : Tea.TeaModel {
    public var entityItemsShrink: String?

    public var entityType: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityItemsShrink != nil {
            map["EntityItems"] = self.entityItemsShrink!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityItems") {
            self.entityItemsShrink = dict["EntityItems"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateEntityItemsResponseBody : Tea.TeaModel {
    public var entityType: String?

    public var hostId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateEntityItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEntityItemsResponseBody?

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
            var model = UpdateEntityItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public class InputsExpression : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int32?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int32
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public class OutputsExpression : Tea.TeaModel {
        public var help: String?

        public var required_: Bool?

        public var stepOrder: Int32?

        public var taskName: String?

        public var variableName: String?

        public var variableType: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.help != nil {
                map["Help"] = self.help!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.variableName != nil {
                map["VariableName"] = self.variableName!
            }
            if self.variableType != nil {
                map["VariableType"] = self.variableType!
            }
            if self.variableValue != nil {
                map["VariableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Help") {
                self.help = dict["Help"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int32
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("VariableName") {
                self.variableName = dict["VariableName"] as! String
            }
            if dict.keys.contains("VariableType") {
                self.variableType = dict["VariableType"] as! String
            }
            if dict.keys.contains("VariableValue") {
                self.variableValue = dict["VariableValue"] as! String
            }
        }
    }
    public var description_: String?

    public var inputsExpression: [UpdateTemplateRequest.InputsExpression]?

    public var labels: String?

    public var outputsExpression: [UpdateTemplateRequest.OutputsExpression]?

    public var rootEntity: String?

    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.inputsExpression != nil {
            var tmp : [Any] = []
            for k in self.inputsExpression! {
                tmp.append(k.toMap())
            }
            map["InputsExpression"] = tmp
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputsExpression != nil {
            var tmp : [Any] = []
            for k in self.outputsExpression! {
                tmp.append(k.toMap())
            }
            map["OutputsExpression"] = tmp
        }
        if self.rootEntity != nil {
            map["RootEntity"] = self.rootEntity!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputsExpression") {
            var tmp : [UpdateTemplateRequest.InputsExpression] = []
            for v in dict["InputsExpression"] as! [Any] {
                var model = UpdateTemplateRequest.InputsExpression()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.inputsExpression = tmp
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("OutputsExpression") {
            var tmp : [UpdateTemplateRequest.OutputsExpression] = []
            for v in dict["OutputsExpression"] as! [Any] {
                var model = UpdateTemplateRequest.OutputsExpression()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputsExpression = tmp
        }
        if dict.keys.contains("RootEntity") {
            self.rootEntity = dict["RootEntity"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateTemplateShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var inputsExpressionShrink: String?

    public var labels: String?

    public var outputsExpressionShrink: String?

    public var rootEntity: String?

    public var templateName: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.inputsExpressionShrink != nil {
            map["InputsExpression"] = self.inputsExpressionShrink!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.outputsExpressionShrink != nil {
            map["OutputsExpression"] = self.outputsExpressionShrink!
        }
        if self.rootEntity != nil {
            map["RootEntity"] = self.rootEntity!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputsExpression") {
            self.inputsExpressionShrink = dict["InputsExpression"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("OutputsExpression") {
            self.outputsExpressionShrink = dict["OutputsExpression"] as! String
        }
        if dict.keys.contains("RootEntity") {
            self.rootEntity = dict["RootEntity"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateTemplateResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTemplateResponseBody?

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
            var model = UpdateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var jobLifecycle: Int32?

    public var labels: String?

    public var role: String?

    public var workspace: String?

    public override init() {
        super.init()
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
        if self.jobLifecycle != nil {
            map["JobLifecycle"] = self.jobLifecycle!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("JobLifecycle") {
            self.jobLifecycle = dict["JobLifecycle"] as! Int32
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UpdateWorkspaceResponseBody : Tea.TeaModel {
    public var hostId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceResponseBody?

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
            var model = UpdateWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadEntityRequest : Tea.TeaModel {
    public var entityCSVFile: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityCSVFile != nil {
            map["EntityCSVFile"] = self.entityCSVFile!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityCSVFile") {
            self.entityCSVFile = dict["EntityCSVFile"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UploadEntityResponseBody : Tea.TeaModel {
    public var entityType: String?

    public var hostId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["Workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("HostId") {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Workspace") {
            self.workspace = dict["Workspace"] as! String
        }
    }
}

public class UploadEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadEntityResponseBody?

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
            var model = UploadEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
