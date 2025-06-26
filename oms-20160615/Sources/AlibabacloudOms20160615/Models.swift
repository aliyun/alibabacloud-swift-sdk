import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DeleteDomainPartRequest : Tea.TeaModel {
    public var dataType: String?

    public var domainCode: String?

    public var part: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.part != nil {
            map["Part"] = self.part!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Part"] as? String {
            self.part = value
        }
    }
}

public class DeleteDomainPartResponseBody : Tea.TeaModel {
    public var dataType: String?

    public var domainCode: String?

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
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDomainPartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainPartResponseBody?

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
            var model = DeleteDomainPartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDomainPartByProxyRequest : Tea.TeaModel {
    public var dataType: String?

    public var domainCode: String?

    public var part: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.part != nil {
            map["Part"] = self.part!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Part"] as? String {
            self.part = value
        }
    }
}

public class DeleteDomainPartByProxyResponseBody : Tea.TeaModel {
    public var dataType: String?

    public var domainCode: String?

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
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDomainPartByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainPartByProxyResponseBody?

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
            var model = DeleteDomainPartByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMeasureDataRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public var filter: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
    }
}

public class DeleteMeasureDataResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class DeleteMeasureDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMeasureDataResponseBody?

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
            var model = DeleteMeasureDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDomainPartRequest : Tea.TeaModel {
    public var compressEnable: Bool?

    public var dataType: String?

    public var domainCode: String?

    public var part: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressEnable != nil {
            map["CompressEnable"] = self.compressEnable!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.part != nil {
            map["Part"] = self.part!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressEnable"] as? Bool {
            self.compressEnable = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Part"] as? String {
            self.part = value
        }
    }
}

public class GetDomainPartResponseBody : Tea.TeaModel {
    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDomainPartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainPartResponseBody?

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
            var model = GetDomainPartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDomainPartByProxyRequest : Tea.TeaModel {
    public var compressEnable: Bool?

    public var dataType: String?

    public var domainCode: String?

    public var part: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressEnable != nil {
            map["CompressEnable"] = self.compressEnable!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.part != nil {
            map["Part"] = self.part!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressEnable"] as? Bool {
            self.compressEnable = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Part"] as? String {
            self.part = value
        }
    }
}

public class GetDomainPartByProxyResponseBody : Tea.TeaModel {
    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDomainPartByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainPartByProxyResponseBody?

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
            var model = GetDomainPartByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIncrementMeasureDataByProxyRequest : Tea.TeaModel {
    public var compressEnable: Bool?

    public var dataType: String?

    public var domainCode: String?

    public var modifyEndTime: Int64?

    public var modifyStartTime: Int64?

    public var rowKeyMapStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressEnable != nil {
            map["CompressEnable"] = self.compressEnable!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.modifyEndTime != nil {
            map["ModifyEndTime"] = self.modifyEndTime!
        }
        if self.modifyStartTime != nil {
            map["ModifyStartTime"] = self.modifyStartTime!
        }
        if self.rowKeyMapStr != nil {
            map["RowKeyMapStr"] = self.rowKeyMapStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressEnable"] as? Bool {
            self.compressEnable = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["ModifyEndTime"] as? Int64 {
            self.modifyEndTime = value
        }
        if let value = dict["ModifyStartTime"] as? Int64 {
            self.modifyStartTime = value
        }
        if let value = dict["RowKeyMapStr"] as? String {
            self.rowKeyMapStr = value
        }
    }
}

public class GetIncrementMeasureDataByProxyResponseBody : Tea.TeaModel {
    public var compressed: String?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Compressed"] as? String {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIncrementMeasureDataByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIncrementMeasureDataByProxyResponseBody?

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
            var model = GetIncrementMeasureDataByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMeasureDataRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressEnable: Bool?

    public var dataType: String?

    public var domainCode: String?

    public var filter: String?

    public var maxResult: Int32?

    public var nextToken: String?

    public var queryField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressEnable != nil {
            map["CompressEnable"] = self.compressEnable!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.queryField != nil {
            map["QueryField"] = self.queryField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["CompressEnable"] as? Bool {
            self.compressEnable = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResult"] as? Int32 {
            self.maxResult = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QueryField"] as? String {
            self.queryField = value
        }
    }
}

public class GetMeasureDataResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMeasureDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMeasureDataResponseBody?

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
            var model = GetMeasureDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetReadyFlagRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressEnable: Bool?

    public var dataType: String?

    public var domainCode: String?

    public var filter: String?

    public var maxResult: Int32?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressEnable != nil {
            map["CompressEnable"] = self.compressEnable!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["CompressEnable"] as? Bool {
            self.compressEnable = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResult"] as? Int32 {
            self.maxResult = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetReadyFlagResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetReadyFlagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReadyFlagResponseBody?

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
            var model = GetReadyFlagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetReadyFlagByProxyRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressEnable: Bool?

    public var dataType: String?

    public var domainCode: String?

    public var filter: String?

    public var maxResult: Int32?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressEnable != nil {
            map["CompressEnable"] = self.compressEnable!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["CompressEnable"] as? Bool {
            self.compressEnable = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResult"] as? Int32 {
            self.maxResult = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetReadyFlagByProxyResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetReadyFlagByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReadyFlagByProxyResponseBody?

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
            var model = GetReadyFlagByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutDomainPartRequest : Tea.TeaModel {
    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
    }
}

public class PutDomainPartResponseBody : Tea.TeaModel {
    public var dataType: String?

    public var domainCode: String?

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
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PutDomainPartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutDomainPartResponseBody?

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
            var model = PutDomainPartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutDomainPartByProxyRequest : Tea.TeaModel {
    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
    }
}

public class PutDomainPartByProxyResponseBody : Tea.TeaModel {
    public var dataType: String?

    public var domainCode: String?

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
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PutDomainPartByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutDomainPartByProxyResponseBody?

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
            var model = PutDomainPartByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutMeasureDataRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public var filter: String?

    public var sourceRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.sourceRequestId != nil {
            map["SourceRequestId"] = self.sourceRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["SourceRequestId"] as? String {
            self.sourceRequestId = value
        }
    }
}

public class PutMeasureDataResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var dataType: String?

    public var domainCode: String?

    public var requestId: String?

    public var sourceRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceRequestId != nil {
            map["SourceRequestId"] = self.sourceRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceRequestId"] as? String {
            self.sourceRequestId = value
        }
    }
}

public class PutMeasureDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutMeasureDataResponseBody?

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
            var model = PutMeasureDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutMeasureDataByProxyRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public var filter: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
    }
}

public class PutMeasureDataByProxyResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PutMeasureDataByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutMeasureDataByProxyResponseBody?

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
            var model = PutMeasureDataByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutReadyFlagRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public var sourceRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.sourceRequestId != nil {
            map["SourceRequestId"] = self.sourceRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["SourceRequestId"] as? String {
            self.sourceRequestId = value
        }
    }
}

public class PutReadyFlagResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var dataType: String?

    public var domainCode: String?

    public var requestId: String?

    public var sourceRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceRequestId != nil {
            map["SourceRequestId"] = self.sourceRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceRequestId"] as? String {
            self.sourceRequestId = value
        }
    }
}

public class PutReadyFlagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutReadyFlagResponseBody?

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
            var model = PutReadyFlagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutReadyFlagByProxyRequest : Tea.TeaModel {
    public var apiType: String?

    public var compressed: Bool?

    public var data: String?

    public var dataType: String?

    public var domainCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
    }
}

public class PutReadyFlagByProxyResponseBody : Tea.TeaModel {
    public var apiType: String?

    public var dataType: String?

    public var domainCode: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PutReadyFlagByProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutReadyFlagByProxyResponseBody?

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
            var model = PutReadyFlagByProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
