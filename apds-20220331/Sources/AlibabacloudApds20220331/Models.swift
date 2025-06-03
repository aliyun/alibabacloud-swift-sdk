import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateMigrationGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var extra: String?

    public var id: Int32?

    public var name: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["extra"] as? String {
            self.extra = value
        }
        if let value = dict["id"] as? Int32 {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateMigrationGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateMigrationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMigrationGroupResponseBody?

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
            var model = CreateMigrationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMigrationJobRequest : Tea.TeaModel {
    public class MigrationJobList : Tea.TeaModel {
        public var destination: String?

        public var destinationIp: String?

        public var destinationRegion: String?

        public var jobGmtCreate: String?

        public var jobGmtModified: String?

        public var name: String?

        public var originalPercent: String?

        public var originalProgress: String?

        public var originalStatus: String?

        public var outSideId: String?

        public var properties: String?

        public var source: String?

        public var sourceIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destination != nil {
                map["destination"] = self.destination!
            }
            if self.destinationIp != nil {
                map["destinationIp"] = self.destinationIp!
            }
            if self.destinationRegion != nil {
                map["destinationRegion"] = self.destinationRegion!
            }
            if self.jobGmtCreate != nil {
                map["jobGmtCreate"] = self.jobGmtCreate!
            }
            if self.jobGmtModified != nil {
                map["jobGmtModified"] = self.jobGmtModified!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.originalPercent != nil {
                map["originalPercent"] = self.originalPercent!
            }
            if self.originalProgress != nil {
                map["originalProgress"] = self.originalProgress!
            }
            if self.originalStatus != nil {
                map["originalStatus"] = self.originalStatus!
            }
            if self.outSideId != nil {
                map["outSideId"] = self.outSideId!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourceIp != nil {
                map["sourceIp"] = self.sourceIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["destination"] as? String {
                self.destination = value
            }
            if let value = dict["destinationIp"] as? String {
                self.destinationIp = value
            }
            if let value = dict["destinationRegion"] as? String {
                self.destinationRegion = value
            }
            if let value = dict["jobGmtCreate"] as? String {
                self.jobGmtCreate = value
            }
            if let value = dict["jobGmtModified"] as? String {
                self.jobGmtModified = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["originalPercent"] as? String {
                self.originalPercent = value
            }
            if let value = dict["originalProgress"] as? String {
                self.originalProgress = value
            }
            if let value = dict["originalStatus"] as? String {
                self.originalStatus = value
            }
            if let value = dict["outSideId"] as? String {
                self.outSideId = value
            }
            if let value = dict["properties"] as? String {
                self.properties = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourceIp"] as? String {
                self.sourceIp = value
            }
        }
    }
    public var migrationJobList: [CreateMigrationJobRequest.MigrationJobList]?

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
        if self.migrationJobList != nil {
            var tmp : [Any] = []
            for k in self.migrationJobList! {
                tmp.append(k.toMap())
            }
            map["migrationJobList"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["migrationJobList"] as? [Any?] {
            var tmp : [CreateMigrationJobRequest.MigrationJobList] = []
            for v in value {
                if v != nil {
                    var model = CreateMigrationJobRequest.MigrationJobList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.migrationJobList = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateMigrationJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMigrationJobResponseBody?

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
            var model = CreateMigrationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePayOrderCallbackRequest : Tea.TeaModel {
    public var data: String?

    public override init() {
        super.init()
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
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
    }
}

public class CreatePayOrderCallbackResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObj: Any?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
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
        if self.resultObj != nil {
            map["ResultObj"] = self.resultObj!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObj"] as? Any {
            self.resultObj = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreatePayOrderCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePayOrderCallbackResponseBody?

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
            var model = CreatePayOrderCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRefundRequest : Tea.TeaModel {
    public var data: String?

    public override init() {
        super.init()
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
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
    }
}

public class CreateRefundResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
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
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateRefundResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRefundResponseBody?

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
            var model = CreateRefundResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSurveyJobRequest : Tea.TeaModel {
    public var ak: String?

    public var autoConfirm: Bool?

    public var channel: String?

    public var cloudType: String?

    public var name: String?

    public var ossObjectName: String?

    public var projectId: String?

    public var region: [String]?

    public var resourceTypeList: [String]?

    public var sk: String?

    public var tenantId: String?

    public var zone: [String]?

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
        if self.ak != nil {
            map["ak"] = self.ak!
        }
        if self.autoConfirm != nil {
            map["autoConfirm"] = self.autoConfirm!
        }
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.cloudType != nil {
            map["cloudType"] = self.cloudType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ossObjectName != nil {
            map["ossObjectName"] = self.ossObjectName!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.resourceTypeList != nil {
            map["resourceTypeList"] = self.resourceTypeList!
        }
        if self.sk != nil {
            map["sk"] = self.sk!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.zone != nil {
            map["zone"] = self.zone!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ak"] as? String {
            self.ak = value
        }
        if let value = dict["autoConfirm"] as? Bool {
            self.autoConfirm = value
        }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["cloudType"] as? String {
            self.cloudType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["ossObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["region"] as? [String] {
            self.region = value
        }
        if let value = dict["resourceTypeList"] as? [String] {
            self.resourceTypeList = value
        }
        if let value = dict["sk"] as? String {
            self.sk = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["zone"] as? [String] {
            self.zone = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateSurveyJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
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
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class CreateSurveyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSurveyJobResponseBody?

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
            var model = CreateSurveyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSurveyJobOfflineRequest : Tea.TeaModel {
    public var autoConfirm: Bool?

    public var channel: String?

    public var cloudType: String?

    public var fileName: String?

    public var name: String?

    public var objectName: String?

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
        if self.autoConfirm != nil {
            map["autoConfirm"] = self.autoConfirm!
        }
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.cloudType != nil {
            map["cloudType"] = self.cloudType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.objectName != nil {
            map["objectName"] = self.objectName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoConfirm"] as? Bool {
            self.autoConfirm = value
        }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["cloudType"] as? String {
            self.cloudType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["objectName"] as? String {
            self.objectName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateSurveyJobOfflineResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
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
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class CreateSurveyJobOfflineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSurveyJobOfflineResponseBody?

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
            var model = CreateSurveyJobOfflineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMigrationJobRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteMigrationJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DeleteMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMigrationJobResponseBody?

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
            var model = DeleteMigrationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOssFileRequest : Tea.TeaModel {
    public var objectName: String?

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
        if self.objectName != nil {
            map["objectName"] = self.objectName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["objectName"] as? String {
            self.objectName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteOssFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DeleteOssFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOssFileResponseBody?

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
            var model = DeleteOssFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSurveyJobRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteSurveyJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DeleteSurveyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSurveyJobResponseBody?

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
            var model = DeleteSurveyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSurveyResourcesRequest : Tea.TeaModel {
    public var ids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["ids"] = self.ids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ids"] as? String {
            self.ids = value
        }
    }
}

public class DeleteSurveyResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteSurveyResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSurveyResourcesResponseBody?

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
            var model = DeleteSurveyResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMigrationJobConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DescribeMigrationJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMigrationJobConfigResponseBody?

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
            var model = DescribeMigrationJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMigrationJobCountRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var batchTaskGroupId: Int64?

    public var cutoverPlanId: String?

    public var name: String?

    public var outSideId: String?

    public var source: String?

    public var surveyResourceId: Int64?

    public var tagList: [DescribeMigrationJobCountRequest.TagList]?

    public var type: String?

    public var typeList: [String]?

    public var usedType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchTaskGroupId != nil {
            map["batchTaskGroupId"] = self.batchTaskGroupId!
        }
        if self.cutoverPlanId != nil {
            map["cutoverPlanId"] = self.cutoverPlanId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.outSideId != nil {
            map["outSideId"] = self.outSideId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.surveyResourceId != nil {
            map["surveyResourceId"] = self.surveyResourceId!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["tagList"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.typeList != nil {
            map["typeList"] = self.typeList!
        }
        if self.usedType != nil {
            map["usedType"] = self.usedType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchTaskGroupId"] as? Int64 {
            self.batchTaskGroupId = value
        }
        if let value = dict["cutoverPlanId"] as? String {
            self.cutoverPlanId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["outSideId"] as? String {
            self.outSideId = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["surveyResourceId"] as? Int64 {
            self.surveyResourceId = value
        }
        if let value = dict["tagList"] as? [Any?] {
            var tmp : [DescribeMigrationJobCountRequest.TagList] = []
            for v in value {
                if v != nil {
                    var model = DescribeMigrationJobCountRequest.TagList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagList = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["typeList"] as? [String] {
            self.typeList = value
        }
        if let value = dict["usedType"] as? String {
            self.usedType = value
        }
    }
}

public class DescribeMigrationJobCountResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DescribeMigrationJobCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMigrationJobCountResponseBody?

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
            var model = DescribeMigrationJobCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOssStsRequest : Tea.TeaModel {
    public var ak: String?

    public var cloudType: String?

    public var region: String?

    public var regionId: String?

    public var sk: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ak != nil {
            map["ak"] = self.ak!
        }
        if self.cloudType != nil {
            map["cloudType"] = self.cloudType!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.sk != nil {
            map["sk"] = self.sk!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ak"] as? String {
            self.ak = value
        }
        if let value = dict["cloudType"] as? String {
            self.cloudType = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["sk"] as? String {
            self.sk = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class DescribeOssStsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DescribeOssStsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssStsResponseBody?

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
            var model = DescribeOssStsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSummaryByStatusRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSummaryByStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSummaryByStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSummaryByStatusResponseBody?

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
            var model = DescribeSummaryByStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSummaryByStatusAndGroupRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSummaryByStatusAndGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSummaryByStatusAndGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSummaryByStatusAndGroupResponseBody?

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
            var model = DescribeSummaryByStatusAndGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSurveyJobRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSurveyJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DescribeSurveyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSurveyJobResponseBody?

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
            var model = DescribeSurveyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSurveyJobCountRequest : Tea.TeaModel {
    public var channelList: [String]?

    public var cloudTypeList: [String]?

    public var name: String?

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
        if self.channelList != nil {
            map["channelList"] = self.channelList!
        }
        if self.cloudTypeList != nil {
            map["cloudTypeList"] = self.cloudTypeList!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelList"] as? [String] {
            self.channelList = value
        }
        if let value = dict["cloudTypeList"] as? [String] {
            self.cloudTypeList = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSurveyJobCountResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DescribeSurveyJobCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSurveyJobCountResponseBody?

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
            var model = DescribeSurveyJobCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSurveyResourceTagRequest : Tea.TeaModel {
    public var scene: String?

    public var sourceUserIdList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceUserIdList != nil {
            map["sourceUserIdList"] = self.sourceUserIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceUserIdList"] as? [Int64] {
            self.sourceUserIdList = value
        }
    }
}

public class DescribeSurveyResourceTagResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSurveyResourceTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSurveyResourceTagResponseBody?

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
            var model = DescribeSurveyResourceTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSurveyTemplateRequest : Tea.TeaModel {
    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeSurveyTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class DescribeSurveyTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSurveyTemplateResponseBody?

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
            var model = DescribeSurveyTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableMetaInfoRequest : Tea.TeaModel {
    public var sourceDialect: String?

    public var sourceSqlScript: String?

    public var targetDialect: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceSqlScript != nil {
            map["sourceSqlScript"] = self.sourceSqlScript!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceSqlScript"] as? String {
            self.sourceSqlScript = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
    }
}

public class GetTableMetaInfoResponseBody : Tea.TeaModel {
    public var data: [String]?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String] {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTableMetaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableMetaInfoResponseBody?

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
            var model = GetTableMetaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskDetailRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetTaskDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DqlAssociationDDLTaskList : Tea.TeaModel {
            public var ddlTaskId: Int64?

            public var ddlTaskName: String?

            public var dqlTaskId: Int64?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var tenantId: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ddlTaskId != nil {
                    map["ddlTaskId"] = self.ddlTaskId!
                }
                if self.ddlTaskName != nil {
                    map["ddlTaskName"] = self.ddlTaskName!
                }
                if self.dqlTaskId != nil {
                    map["dqlTaskId"] = self.dqlTaskId!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ddlTaskId"] as? Int64 {
                    self.ddlTaskId = value
                }
                if let value = dict["ddlTaskName"] as? String {
                    self.ddlTaskName = value
                }
                if let value = dict["dqlTaskId"] as? Int64 {
                    self.dqlTaskId = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["tenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["uid"] as? String {
                    self.uid = value
                }
            }
        }
        public var ddlFilename: String?

        public var ddlRelateType: Int32?

        public var dqlAssociationDDLTaskList: [GetTaskDetailResponseBody.Data.DqlAssociationDDLTaskList]?

        public var dqlFilename: String?

        public var dqlRelateDdlMessage: String?

        public var dqlRelateTargetDatasourceId: String?

        public var dqlRelateTargetDatasourceName: String?

        public var dqlTestDatasourceId: String?

        public var dqlTestDatasourceName: String?

        public var dqlTestProject: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var lastImportTime: String?

        public var scriptTransformStatus: String?

        public var sourceDatasourceId: String?

        public var sourceDatasourceName: String?

        public var sourceDialect: String?

        public var sourceProject: String?

        public var syntaxErrorCount: Int32?

        public var syntaxPassCount: Int32?

        public var syntaxValidationStatus: String?

        public var targetDatasourceId: String?

        public var targetDatasourceName: String?

        public var targetDialect: String?

        public var targetProject: String?

        public var taskDescription: String?

        public var taskName: String?

        public var taskType: Int32?

        public var tenantId: String?

        public var totalCount: Int32?

        public var transformFailureCount: Int32?

        public var transformSchema: String?

        public var transformSuccessCount: Int32?

        public var uid: String?

        public var uploadedScriptUrl: String?

        public var zipParsingState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ddlFilename != nil {
                map["ddlFilename"] = self.ddlFilename!
            }
            if self.ddlRelateType != nil {
                map["ddlRelateType"] = self.ddlRelateType!
            }
            if self.dqlAssociationDDLTaskList != nil {
                var tmp : [Any] = []
                for k in self.dqlAssociationDDLTaskList! {
                    tmp.append(k.toMap())
                }
                map["dqlAssociationDDLTaskList"] = tmp
            }
            if self.dqlFilename != nil {
                map["dqlFilename"] = self.dqlFilename!
            }
            if self.dqlRelateDdlMessage != nil {
                map["dqlRelateDdlMessage"] = self.dqlRelateDdlMessage!
            }
            if self.dqlRelateTargetDatasourceId != nil {
                map["dqlRelateTargetDatasourceId"] = self.dqlRelateTargetDatasourceId!
            }
            if self.dqlRelateTargetDatasourceName != nil {
                map["dqlRelateTargetDatasourceName"] = self.dqlRelateTargetDatasourceName!
            }
            if self.dqlTestDatasourceId != nil {
                map["dqlTestDatasourceId"] = self.dqlTestDatasourceId!
            }
            if self.dqlTestDatasourceName != nil {
                map["dqlTestDatasourceName"] = self.dqlTestDatasourceName!
            }
            if self.dqlTestProject != nil {
                map["dqlTestProject"] = self.dqlTestProject!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastImportTime != nil {
                map["lastImportTime"] = self.lastImportTime!
            }
            if self.scriptTransformStatus != nil {
                map["scriptTransformStatus"] = self.scriptTransformStatus!
            }
            if self.sourceDatasourceId != nil {
                map["sourceDatasourceId"] = self.sourceDatasourceId!
            }
            if self.sourceDatasourceName != nil {
                map["sourceDatasourceName"] = self.sourceDatasourceName!
            }
            if self.sourceDialect != nil {
                map["sourceDialect"] = self.sourceDialect!
            }
            if self.sourceProject != nil {
                map["sourceProject"] = self.sourceProject!
            }
            if self.syntaxErrorCount != nil {
                map["syntaxErrorCount"] = self.syntaxErrorCount!
            }
            if self.syntaxPassCount != nil {
                map["syntaxPassCount"] = self.syntaxPassCount!
            }
            if self.syntaxValidationStatus != nil {
                map["syntaxValidationStatus"] = self.syntaxValidationStatus!
            }
            if self.targetDatasourceId != nil {
                map["targetDatasourceId"] = self.targetDatasourceId!
            }
            if self.targetDatasourceName != nil {
                map["targetDatasourceName"] = self.targetDatasourceName!
            }
            if self.targetDialect != nil {
                map["targetDialect"] = self.targetDialect!
            }
            if self.targetProject != nil {
                map["targetProject"] = self.targetProject!
            }
            if self.taskDescription != nil {
                map["taskDescription"] = self.taskDescription!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            if self.transformFailureCount != nil {
                map["transformFailureCount"] = self.transformFailureCount!
            }
            if self.transformSchema != nil {
                map["transformSchema"] = self.transformSchema!
            }
            if self.transformSuccessCount != nil {
                map["transformSuccessCount"] = self.transformSuccessCount!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.uploadedScriptUrl != nil {
                map["uploadedScriptUrl"] = self.uploadedScriptUrl!
            }
            if self.zipParsingState != nil {
                map["zipParsingState"] = self.zipParsingState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ddlFilename"] as? String {
                self.ddlFilename = value
            }
            if let value = dict["ddlRelateType"] as? Int32 {
                self.ddlRelateType = value
            }
            if let value = dict["dqlAssociationDDLTaskList"] as? [Any?] {
                var tmp : [GetTaskDetailResponseBody.Data.DqlAssociationDDLTaskList] = []
                for v in value {
                    if v != nil {
                        var model = GetTaskDetailResponseBody.Data.DqlAssociationDDLTaskList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dqlAssociationDDLTaskList = tmp
            }
            if let value = dict["dqlFilename"] as? String {
                self.dqlFilename = value
            }
            if let value = dict["dqlRelateDdlMessage"] as? String {
                self.dqlRelateDdlMessage = value
            }
            if let value = dict["dqlRelateTargetDatasourceId"] as? String {
                self.dqlRelateTargetDatasourceId = value
            }
            if let value = dict["dqlRelateTargetDatasourceName"] as? String {
                self.dqlRelateTargetDatasourceName = value
            }
            if let value = dict["dqlTestDatasourceId"] as? String {
                self.dqlTestDatasourceId = value
            }
            if let value = dict["dqlTestDatasourceName"] as? String {
                self.dqlTestDatasourceName = value
            }
            if let value = dict["dqlTestProject"] as? String {
                self.dqlTestProject = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["lastImportTime"] as? String {
                self.lastImportTime = value
            }
            if let value = dict["scriptTransformStatus"] as? String {
                self.scriptTransformStatus = value
            }
            if let value = dict["sourceDatasourceId"] as? String {
                self.sourceDatasourceId = value
            }
            if let value = dict["sourceDatasourceName"] as? String {
                self.sourceDatasourceName = value
            }
            if let value = dict["sourceDialect"] as? String {
                self.sourceDialect = value
            }
            if let value = dict["sourceProject"] as? String {
                self.sourceProject = value
            }
            if let value = dict["syntaxErrorCount"] as? Int32 {
                self.syntaxErrorCount = value
            }
            if let value = dict["syntaxPassCount"] as? Int32 {
                self.syntaxPassCount = value
            }
            if let value = dict["syntaxValidationStatus"] as? String {
                self.syntaxValidationStatus = value
            }
            if let value = dict["targetDatasourceId"] as? String {
                self.targetDatasourceId = value
            }
            if let value = dict["targetDatasourceName"] as? String {
                self.targetDatasourceName = value
            }
            if let value = dict["targetDialect"] as? String {
                self.targetDialect = value
            }
            if let value = dict["targetProject"] as? String {
                self.targetProject = value
            }
            if let value = dict["taskDescription"] as? String {
                self.taskDescription = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["taskType"] as? Int32 {
                self.taskType = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["totalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["transformFailureCount"] as? Int32 {
                self.transformFailureCount = value
            }
            if let value = dict["transformSchema"] as? String {
                self.transformSchema = value
            }
            if let value = dict["transformSuccessCount"] as? Int32 {
                self.transformSuccessCount = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
            if let value = dict["uploadedScriptUrl"] as? String {
                self.uploadedScriptUrl = value
            }
            if let value = dict["zipParsingState"] as? String {
                self.zipParsingState = value
            }
        }
    }
    public var data: GetTaskDetailResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTaskDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskDetailResponseBody?

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
            var model = GetTaskDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppDownloadHistoryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var bizModuleCode: String?

    public var tenantProxyUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.bizModuleCode != nil {
            map["biz-module-code"] = self.bizModuleCode!
        }
        if self.tenantProxyUid != nil {
            map["tenant-proxy-uid"] = self.tenantProxyUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["biz-module-code"] as? String {
            self.bizModuleCode = value
        }
        if let value = dict["tenant-proxy-uid"] as? String {
            self.tenantProxyUid = value
        }
    }
}

public class ListAppDownloadHistoryRequest : Tea.TeaModel {
    public var appId: String?

    public var platform: String?

    public var startDate: String?

    public var tenantUid: String?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.tenantUid != nil {
            map["tenantUid"] = self.tenantUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["platform"] as? String {
            self.platform = value
        }
        if let value = dict["startDate"] as? String {
            self.startDate = value
        }
        if let value = dict["tenantUid"] as? String {
            self.tenantUid = value
        }
    }
}

public class ListAppDownloadHistoryResponseBody : Tea.TeaModel {
    public var data: Any?

    public var message: String?

    public var success: Bool?

    public var code: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAppDownloadHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppDownloadHistoryResponseBody?

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
            var model = ListAppDownloadHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMigrationJobsRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var batchTaskGroupId: Int64?

    public var cutoverPlanId: String?

    public var name: String?

    public var outSideId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sortCol: String?

    public var sortType: String?

    public var source: String?

    public var surveyResourceId: Int64?

    public var tagList: [ListMigrationJobsRequest.TagList]?

    public var type: String?

    public var typeList: [String]?

    public var usedType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchTaskGroupId != nil {
            map["batchTaskGroupId"] = self.batchTaskGroupId!
        }
        if self.cutoverPlanId != nil {
            map["cutoverPlanId"] = self.cutoverPlanId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.outSideId != nil {
            map["outSideId"] = self.outSideId!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortCol != nil {
            map["sortCol"] = self.sortCol!
        }
        if self.sortType != nil {
            map["sortType"] = self.sortType!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.surveyResourceId != nil {
            map["surveyResourceId"] = self.surveyResourceId!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["tagList"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.typeList != nil {
            map["typeList"] = self.typeList!
        }
        if self.usedType != nil {
            map["usedType"] = self.usedType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchTaskGroupId"] as? Int64 {
            self.batchTaskGroupId = value
        }
        if let value = dict["cutoverPlanId"] as? String {
            self.cutoverPlanId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["outSideId"] as? String {
            self.outSideId = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["sortCol"] as? String {
            self.sortCol = value
        }
        if let value = dict["sortType"] as? String {
            self.sortType = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["surveyResourceId"] as? Int64 {
            self.surveyResourceId = value
        }
        if let value = dict["tagList"] as? [Any?] {
            var tmp : [ListMigrationJobsRequest.TagList] = []
            for v in value {
                if v != nil {
                    var model = ListMigrationJobsRequest.TagList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagList = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["typeList"] as? [String] {
            self.typeList = value
        }
        if let value = dict["usedType"] as? String {
            self.usedType = value
        }
    }
}

public class ListMigrationJobsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class ListMigrationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMigrationJobsResponseBody?

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
            var model = ListMigrationJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyJobDownLoadJobsRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sortCol: String?

    public var sortType: String?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortCol != nil {
            map["sortCol"] = self.sortCol!
        }
        if self.sortType != nil {
            map["sortType"] = self.sortType!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["sortCol"] as? String {
            self.sortCol = value
        }
        if let value = dict["sortType"] as? String {
            self.sortType = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListSurveyJobDownLoadJobsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class ListSurveyJobDownLoadJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSurveyJobDownLoadJobsResponseBody?

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
            var model = ListSurveyJobDownLoadJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyJobsRequest : Tea.TeaModel {
    public var channelList: [String]?

    public var cloudTypeList: [String]?

    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var region: [String]?

    public var surveyRange: String?

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
        if self.channelList != nil {
            map["channelList"] = self.channelList!
        }
        if self.cloudTypeList != nil {
            map["cloudTypeList"] = self.cloudTypeList!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.surveyRange != nil {
            map["surveyRange"] = self.surveyRange!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelList"] as? [String] {
            self.channelList = value
        }
        if let value = dict["cloudTypeList"] as? [String] {
            self.cloudTypeList = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["region"] as? [String] {
            self.region = value
        }
        if let value = dict["surveyRange"] as? String {
            self.surveyRange = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListSurveyJobsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class ListSurveyJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSurveyJobsResponseBody?

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
            var model = ListSurveyJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyResourceByMigrationGroupsRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var ids: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ids != nil {
                map["ids"] = self.ids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ids"] as? [Int32] {
                self.ids = value
            }
        }
    }
    public var body: ListSurveyResourceByMigrationGroupsRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSurveyResourceByMigrationGroupsRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyResourceByMigrationGroupsShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
    }
}

public class ListSurveyResourceByMigrationGroupsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSurveyResourceByMigrationGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSurveyResourceByMigrationGroupsResponseBody?

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
            var model = ListSurveyResourceByMigrationGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyResourceConnectionsRequest : Tea.TeaModel {
    public var ids: [Int32]?

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
        if self.ids != nil {
            map["ids"] = self.ids!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ids"] as? [Int32] {
            self.ids = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListSurveyResourceConnectionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var error: String?

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
            map["Data"] = self.data!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSurveyResourceConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSurveyResourceConnectionsResponseBody?

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
            var model = ListSurveyResourceConnectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyResourceTypesRequest : Tea.TeaModel {
    public var ak: String?

    public var cloudType: String?

    public var region: String?

    public var regionId: String?

    public var sk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ak != nil {
            map["ak"] = self.ak!
        }
        if self.cloudType != nil {
            map["cloudType"] = self.cloudType!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.sk != nil {
            map["sk"] = self.sk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ak"] as? String {
            self.ak = value
        }
        if let value = dict["cloudType"] as? String {
            self.cloudType = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["sk"] as? String {
            self.sk = value
        }
    }
}

public class ListSurveyResourceTypesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class ListSurveyResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSurveyResourceTypesResponseBody?

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
            var model = ListSurveyResourceTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSurveyResourcesDetailRequest : Tea.TeaModel {
    public var ip: String?

    public var jobId: Int64?

    public var projectId: Int64?

    public var resourceType: String?

    public var subProjectId: Int64?

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
        if self.ip != nil {
            map["ip"] = self.ip!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.subProjectId != nil {
            map["subProjectId"] = self.subProjectId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ip"] as? String {
            self.ip = value
        }
        if let value = dict["jobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["projectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["subProjectId"] as? Int64 {
            self.subProjectId = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListSurveyResourcesDetailResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class ListSurveyResourcesDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSurveyResourcesDetailResponseBody?

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
            var model = ListSurveyResourcesDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PopCreateTaskRequest : Tea.TeaModel {
    public var dataTypeMappingFile: Any?

    public var dataTypeOssFileName: String?

    public var dataTypeOssObjectName: String?

    public var dataTypeRealFileName: String?

    public var dqlAssociationDDLTaskList: String?

    public var dqlRelateTargetDatasourceId: String?

    public var dqlTestDatasourceId: String?

    public var dqlTestProject: String?

    public var fileName: String?

    public var globalParams: String?

    public var identifier: String?

    public var ossObjectName: String?

    public var realFileName: String?

    public var relatedDdlContentOssFileName: String?

    public var relatedDdlContentOssObjectName: String?

    public var relatedDdlContentRealFileName: String?

    public var sourceDatasourceId: String?

    public var sourceDialect: String?

    public var sourceProject: String?

    public var tableNameMappingFile: Any?

    public var tableNameOssFileName: String?

    public var tableNameOssObjectName: String?

    public var tableNameRealFileName: String?

    public var targetDatasourceId: String?

    public var targetDialect: String?

    public var targetProject: String?

    public var taskDescription: String?

    public var taskName: String?

    public var taskType: Int32?

    public var tenantId: String?

    public var transformSchema: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataTypeMappingFile != nil {
            map["dataTypeMappingFile"] = self.dataTypeMappingFile!
        }
        if self.dataTypeOssFileName != nil {
            map["dataTypeOssFileName"] = self.dataTypeOssFileName!
        }
        if self.dataTypeOssObjectName != nil {
            map["dataTypeOssObjectName"] = self.dataTypeOssObjectName!
        }
        if self.dataTypeRealFileName != nil {
            map["dataTypeRealFileName"] = self.dataTypeRealFileName!
        }
        if self.dqlAssociationDDLTaskList != nil {
            map["dqlAssociationDDLTaskList"] = self.dqlAssociationDDLTaskList!
        }
        if self.dqlRelateTargetDatasourceId != nil {
            map["dqlRelateTargetDatasourceId"] = self.dqlRelateTargetDatasourceId!
        }
        if self.dqlTestDatasourceId != nil {
            map["dqlTestDatasourceId"] = self.dqlTestDatasourceId!
        }
        if self.dqlTestProject != nil {
            map["dqlTestProject"] = self.dqlTestProject!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.globalParams != nil {
            map["globalParams"] = self.globalParams!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.ossObjectName != nil {
            map["ossObjectName"] = self.ossObjectName!
        }
        if self.realFileName != nil {
            map["realFileName"] = self.realFileName!
        }
        if self.relatedDdlContentOssFileName != nil {
            map["relatedDdlContentOssFileName"] = self.relatedDdlContentOssFileName!
        }
        if self.relatedDdlContentOssObjectName != nil {
            map["relatedDdlContentOssObjectName"] = self.relatedDdlContentOssObjectName!
        }
        if self.relatedDdlContentRealFileName != nil {
            map["relatedDdlContentRealFileName"] = self.relatedDdlContentRealFileName!
        }
        if self.sourceDatasourceId != nil {
            map["sourceDatasourceId"] = self.sourceDatasourceId!
        }
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceProject != nil {
            map["sourceProject"] = self.sourceProject!
        }
        if self.tableNameMappingFile != nil {
            map["tableNameMappingFile"] = self.tableNameMappingFile!
        }
        if self.tableNameOssFileName != nil {
            map["tableNameOssFileName"] = self.tableNameOssFileName!
        }
        if self.tableNameOssObjectName != nil {
            map["tableNameOssObjectName"] = self.tableNameOssObjectName!
        }
        if self.tableNameRealFileName != nil {
            map["tableNameRealFileName"] = self.tableNameRealFileName!
        }
        if self.targetDatasourceId != nil {
            map["targetDatasourceId"] = self.targetDatasourceId!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        if self.targetProject != nil {
            map["targetProject"] = self.targetProject!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.transformSchema != nil {
            map["transformSchema"] = self.transformSchema!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataTypeMappingFile"] as? Any {
            self.dataTypeMappingFile = value
        }
        if let value = dict["dataTypeOssFileName"] as? String {
            self.dataTypeOssFileName = value
        }
        if let value = dict["dataTypeOssObjectName"] as? String {
            self.dataTypeOssObjectName = value
        }
        if let value = dict["dataTypeRealFileName"] as? String {
            self.dataTypeRealFileName = value
        }
        if let value = dict["dqlAssociationDDLTaskList"] as? String {
            self.dqlAssociationDDLTaskList = value
        }
        if let value = dict["dqlRelateTargetDatasourceId"] as? String {
            self.dqlRelateTargetDatasourceId = value
        }
        if let value = dict["dqlTestDatasourceId"] as? String {
            self.dqlTestDatasourceId = value
        }
        if let value = dict["dqlTestProject"] as? String {
            self.dqlTestProject = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["globalParams"] as? String {
            self.globalParams = value
        }
        if let value = dict["identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["ossObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["realFileName"] as? String {
            self.realFileName = value
        }
        if let value = dict["relatedDdlContentOssFileName"] as? String {
            self.relatedDdlContentOssFileName = value
        }
        if let value = dict["relatedDdlContentOssObjectName"] as? String {
            self.relatedDdlContentOssObjectName = value
        }
        if let value = dict["relatedDdlContentRealFileName"] as? String {
            self.relatedDdlContentRealFileName = value
        }
        if let value = dict["sourceDatasourceId"] as? String {
            self.sourceDatasourceId = value
        }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceProject"] as? String {
            self.sourceProject = value
        }
        if let value = dict["tableNameMappingFile"] as? Any {
            self.tableNameMappingFile = value
        }
        if let value = dict["tableNameOssFileName"] as? String {
            self.tableNameOssFileName = value
        }
        if let value = dict["tableNameOssObjectName"] as? String {
            self.tableNameOssObjectName = value
        }
        if let value = dict["tableNameRealFileName"] as? String {
            self.tableNameRealFileName = value
        }
        if let value = dict["targetDatasourceId"] as? String {
            self.targetDatasourceId = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
        if let value = dict["targetProject"] as? String {
            self.targetProject = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["taskType"] as? Int32 {
            self.taskType = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["transformSchema"] as? String {
            self.transformSchema = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class PopCreateTaskResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PopCreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateTaskResponseBody?

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
            var model = PopCreateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PopDownloadTemplateRequest : Tea.TeaModel {
    public var targetDialect: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class PopDownloadTemplateResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PopDownloadTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopDownloadTemplateResponseBody?

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
            var model = PopDownloadTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PopEditTaskRequest : Tea.TeaModel {
    public class Configuration : Tea.TeaModel {
        public var dataTypeMappingFile: Any?

        public var dataTypeOssFileName: String?

        public var dataTypeOssObjectName: String?

        public var dataTypeRealFileName: String?

        public var globalParams: String?

        public var tableNameMappingFile: Any?

        public var tableNameOssFileName: String?

        public var tableNameOssObjectName: String?

        public var tableNameRealFileName: String?

        public var taskId: Int64?

        public var tenantId: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataTypeMappingFile != nil {
                map["dataTypeMappingFile"] = self.dataTypeMappingFile!
            }
            if self.dataTypeOssFileName != nil {
                map["dataTypeOssFileName"] = self.dataTypeOssFileName!
            }
            if self.dataTypeOssObjectName != nil {
                map["dataTypeOssObjectName"] = self.dataTypeOssObjectName!
            }
            if self.dataTypeRealFileName != nil {
                map["dataTypeRealFileName"] = self.dataTypeRealFileName!
            }
            if self.globalParams != nil {
                map["globalParams"] = self.globalParams!
            }
            if self.tableNameMappingFile != nil {
                map["tableNameMappingFile"] = self.tableNameMappingFile!
            }
            if self.tableNameOssFileName != nil {
                map["tableNameOssFileName"] = self.tableNameOssFileName!
            }
            if self.tableNameOssObjectName != nil {
                map["tableNameOssObjectName"] = self.tableNameOssObjectName!
            }
            if self.tableNameRealFileName != nil {
                map["tableNameRealFileName"] = self.tableNameRealFileName!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataTypeMappingFile"] as? Any {
                self.dataTypeMappingFile = value
            }
            if let value = dict["dataTypeOssFileName"] as? String {
                self.dataTypeOssFileName = value
            }
            if let value = dict["dataTypeOssObjectName"] as? String {
                self.dataTypeOssObjectName = value
            }
            if let value = dict["dataTypeRealFileName"] as? String {
                self.dataTypeRealFileName = value
            }
            if let value = dict["globalParams"] as? String {
                self.globalParams = value
            }
            if let value = dict["tableNameMappingFile"] as? Any {
                self.tableNameMappingFile = value
            }
            if let value = dict["tableNameOssFileName"] as? String {
                self.tableNameOssFileName = value
            }
            if let value = dict["tableNameOssObjectName"] as? String {
                self.tableNameOssObjectName = value
            }
            if let value = dict["tableNameRealFileName"] as? String {
                self.tableNameRealFileName = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
        }
    }
    public var configuration: PopEditTaskRequest.Configuration?

    public var dataTypeMappingFile: Any?

    public var dataTypeOssFileName: String?

    public var dataTypeOssObjectName: String?

    public var dataTypeRealFileName: String?

    public var dqlAssociationDDLTaskList: String?

    public var dqlRelateTargetDatasourceId: String?

    public var dqlTestDatasourceId: String?

    public var dqlTestProject: String?

    public var fileName: String?

    public var globalParams: String?

    public var identifier: String?

    public var ossObjectName: String?

    public var realFileName: String?

    public var relatedDdlContentOssFileName: String?

    public var relatedDdlContentOssObjectName: String?

    public var relatedDdlContentRealFileName: String?

    public var sourceDatasourceId: String?

    public var sourceDialect: String?

    public var sourceProject: String?

    public var tableNameMappingFile: Any?

    public var tableNameOssFileName: String?

    public var tableNameOssObjectName: String?

    public var tableNameRealFileName: String?

    public var targetDatasourceId: String?

    public var targetDialect: String?

    public var targetProject: String?

    public var taskDescription: String?

    public var taskId: Int64?

    public var taskName: String?

    public var taskType: Int32?

    public var tenantId: String?

    public var transformSchema: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.dataTypeMappingFile != nil {
            map["dataTypeMappingFile"] = self.dataTypeMappingFile!
        }
        if self.dataTypeOssFileName != nil {
            map["dataTypeOssFileName"] = self.dataTypeOssFileName!
        }
        if self.dataTypeOssObjectName != nil {
            map["dataTypeOssObjectName"] = self.dataTypeOssObjectName!
        }
        if self.dataTypeRealFileName != nil {
            map["dataTypeRealFileName"] = self.dataTypeRealFileName!
        }
        if self.dqlAssociationDDLTaskList != nil {
            map["dqlAssociationDDLTaskList"] = self.dqlAssociationDDLTaskList!
        }
        if self.dqlRelateTargetDatasourceId != nil {
            map["dqlRelateTargetDatasourceId"] = self.dqlRelateTargetDatasourceId!
        }
        if self.dqlTestDatasourceId != nil {
            map["dqlTestDatasourceId"] = self.dqlTestDatasourceId!
        }
        if self.dqlTestProject != nil {
            map["dqlTestProject"] = self.dqlTestProject!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.globalParams != nil {
            map["globalParams"] = self.globalParams!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.ossObjectName != nil {
            map["ossObjectName"] = self.ossObjectName!
        }
        if self.realFileName != nil {
            map["realFileName"] = self.realFileName!
        }
        if self.relatedDdlContentOssFileName != nil {
            map["relatedDdlContentOssFileName"] = self.relatedDdlContentOssFileName!
        }
        if self.relatedDdlContentOssObjectName != nil {
            map["relatedDdlContentOssObjectName"] = self.relatedDdlContentOssObjectName!
        }
        if self.relatedDdlContentRealFileName != nil {
            map["relatedDdlContentRealFileName"] = self.relatedDdlContentRealFileName!
        }
        if self.sourceDatasourceId != nil {
            map["sourceDatasourceId"] = self.sourceDatasourceId!
        }
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceProject != nil {
            map["sourceProject"] = self.sourceProject!
        }
        if self.tableNameMappingFile != nil {
            map["tableNameMappingFile"] = self.tableNameMappingFile!
        }
        if self.tableNameOssFileName != nil {
            map["tableNameOssFileName"] = self.tableNameOssFileName!
        }
        if self.tableNameOssObjectName != nil {
            map["tableNameOssObjectName"] = self.tableNameOssObjectName!
        }
        if self.tableNameRealFileName != nil {
            map["tableNameRealFileName"] = self.tableNameRealFileName!
        }
        if self.targetDatasourceId != nil {
            map["targetDatasourceId"] = self.targetDatasourceId!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        if self.targetProject != nil {
            map["targetProject"] = self.targetProject!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.transformSchema != nil {
            map["transformSchema"] = self.transformSchema!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = PopEditTaskRequest.Configuration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["dataTypeMappingFile"] as? Any {
            self.dataTypeMappingFile = value
        }
        if let value = dict["dataTypeOssFileName"] as? String {
            self.dataTypeOssFileName = value
        }
        if let value = dict["dataTypeOssObjectName"] as? String {
            self.dataTypeOssObjectName = value
        }
        if let value = dict["dataTypeRealFileName"] as? String {
            self.dataTypeRealFileName = value
        }
        if let value = dict["dqlAssociationDDLTaskList"] as? String {
            self.dqlAssociationDDLTaskList = value
        }
        if let value = dict["dqlRelateTargetDatasourceId"] as? String {
            self.dqlRelateTargetDatasourceId = value
        }
        if let value = dict["dqlTestDatasourceId"] as? String {
            self.dqlTestDatasourceId = value
        }
        if let value = dict["dqlTestProject"] as? String {
            self.dqlTestProject = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["globalParams"] as? String {
            self.globalParams = value
        }
        if let value = dict["identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["ossObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["realFileName"] as? String {
            self.realFileName = value
        }
        if let value = dict["relatedDdlContentOssFileName"] as? String {
            self.relatedDdlContentOssFileName = value
        }
        if let value = dict["relatedDdlContentOssObjectName"] as? String {
            self.relatedDdlContentOssObjectName = value
        }
        if let value = dict["relatedDdlContentRealFileName"] as? String {
            self.relatedDdlContentRealFileName = value
        }
        if let value = dict["sourceDatasourceId"] as? String {
            self.sourceDatasourceId = value
        }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceProject"] as? String {
            self.sourceProject = value
        }
        if let value = dict["tableNameMappingFile"] as? Any {
            self.tableNameMappingFile = value
        }
        if let value = dict["tableNameOssFileName"] as? String {
            self.tableNameOssFileName = value
        }
        if let value = dict["tableNameOssObjectName"] as? String {
            self.tableNameOssObjectName = value
        }
        if let value = dict["tableNameRealFileName"] as? String {
            self.tableNameRealFileName = value
        }
        if let value = dict["targetDatasourceId"] as? String {
            self.targetDatasourceId = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
        if let value = dict["targetProject"] as? String {
            self.targetProject = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["taskType"] as? Int32 {
            self.taskType = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["transformSchema"] as? String {
            self.transformSchema = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class PopEditTaskResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PopEditTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopEditTaskResponseBody?

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
            var model = PopEditTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecoverMigrationJobRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class RecoverMigrationJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class RecoverMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverMigrationJobResponseBody?

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
            var model = RecoverMigrationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SingleScriptSyncTranslateRequest : Tea.TeaModel {
    public var sourceDialect: String?

    public var sourceSqlScript: String?

    public var tableMapping: [String]?

    public var targetDialect: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceSqlScript != nil {
            map["sourceSqlScript"] = self.sourceSqlScript!
        }
        if self.tableMapping != nil {
            map["tableMapping"] = self.tableMapping!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceSqlScript"] as? String {
            self.sourceSqlScript = value
        }
        if let value = dict["tableMapping"] as? [String] {
            self.tableMapping = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
    }
}

public class SingleScriptSyncTranslateResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SingleScriptSyncTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleScriptSyncTranslateResponseBody?

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
            var model = SingleScriptSyncTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopSyncMigrationJobRequest : Tea.TeaModel {
    public var jobType: String?

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
        if self.jobType != nil {
            map["jobType"] = self.jobType!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobType"] as? String {
            self.jobType = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopSyncMigrationJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class StopSyncMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSyncMigrationJobResponseBody?

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
            var model = StopSyncMigrationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncMigrationJobRequest : Tea.TeaModel {
    public var jobType: String?

    public var operationType: String?

    public var regionId: String?

    public var regions: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobType != nil {
            map["jobType"] = self.jobType!
        }
        if self.operationType != nil {
            map["operationType"] = self.operationType!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.regions != nil {
            map["regions"] = self.regions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobType"] as? String {
            self.jobType = value
        }
        if let value = dict["operationType"] as? String {
            self.operationType = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["regions"] as? String {
            self.regions = value
        }
    }
}

public class SyncMigrationJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var success: Bool?

    public var error: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.error != nil {
            map["error"] = self.error!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["error"] as? String {
            self.error = value
        }
    }
}

public class SyncMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncMigrationJobResponseBody?

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
            var model = SyncMigrationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePushAppHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var tenantProxyUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.tenantProxyUid != nil {
            map["tenant-proxy-uid"] = self.tenantProxyUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["tenant-proxy-uid"] as? String {
            self.tenantProxyUid = value
        }
    }
}

public class UpdatePushAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var downloadLink: String?

    public override init() {
        super.init()
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
        if self.downloadLink != nil {
            map["DownloadLink"] = self.downloadLink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? Int64 {
            self.appId = value
        }
        if let value = dict["DownloadLink"] as? String {
            self.downloadLink = value
        }
    }
}

public class UpdatePushAppResponseBody : Tea.TeaModel {
    public var isDebugEnable: Bool?

    public var requestId: String?

    public var resultObj: Any?

    public var success: Bool?

    public var tipMsg: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isDebugEnable != nil {
            map["IsDebugEnable"] = self.isDebugEnable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultObj != nil {
            map["ResultObj"] = self.resultObj!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tipMsg != nil {
            map["TipMsg"] = self.tipMsg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsDebugEnable"] as? Bool {
            self.isDebugEnable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObj"] as? Any {
            self.resultObj = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TipMsg"] as? String {
            self.tipMsg = value
        }
    }
}

public class UpdatePushAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePushAppResponseBody?

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
            var model = UpdatePushAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
