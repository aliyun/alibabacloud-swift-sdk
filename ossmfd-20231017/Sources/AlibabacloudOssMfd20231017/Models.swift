import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckMfdServiceOpenResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckMfdServiceOpenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMfdServiceOpenResponseBody?

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
            var model = CheckMfdServiceOpenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOssBucketScanTaskRequest : Tea.TeaModel {
    public var allKeyPrefix: String?

    public var bucketNameList: [String]?

    public var decompressMaxFileCount: Int32?

    public var decompressMaxLayer: Int32?

    public var decryptionList: [String]?

    public var excludeKeySuffixList: [String]?

    public var keyPrefixList: [String]?

    public var keySuffixList: [String]?

    public var lastModifiedStartTime: Int64?

    public var scanMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allKeyPrefix != nil {
            map["AllKeyPrefix"] = self.allKeyPrefix!
        }
        if self.bucketNameList != nil {
            map["BucketNameList"] = self.bucketNameList!
        }
        if self.decompressMaxFileCount != nil {
            map["DecompressMaxFileCount"] = self.decompressMaxFileCount!
        }
        if self.decompressMaxLayer != nil {
            map["DecompressMaxLayer"] = self.decompressMaxLayer!
        }
        if self.decryptionList != nil {
            map["DecryptionList"] = self.decryptionList!
        }
        if self.excludeKeySuffixList != nil {
            map["ExcludeKeySuffixList"] = self.excludeKeySuffixList!
        }
        if self.keyPrefixList != nil {
            map["KeyPrefixList"] = self.keyPrefixList!
        }
        if self.keySuffixList != nil {
            map["KeySuffixList"] = self.keySuffixList!
        }
        if self.lastModifiedStartTime != nil {
            map["LastModifiedStartTime"] = self.lastModifiedStartTime!
        }
        if self.scanMode != nil {
            map["ScanMode"] = self.scanMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllKeyPrefix"] as? String {
            self.allKeyPrefix = value
        }
        if let value = dict["BucketNameList"] as? [String] {
            self.bucketNameList = value
        }
        if let value = dict["DecompressMaxFileCount"] as? Int32 {
            self.decompressMaxFileCount = value
        }
        if let value = dict["DecompressMaxLayer"] as? Int32 {
            self.decompressMaxLayer = value
        }
        if let value = dict["DecryptionList"] as? [String] {
            self.decryptionList = value
        }
        if let value = dict["ExcludeKeySuffixList"] as? [String] {
            self.excludeKeySuffixList = value
        }
        if let value = dict["KeyPrefixList"] as? [String] {
            self.keyPrefixList = value
        }
        if let value = dict["KeySuffixList"] as? [String] {
            self.keySuffixList = value
        }
        if let value = dict["LastModifiedStartTime"] as? Int64 {
            self.lastModifiedStartTime = value
        }
        if let value = dict["ScanMode"] as? Int32 {
            self.scanMode = value
        }
    }
}

public class CreateOssBucketScanTaskResponseBody : Tea.TeaModel {
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

public class CreateOssBucketScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOssBucketScanTaskResponseBody?

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
            var model = CreateOssBucketScanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOssScanConfigRequest : Tea.TeaModel {
    public var allKeyPrefix: String?

    public var bucketName: String?

    public var decompressMaxFileCount: Int32?

    public var decompressMaxLayer: Int32?

    public var decryptionList: [String]?

    public var enable: Int32?

    public var endTime: String?

    public var keyPrefixList: [String]?

    public var keySuffixList: [String]?

    public var lastModifiedStartTime: Int64?

    public var name: String?

    public var realTimeIncr: Bool?

    public var scanDayList: [Int32]?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allKeyPrefix != nil {
            map["AllKeyPrefix"] = self.allKeyPrefix!
        }
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.decompressMaxFileCount != nil {
            map["DecompressMaxFileCount"] = self.decompressMaxFileCount!
        }
        if self.decompressMaxLayer != nil {
            map["DecompressMaxLayer"] = self.decompressMaxLayer!
        }
        if self.decryptionList != nil {
            map["DecryptionList"] = self.decryptionList!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyPrefixList != nil {
            map["KeyPrefixList"] = self.keyPrefixList!
        }
        if self.keySuffixList != nil {
            map["KeySuffixList"] = self.keySuffixList!
        }
        if self.lastModifiedStartTime != nil {
            map["LastModifiedStartTime"] = self.lastModifiedStartTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.realTimeIncr != nil {
            map["RealTimeIncr"] = self.realTimeIncr!
        }
        if self.scanDayList != nil {
            map["ScanDayList"] = self.scanDayList!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllKeyPrefix"] as? String {
            self.allKeyPrefix = value
        }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["DecompressMaxFileCount"] as? Int32 {
            self.decompressMaxFileCount = value
        }
        if let value = dict["DecompressMaxLayer"] as? Int32 {
            self.decompressMaxLayer = value
        }
        if let value = dict["DecryptionList"] as? [String] {
            self.decryptionList = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["KeyPrefixList"] as? [String] {
            self.keyPrefixList = value
        }
        if let value = dict["KeySuffixList"] as? [String] {
            self.keySuffixList = value
        }
        if let value = dict["LastModifiedStartTime"] as? Int64 {
            self.lastModifiedStartTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RealTimeIncr"] as? Bool {
            self.realTimeIncr = value
        }
        if let value = dict["ScanDayList"] as? [Int32] {
            self.scanDayList = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class CreateOssScanConfigResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOssScanConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOssScanConfigResponseBody?

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
            var model = CreateOssScanConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeExportInfoRequest : Tea.TeaModel {
    public var exportId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportId != nil {
            map["ExportId"] = self.exportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportId"] as? Int64 {
            self.exportId = value
        }
    }
}

public class DescribeExportInfoResponseBody : Tea.TeaModel {
    public var currentCount: Int32?

    public var exportStatus: String?

    public var fileName: String?

    public var id: Int64?

    public var link: String?

    public var message: String?

    public var progress: Int32?

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
        if self.currentCount != nil {
            map["CurrentCount"] = self.currentCount!
        }
        if self.exportStatus != nil {
            map["ExportStatus"] = self.exportStatus!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.link != nil {
            map["Link"] = self.link!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
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
        if let value = dict["CurrentCount"] as? Int32 {
            self.currentCount = value
        }
        if let value = dict["ExportStatus"] as? String {
            self.exportStatus = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Link"] as? String {
            self.link = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeExportInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExportInfoResponseBody?

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
            var model = DescribeExportInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceLinkedRoleStatusRequest : Tea.TeaModel {
    public var serviceLinkedRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceLinkedRole != nil {
            map["ServiceLinkedRole"] = self.serviceLinkedRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceLinkedRole"] as? String {
            self.serviceLinkedRole = value
        }
    }
}

public class DescribeServiceLinkedRoleStatusResponseBody : Tea.TeaModel {
    public class RoleStatus : Tea.TeaModel {
        public var status: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? Bool {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var roleStatus: DescribeServiceLinkedRoleStatusResponseBody.RoleStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleStatus != nil {
            map["RoleStatus"] = self.roleStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleStatus"] as? [String: Any?] {
            var model = DescribeServiceLinkedRoleStatusResponseBody.RoleStatus()
            model.fromMap(value)
            self.roleStatus = model
        }
    }
}

public class DescribeServiceLinkedRoleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceLinkedRoleStatusResponseBody?

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
            var model = DescribeServiceLinkedRoleStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportRecordRequest : Tea.TeaModel {
    public var exportType: String?

    public var lang: String?

    public var params: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportType"] as? String {
            self.exportType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
    }
}

public class ExportRecordResponseBody : Tea.TeaModel {
    public var fileName: String?

    public var id: Int64?

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
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportRecordResponseBody?

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
            var model = ExportRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFileDetectReportRequest : Tea.TeaModel {
    public var eventId: Int64?

    public var field: String?

    public var fileHash: String?

    public var lang: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.fileHash != nil {
            map["FileHash"] = self.fileHash!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? Int64 {
            self.eventId = value
        }
        if let value = dict["Field"] as? String {
            self.field = value
        }
        if let value = dict["FileHash"] as? String {
            self.fileHash = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class GetFileDetectReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basic: String?

        public var fileHash: String?

        public var filename: String?

        public var hasData: Bool?

        public var intelligences: String?

        public var sandbox: String?

        public var showTab: Bool?

        public var threatLevel: Int64?

        public var threatTypes: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basic != nil {
                map["Basic"] = self.basic!
            }
            if self.fileHash != nil {
                map["FileHash"] = self.fileHash!
            }
            if self.filename != nil {
                map["Filename"] = self.filename!
            }
            if self.hasData != nil {
                map["HasData"] = self.hasData!
            }
            if self.intelligences != nil {
                map["Intelligences"] = self.intelligences!
            }
            if self.sandbox != nil {
                map["Sandbox"] = self.sandbox!
            }
            if self.showTab != nil {
                map["ShowTab"] = self.showTab!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            if self.threatTypes != nil {
                map["ThreatTypes"] = self.threatTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Basic"] as? String {
                self.basic = value
            }
            if let value = dict["FileHash"] as? String {
                self.fileHash = value
            }
            if let value = dict["Filename"] as? String {
                self.filename = value
            }
            if let value = dict["HasData"] as? Bool {
                self.hasData = value
            }
            if let value = dict["Intelligences"] as? String {
                self.intelligences = value
            }
            if let value = dict["Sandbox"] as? String {
                self.sandbox = value
            }
            if let value = dict["ShowTab"] as? Bool {
                self.showTab = value
            }
            if let value = dict["ThreatLevel"] as? Int64 {
                self.threatLevel = value
            }
            if let value = dict["ThreatTypes"] as? String {
                self.threatTypes = value
            }
        }
    }
    public var code: String?

    public var data: GetFileDetectReportResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFileDetectReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class GetFileDetectReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileDetectReportResponseBody?

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
            var model = GetFileDetectReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssBucketScanStatisticRequest : Tea.TeaModel {
    public var bucketNameList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketNameList != nil {
            map["BucketNameList"] = self.bucketNameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketNameList"] as? [String] {
            self.bucketNameList = value
        }
    }
}

public class GetOssBucketScanStatisticResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireTime: Int64?

        public var highRisk: Int64?

        public var lowRisk: Int64?

        public var mediumRisk: Int64?

        public var noScanBucket: Int32?

        public var remainAuth: Int32?

        public var riskBucket: Int32?

        public var scanObject: Int64?

        public var totalBucket: Int32?

        public var totalObject: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.highRisk != nil {
                map["HighRisk"] = self.highRisk!
            }
            if self.lowRisk != nil {
                map["LowRisk"] = self.lowRisk!
            }
            if self.mediumRisk != nil {
                map["MediumRisk"] = self.mediumRisk!
            }
            if self.noScanBucket != nil {
                map["NoScanBucket"] = self.noScanBucket!
            }
            if self.remainAuth != nil {
                map["RemainAuth"] = self.remainAuth!
            }
            if self.riskBucket != nil {
                map["RiskBucket"] = self.riskBucket!
            }
            if self.scanObject != nil {
                map["ScanObject"] = self.scanObject!
            }
            if self.totalBucket != nil {
                map["TotalBucket"] = self.totalBucket!
            }
            if self.totalObject != nil {
                map["TotalObject"] = self.totalObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["HighRisk"] as? Int64 {
                self.highRisk = value
            }
            if let value = dict["LowRisk"] as? Int64 {
                self.lowRisk = value
            }
            if let value = dict["MediumRisk"] as? Int64 {
                self.mediumRisk = value
            }
            if let value = dict["NoScanBucket"] as? Int32 {
                self.noScanBucket = value
            }
            if let value = dict["RemainAuth"] as? Int32 {
                self.remainAuth = value
            }
            if let value = dict["RiskBucket"] as? Int32 {
                self.riskBucket = value
            }
            if let value = dict["ScanObject"] as? Int64 {
                self.scanObject = value
            }
            if let value = dict["TotalBucket"] as? Int32 {
                self.totalBucket = value
            }
            if let value = dict["TotalObject"] as? Int64 {
                self.totalObject = value
            }
        }
    }
    public var data: GetOssBucketScanStatisticResponseBody.Data?

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
            var model = GetOssBucketScanStatisticResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOssBucketScanStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssBucketScanStatisticResponseBody?

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
            var model = GetOssBucketScanStatisticResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssScanConfigRequest : Tea.TeaModel {
    public var bucketName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
    }
}

public class GetOssScanConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allKeyPrefix: Bool?

        public var bucketCount: Int32?

        public var bucketName: String?

        public var decompressMaxFileCount: Int32?

        public var decompressMaxLayer: Int32?

        public var decryptionList: [String]?

        public var enable: Int32?

        public var endTime: String?

        public var id: String?

        public var keyPrefixList: [String]?

        public var keySuffixList: [String]?

        public var lastModifiedStartTime: Int64?

        public var lastUpdateTime: Int64?

        public var name: String?

        public var realTimeIncr: Bool?

        public var scanDayList: [Int32]?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allKeyPrefix != nil {
                map["AllKeyPrefix"] = self.allKeyPrefix!
            }
            if self.bucketCount != nil {
                map["BucketCount"] = self.bucketCount!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.decompressMaxFileCount != nil {
                map["DecompressMaxFileCount"] = self.decompressMaxFileCount!
            }
            if self.decompressMaxLayer != nil {
                map["DecompressMaxLayer"] = self.decompressMaxLayer!
            }
            if self.decryptionList != nil {
                map["DecryptionList"] = self.decryptionList!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyPrefixList != nil {
                map["KeyPrefixList"] = self.keyPrefixList!
            }
            if self.keySuffixList != nil {
                map["KeySuffixList"] = self.keySuffixList!
            }
            if self.lastModifiedStartTime != nil {
                map["LastModifiedStartTime"] = self.lastModifiedStartTime!
            }
            if self.lastUpdateTime != nil {
                map["LastUpdateTime"] = self.lastUpdateTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.realTimeIncr != nil {
                map["RealTimeIncr"] = self.realTimeIncr!
            }
            if self.scanDayList != nil {
                map["ScanDayList"] = self.scanDayList!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllKeyPrefix"] as? Bool {
                self.allKeyPrefix = value
            }
            if let value = dict["BucketCount"] as? Int32 {
                self.bucketCount = value
            }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["DecompressMaxFileCount"] as? Int32 {
                self.decompressMaxFileCount = value
            }
            if let value = dict["DecompressMaxLayer"] as? Int32 {
                self.decompressMaxLayer = value
            }
            if let value = dict["DecryptionList"] as? [String] {
                self.decryptionList = value
            }
            if let value = dict["Enable"] as? Int32 {
                self.enable = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyPrefixList"] as? [String] {
                self.keyPrefixList = value
            }
            if let value = dict["KeySuffixList"] as? [String] {
                self.keySuffixList = value
            }
            if let value = dict["LastModifiedStartTime"] as? Int64 {
                self.lastModifiedStartTime = value
            }
            if let value = dict["LastUpdateTime"] as? Int64 {
                self.lastUpdateTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RealTimeIncr"] as? Bool {
                self.realTimeIncr = value
            }
            if let value = dict["ScanDayList"] as? [Int32] {
                self.scanDayList = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var data: GetOssScanConfigResponseBody.Data?

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
            var model = GetOssScanConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOssScanConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssScanConfigResponseBody?

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
            var model = GetOssScanConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListObjectScanEventRequest : Tea.TeaModel {
    public var batchType: String?

    public var bucketName: String?

    public var currentPage: Int32?

    public var eventId: Int64?

    public var eventName: String?

    public var lang: String?

    public var md5: String?

    public var ossKey: String?

    public var pageSize: Int32?

    public var parentEventId: Int64?

    public var riskLevel: String?

    public var source: String?

    public var status: Int32?

    public var timeEnd: Int64?

    public var timeStart: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchType != nil {
            map["BatchType"] = self.batchType!
        }
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.md5 != nil {
            map["Md5"] = self.md5!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentEventId != nil {
            map["ParentEventId"] = self.parentEventId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeEnd != nil {
            map["TimeEnd"] = self.timeEnd!
        }
        if self.timeStart != nil {
            map["TimeStart"] = self.timeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchType"] as? String {
            self.batchType = value
        }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EventId"] as? Int64 {
            self.eventId = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Md5"] as? String {
            self.md5 = value
        }
        if let value = dict["OssKey"] as? String {
            self.ossKey = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentEventId"] as? Int64 {
            self.parentEventId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TimeEnd"] as? Int64 {
            self.timeEnd = value
        }
        if let value = dict["TimeStart"] as? Int64 {
            self.timeStart = value
        }
    }
}

public class ListObjectScanEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var name: String?

            public var nameDisplay: String?

            public var type: String?

            public var value: String?

            public var valueDisplay: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nameDisplay != nil {
                    map["NameDisplay"] = self.nameDisplay!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueDisplay != nil {
                    map["ValueDisplay"] = self.valueDisplay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NameDisplay"] as? String {
                    self.nameDisplay = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueDisplay"] as? String {
                    self.valueDisplay = value
                }
            }
        }
        public var bucketName: String?

        public var details: [ListObjectScanEventResponseBody.Data.Details]?

        public var displaySandboxResult: String?

        public var errorMsg: String?

        public var eventId: Int64?

        public var eventName: String?

        public var filePath: String?

        public var firstTime: Int64?

        public var hasSubEvent: Bool?

        public var lastTime: Int64?

        public var md5: String?

        public var operateResult: String?

        public var ossKey: String?

        public var remark: String?

        public var riskLevel: String?

        public var sha1: String?

        public var sha256: String?

        public var source: String?

        public var status: Int32?

        public override init() {
            super.init()
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
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.displaySandboxResult != nil {
                map["DisplaySandboxResult"] = self.displaySandboxResult!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.firstTime != nil {
                map["FirstTime"] = self.firstTime!
            }
            if self.hasSubEvent != nil {
                map["HasSubEvent"] = self.hasSubEvent!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.operateResult != nil {
                map["OperateResult"] = self.operateResult!
            }
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.sha1 != nil {
                map["Sha1"] = self.sha1!
            }
            if self.sha256 != nil {
                map["Sha256"] = self.sha256!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["Details"] as? [Any?] {
                var tmp : [ListObjectScanEventResponseBody.Data.Details] = []
                for v in value {
                    if v != nil {
                        var model = ListObjectScanEventResponseBody.Data.Details()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.details = tmp
            }
            if let value = dict["DisplaySandboxResult"] as? String {
                self.displaySandboxResult = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["EventId"] as? Int64 {
                self.eventId = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["FirstTime"] as? Int64 {
                self.firstTime = value
            }
            if let value = dict["HasSubEvent"] as? Bool {
                self.hasSubEvent = value
            }
            if let value = dict["LastTime"] as? Int64 {
                self.lastTime = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["OperateResult"] as? String {
                self.operateResult = value
            }
            if let value = dict["OssKey"] as? String {
                self.ossKey = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["Sha1"] as? String {
                self.sha1 = value
            }
            if let value = dict["Sha256"] as? String {
                self.sha256 = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
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
    public var data: [ListObjectScanEventResponseBody.Data]?

    public var pageInfo: ListObjectScanEventResponseBody.PageInfo?

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
            var tmp : [ListObjectScanEventResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListObjectScanEventResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListObjectScanEventResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListObjectScanEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListObjectScanEventResponseBody?

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
            var model = ListObjectScanEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOssBucketRequest : Tea.TeaModel {
    public var bucketName: String?

    public var lang: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class ListOssBucketResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucketName: String?

        public var message: String?

        public var regionId: String?

        public var storageClass: String?

        public var support: Bool?

        public override init() {
            super.init()
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
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.storageClass != nil {
                map["StorageClass"] = self.storageClass!
            }
            if self.support != nil {
                map["Support"] = self.support!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StorageClass"] as? String {
                self.storageClass = value
            }
            if let value = dict["Support"] as? Bool {
                self.support = value
            }
        }
    }
    public var data: [ListOssBucketResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListOssBucketResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListOssBucketResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListOssBucketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOssBucketResponseBody?

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
            var model = ListOssBucketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOssBucketScanInfoRequest : Tea.TeaModel {
    public var bucketName: String?

    public var currentPage: Int32?

    public var fuzzBucketName: String?

    public var hasRisk: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.fuzzBucketName != nil {
            map["FuzzBucketName"] = self.fuzzBucketName!
        }
        if self.hasRisk != nil {
            map["HasRisk"] = self.hasRisk!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FuzzBucketName"] as? String {
            self.fuzzBucketName = value
        }
        if let value = dict["HasRisk"] as? Int32 {
            self.hasRisk = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ListOssBucketScanInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucketName: String?

        public var configStatus: Int32?

        public var decompressStatus: Int32?

        public var highRisk: Int64?

        public var lastScanEndTime: Int64?

        public var lastScanTime: Int64?

        public var lowRisk: Int64?

        public var mediumRisk: Int64?

        public var message: String?

        public var regionId: String?

        public var scanObject: Int64?

        public var scanned: Bool?

        public var status: Int32?

        public var storageClass: String?

        public var support: Bool?

        public var totalObject: Int64?

        public override init() {
            super.init()
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
            if self.configStatus != nil {
                map["ConfigStatus"] = self.configStatus!
            }
            if self.decompressStatus != nil {
                map["DecompressStatus"] = self.decompressStatus!
            }
            if self.highRisk != nil {
                map["HighRisk"] = self.highRisk!
            }
            if self.lastScanEndTime != nil {
                map["LastScanEndTime"] = self.lastScanEndTime!
            }
            if self.lastScanTime != nil {
                map["LastScanTime"] = self.lastScanTime!
            }
            if self.lowRisk != nil {
                map["LowRisk"] = self.lowRisk!
            }
            if self.mediumRisk != nil {
                map["MediumRisk"] = self.mediumRisk!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.scanObject != nil {
                map["ScanObject"] = self.scanObject!
            }
            if self.scanned != nil {
                map["Scanned"] = self.scanned!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageClass != nil {
                map["StorageClass"] = self.storageClass!
            }
            if self.support != nil {
                map["Support"] = self.support!
            }
            if self.totalObject != nil {
                map["TotalObject"] = self.totalObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["ConfigStatus"] as? Int32 {
                self.configStatus = value
            }
            if let value = dict["DecompressStatus"] as? Int32 {
                self.decompressStatus = value
            }
            if let value = dict["HighRisk"] as? Int64 {
                self.highRisk = value
            }
            if let value = dict["LastScanEndTime"] as? Int64 {
                self.lastScanEndTime = value
            }
            if let value = dict["LastScanTime"] as? Int64 {
                self.lastScanTime = value
            }
            if let value = dict["LowRisk"] as? Int64 {
                self.lowRisk = value
            }
            if let value = dict["MediumRisk"] as? Int64 {
                self.mediumRisk = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ScanObject"] as? Int64 {
                self.scanObject = value
            }
            if let value = dict["Scanned"] as? Bool {
                self.scanned = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StorageClass"] as? String {
                self.storageClass = value
            }
            if let value = dict["Support"] as? Bool {
                self.support = value
            }
            if let value = dict["TotalObject"] as? Int64 {
                self.totalObject = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
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
    public var data: [ListOssBucketScanInfoResponseBody.Data]?

    public var pageInfo: ListOssBucketScanInfoResponseBody.PageInfo?

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
            var tmp : [ListOssBucketScanInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListOssBucketScanInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListOssBucketScanInfoResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListOssBucketScanInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOssBucketScanInfoResponseBody?

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
            var model = ListOssBucketScanInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSupportObjectSuffixResponseBody : Tea.TeaModel {
    public var data: [String]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSupportObjectSuffixResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSupportObjectSuffixResponseBody?

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
            var model = ListSupportObjectSuffixResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateBucketScanTaskRequest : Tea.TeaModel {
    public var bucketName: String?

    public var operateCode: Int32?

    public override init() {
        super.init()
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
        if self.operateCode != nil {
            map["OperateCode"] = self.operateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["OperateCode"] as? Int32 {
            self.operateCode = value
        }
    }
}

public class OperateBucketScanTaskResponseBody : Tea.TeaModel {
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

public class OperateBucketScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateBucketScanTaskResponseBody?

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
            var model = OperateBucketScanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOssScanConfigRequest : Tea.TeaModel {
    public var allKeyPrefix: String?

    public var bucketName: String?

    public var decompressMaxFileCount: Int32?

    public var decompressMaxLayer: Int32?

    public var decryptionList: [String]?

    public var enable: Int32?

    public var endTime: String?

    public var id: String?

    public var keyPrefixList: [String]?

    public var keySuffixList: [String]?

    public var lastModifiedStartTime: Int64?

    public var name: String?

    public var realTimeIncr: Bool?

    public var scanDayList: [Int32]?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allKeyPrefix != nil {
            map["AllKeyPrefix"] = self.allKeyPrefix!
        }
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.decompressMaxFileCount != nil {
            map["DecompressMaxFileCount"] = self.decompressMaxFileCount!
        }
        if self.decompressMaxLayer != nil {
            map["DecompressMaxLayer"] = self.decompressMaxLayer!
        }
        if self.decryptionList != nil {
            map["DecryptionList"] = self.decryptionList!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keyPrefixList != nil {
            map["KeyPrefixList"] = self.keyPrefixList!
        }
        if self.keySuffixList != nil {
            map["KeySuffixList"] = self.keySuffixList!
        }
        if self.lastModifiedStartTime != nil {
            map["LastModifiedStartTime"] = self.lastModifiedStartTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.realTimeIncr != nil {
            map["RealTimeIncr"] = self.realTimeIncr!
        }
        if self.scanDayList != nil {
            map["ScanDayList"] = self.scanDayList!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllKeyPrefix"] as? String {
            self.allKeyPrefix = value
        }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["DecompressMaxFileCount"] as? Int32 {
            self.decompressMaxFileCount = value
        }
        if let value = dict["DecompressMaxLayer"] as? Int32 {
            self.decompressMaxLayer = value
        }
        if let value = dict["DecryptionList"] as? [String] {
            self.decryptionList = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["KeyPrefixList"] as? [String] {
            self.keyPrefixList = value
        }
        if let value = dict["KeySuffixList"] as? [String] {
            self.keySuffixList = value
        }
        if let value = dict["LastModifiedStartTime"] as? Int64 {
            self.lastModifiedStartTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RealTimeIncr"] as? Bool {
            self.realTimeIncr = value
        }
        if let value = dict["ScanDayList"] as? [Int32] {
            self.scanDayList = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class UpdateOssScanConfigResponseBody : Tea.TeaModel {
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

public class UpdateOssScanConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssScanConfigResponseBody?

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
            var model = UpdateOssScanConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
