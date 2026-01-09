import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BuildStsAKRequest : Tea.TeaModel {
    public var body: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Int64 {
            self.body = value
        }
    }
}

public class BuildStsAKResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucket: String?

        public var endpoint: String?

        public var id: String?

        public var path: String?

        public var secret: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.secret != nil {
                map["secret"] = self.secret!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["secret"] as? String {
                self.secret = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: BuildStsAKResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = BuildStsAKResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BuildStsAKResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuildStsAKResponseBody?

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
            var model = BuildStsAKResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BuildStsAK2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var dataSetId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.dataSetId != nil {
            map["dataSetId"] = self.dataSetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["dataSetId"] as? Int64 {
            self.dataSetId = value
        }
    }
}

public class BuildStsAK2ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucket: String?

        public var endpoint: String?

        public var id: String?

        public var path: String?

        public var secret: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.secret != nil {
                map["secret"] = self.secret!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["secret"] as? String {
                self.secret = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: BuildStsAK2ResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = BuildStsAK2ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BuildStsAK2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuildStsAK2ResponseBody?

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
            var model = BuildStsAK2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelTaskRequest : Tea.TeaModel {
    public var body: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Int64 {
            self.body = value
        }
    }
}

public class CancelTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelTaskResponseBody?

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
            var model = CancelTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelTask2Request : Tea.TeaModel {
    public var bcId: Int64?

    public var clientId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bcId != nil {
            map["bcId"] = self.bcId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bcId"] as? Int64 {
            self.bcId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
    }
}

public class CancelTask2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelTask2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelTask2ResponseBody?

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
            var model = CancelTask2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateComputeTaskRequest : Tea.TeaModel {
    public class MorseInfoList : Tea.TeaModel {
        public var cuId: String?

        public var cuVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cuId != nil {
                map["cuId"] = self.cuId!
            }
            if self.cuVersion != nil {
                map["cuVersion"] = self.cuVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cuId"] as? String {
                self.cuId = value
            }
            if let value = dict["cuVersion"] as? String {
                self.cuVersion = value
            }
        }
    }
    public var appId: Int64?

    public var dataSetIds: String?

    public var morseInfoList: [CreateComputeTaskRequest.MorseInfoList]?

    public var name: String?

    public var remarks: String?

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
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.dataSetIds != nil {
            map["dataSetIds"] = self.dataSetIds!
        }
        if self.morseInfoList != nil {
            var tmp : [Any] = []
            for k in self.morseInfoList! {
                tmp.append(k.toMap())
            }
            map["morseInfoList"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remarks != nil {
            map["remarks"] = self.remarks!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? Int64 {
            self.appId = value
        }
        if let value = dict["dataSetIds"] as? String {
            self.dataSetIds = value
        }
        if let value = dict["morseInfoList"] as? [Any?] {
            var tmp : [CreateComputeTaskRequest.MorseInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreateComputeTaskRequest.MorseInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.morseInfoList = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["remarks"] as? String {
            self.remarks = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateComputeTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateComputeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateComputeTaskResponseBody?

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
            var model = CreateComputeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateComputeTask2Request : Tea.TeaModel {
    public class MorseInfoList : Tea.TeaModel {
        public var cuId: String?

        public var cuVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cuId != nil {
                map["cuId"] = self.cuId!
            }
            if self.cuVersion != nil {
                map["cuVersion"] = self.cuVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cuId"] as? String {
                self.cuId = value
            }
            if let value = dict["cuVersion"] as? String {
                self.cuVersion = value
            }
        }
    }
    public var appId: Int64?

    public var clientId: Int64?

    public var dataSetIds: String?

    public var morseInfoList: [CreateComputeTask2Request.MorseInfoList]?

    public var name: String?

    public var remarks: String?

    public var taskSource: String?

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
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.dataSetIds != nil {
            map["dataSetIds"] = self.dataSetIds!
        }
        if self.morseInfoList != nil {
            var tmp : [Any] = []
            for k in self.morseInfoList! {
                tmp.append(k.toMap())
            }
            map["morseInfoList"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remarks != nil {
            map["remarks"] = self.remarks!
        }
        if self.taskSource != nil {
            map["taskSource"] = self.taskSource!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? Int64 {
            self.appId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["dataSetIds"] as? String {
            self.dataSetIds = value
        }
        if let value = dict["morseInfoList"] as? [Any?] {
            var tmp : [CreateComputeTask2Request.MorseInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreateComputeTask2Request.MorseInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.morseInfoList = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["remarks"] as? String {
            self.remarks = value
        }
        if let value = dict["taskSource"] as? String {
            self.taskSource = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateComputeTask2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateComputeTask2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateComputeTask2ResponseBody?

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
            var model = CreateComputeTask2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataSetRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateDataSetResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSetResponseBody?

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
            var model = CreateDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataSet2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var name: String?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateDataSet2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDataSet2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSet2ResponseBody?

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
            var model = CreateDataSet2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceTaskRequest : Tea.TeaModel {
    public var appId: Int64?

    public var calbackUrl: String?

    public var clientId: Int64?

    public var datasetIds: String?

    public var monitorType: String?

    public var name: String?

    public var outputConfig: String?

    public var requestId: String?

    public var scoreStrategyConfig: String?

    public override init() {
        super.init()
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
        if self.calbackUrl != nil {
            map["CalbackUrl"] = self.calbackUrl!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.datasetIds != nil {
            map["DatasetIds"] = self.datasetIds!
        }
        if self.monitorType != nil {
            map["MonitorType"] = self.monitorType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outputConfig != nil {
            map["OutputConfig"] = self.outputConfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scoreStrategyConfig != nil {
            map["ScoreStrategyConfig"] = self.scoreStrategyConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? Int64 {
            self.appId = value
        }
        if let value = dict["CalbackUrl"] as? String {
            self.calbackUrl = value
        }
        if let value = dict["ClientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["DatasetIds"] as? String {
            self.datasetIds = value
        }
        if let value = dict["MonitorType"] as? String {
            self.monitorType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OutputConfig"] as? String {
            self.outputConfig = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScoreStrategyConfig"] as? String {
            self.scoreStrategyConfig = value
        }
    }
}

public class CreateInstanceTaskResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: Int32?

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
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? Int32 {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceTaskResponseBody?

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
            var model = CreateInstanceTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowLedgeRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var appId: String?

        public var internalKnowledgeId: String?

        public var knowledgeName: String?

        public override init() {
            super.init()
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
            if self.internalKnowledgeId != nil {
                map["internalKnowledgeId"] = self.internalKnowledgeId!
            }
            if self.knowledgeName != nil {
                map["knowledgeName"] = self.knowledgeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["internalKnowledgeId"] as? String {
                self.internalKnowledgeId = value
            }
            if let value = dict["knowledgeName"] as? String {
                self.knowledgeName = value
            }
        }
    }
    public var body: CreateKnowLedgeRequest.Body?

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
            var model = CreateKnowLedgeRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowLedgeShrinkRequest : Tea.TeaModel {
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

public class CreateKnowLedgeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateKnowLedgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowLedgeResponseBody?

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
            var model = CreateKnowLedgeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EncryptInvokeRequest : Tea.TeaModel {
    public var clientId: Int64?

    public var data: String?

    public var encryptKey: String?

    public var methodName: String?

    public var sign: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.encryptKey != nil {
            map["encryptKey"] = self.encryptKey!
        }
        if self.methodName != nil {
            map["methodName"] = self.methodName!
        }
        if self.sign != nil {
            map["sign"] = self.sign!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["encryptKey"] as? String {
            self.encryptKey = value
        }
        if let value = dict["methodName"] as? String {
            self.methodName = value
        }
        if let value = dict["sign"] as? String {
            self.sign = value
        }
    }
}

public class EncryptInvokeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var encryptData: String?

        public var encryptKey: String?

        public var sign: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.encryptData != nil {
                map["encryptData"] = self.encryptData!
            }
            if self.encryptKey != nil {
                map["encryptKey"] = self.encryptKey!
            }
            if self.sign != nil {
                map["sign"] = self.sign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["encryptData"] as? String {
                self.encryptData = value
            }
            if let value = dict["encryptKey"] as? String {
                self.encryptKey = value
            }
            if let value = dict["sign"] as? String {
                self.sign = value
            }
        }
    }
    public var code: String?

    public var data: EncryptInvokeResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = EncryptInvokeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EncryptInvokeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EncryptInvokeResponseBody?

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
            var model = EncryptInvokeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCrowdDatasetRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
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
                map["appId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
        }
    }
    public var body: GetCrowdDatasetRequest.Body?

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
            var model = GetCrowdDatasetRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCrowdDatasetShrinkRequest : Tea.TeaModel {
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

public class GetCrowdDatasetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var crowdDatasetId: String?

        public var datasetIds: String?

        public var description_: String?

        public var name: String?

        public var uploadStatus: String?

        public override init() {
            super.init()
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
            if self.crowdDatasetId != nil {
                map["crowdDatasetId"] = self.crowdDatasetId!
            }
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.uploadStatus != nil {
                map["uploadStatus"] = self.uploadStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["crowdDatasetId"] as? String {
                self.crowdDatasetId = value
            }
            if let value = dict["datasetIds"] as? String {
                self.datasetIds = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["uploadStatus"] as? String {
                self.uploadStatus = value
            }
        }
    }
    public var code: String?

    public var data: GetCrowdDatasetResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = GetCrowdDatasetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCrowdDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCrowdDatasetResponseBody?

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
            var model = GetCrowdDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeDataRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var appId: String?

        public var knowledgeIdList: [String]?

        public override init() {
            super.init()
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
            if self.knowledgeIdList != nil {
                map["knowledgeIdList"] = self.knowledgeIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["knowledgeIdList"] as? [String] {
                self.knowledgeIdList = value
            }
        }
    }
    public var body: GetKnowledgeDataRequest.Body?

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
            var model = GetKnowledgeDataRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeDataShrinkRequest : Tea.TeaModel {
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

public class GetKnowledgeDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var internalKnowledgeId: String?

        public var knowledgeName: String?

        public var message: String?

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
            if self.appId != nil {
                map["appId"] = self.appId!
            }
            if self.internalKnowledgeId != nil {
                map["internalKnowledgeId"] = self.internalKnowledgeId!
            }
            if self.knowledgeName != nil {
                map["knowledgeName"] = self.knowledgeName!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["internalKnowledgeId"] as? String {
                self.internalKnowledgeId = value
            }
            if let value = dict["knowledgeName"] as? String {
                self.knowledgeName = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [GetKnowledgeDataResponseBody.Data]?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetKnowledgeDataResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetKnowledgeDataResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetKnowledgeDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKnowledgeDataResponseBody?

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
            var model = GetKnowledgeDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYzdInstanceTaskResultRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var appId: String?

        public var rangeTimeEndTime: String?

        public var rangeTimeStartTime: String?

        public override init() {
            super.init()
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
            if self.rangeTimeEndTime != nil {
                map["rangeTimeEndTime"] = self.rangeTimeEndTime!
            }
            if self.rangeTimeStartTime != nil {
                map["rangeTimeStartTime"] = self.rangeTimeStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["rangeTimeEndTime"] as? String {
                self.rangeTimeEndTime = value
            }
            if let value = dict["rangeTimeStartTime"] as? String {
                self.rangeTimeStartTime = value
            }
        }
    }
    public var body: GetYzdInstanceTaskResultRequest.Body?

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
            var model = GetYzdInstanceTaskResultRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYzdInstanceTaskResultShrinkRequest : Tea.TeaModel {
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

public class GetYzdInstanceTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DownloadUrls : Tea.TeaModel {
            public var pwd: String?

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
                if self.pwd != nil {
                    map["pwd"] = self.pwd!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["pwd"] as? String {
                    self.pwd = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var appid: String?

        public var bcid: String?

        public var datasetIds: String?

        public var downloadUrls: [GetYzdInstanceTaskResultResponseBody.Data.DownloadUrls]?

        public var resultCnt: String?

        public var status: String?

        public var timeDuration: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appid != nil {
                map["appid"] = self.appid!
            }
            if self.bcid != nil {
                map["bcid"] = self.bcid!
            }
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.downloadUrls != nil {
                var tmp : [Any] = []
                for k in self.downloadUrls! {
                    tmp.append(k.toMap())
                }
                map["downloadUrls"] = tmp
            }
            if self.resultCnt != nil {
                map["resultCnt"] = self.resultCnt!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.timeDuration != nil {
                map["timeDuration"] = self.timeDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appid"] as? String {
                self.appid = value
            }
            if let value = dict["bcid"] as? String {
                self.bcid = value
            }
            if let value = dict["datasetIds"] as? String {
                self.datasetIds = value
            }
            if let value = dict["downloadUrls"] as? [Any?] {
                var tmp : [GetYzdInstanceTaskResultResponseBody.Data.DownloadUrls] = []
                for v in value {
                    if v != nil {
                        var model = GetYzdInstanceTaskResultResponseBody.Data.DownloadUrls()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.downloadUrls = tmp
            }
            if let value = dict["resultCnt"] as? String {
                self.resultCnt = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["timeDuration"] as? String {
                self.timeDuration = value
            }
        }
    }
    public var code: Bool?

    public var data: [GetYzdInstanceTaskResultResponseBody.Data]?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Code"] as? Bool {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetYzdInstanceTaskResultResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetYzdInstanceTaskResultResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetYzdInstanceTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYzdInstanceTaskResultResponseBody?

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
            var model = GetYzdInstanceTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYzdStsAKResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var bucket: String?

        public var endpoint: String?

        public var id: String?

        public var internalKnowledgeId: String?

        public var path: String?

        public var secret: String?

        public var token: String?

        public override init() {
            super.init()
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
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.internalKnowledgeId != nil {
                map["internalKnowledgeId"] = self.internalKnowledgeId!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.secret != nil {
                map["secret"] = self.secret!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["internalKnowledgeId"] as? String {
                self.internalKnowledgeId = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["secret"] as? String {
                self.secret = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: GetYzdStsAKResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = GetYzdStsAKResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetYzdStsAKResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYzdStsAKResponseBody?

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
            var model = GetYzdStsAKResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListComputeTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskResultList : Tea.TeaModel {
            public var bcId: Int64?

            public var code: Int32?

            public var lineNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bcId != nil {
                    map["bcId"] = self.bcId!
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.lineNum != nil {
                    map["lineNum"] = self.lineNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bcId"] as? Int64 {
                    self.bcId = value
                }
                if let value = dict["code"] as? Int32 {
                    self.code = value
                }
                if let value = dict["lineNum"] as? Int64 {
                    self.lineNum = value
                }
            }
        }
        public var appId: Int64?

        public var bcId: Int64?

        public var computeOssFileTitle: String?

        public var datasetIds: String?

        public var extInfo: String?

        public var fileNum: Int64?

        public var name: String?

        public var remarks: String?

        public var status: String?

        public var taskResultList: [ListComputeTaskResponseBody.Data.TaskResultList]?

        public override init() {
            super.init()
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
            if self.bcId != nil {
                map["bcId"] = self.bcId!
            }
            if self.computeOssFileTitle != nil {
                map["computeOssFileTitle"] = self.computeOssFileTitle!
            }
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.extInfo != nil {
                map["extInfo"] = self.extInfo!
            }
            if self.fileNum != nil {
                map["fileNum"] = self.fileNum!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.remarks != nil {
                map["remarks"] = self.remarks!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskResultList != nil {
                var tmp : [Any] = []
                for k in self.taskResultList! {
                    tmp.append(k.toMap())
                }
                map["taskResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["bcId"] as? Int64 {
                self.bcId = value
            }
            if let value = dict["computeOssFileTitle"] as? String {
                self.computeOssFileTitle = value
            }
            if let value = dict["datasetIds"] as? String {
                self.datasetIds = value
            }
            if let value = dict["extInfo"] as? String {
                self.extInfo = value
            }
            if let value = dict["fileNum"] as? Int64 {
                self.fileNum = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["remarks"] as? String {
                self.remarks = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskResultList"] as? [Any?] {
                var tmp : [ListComputeTaskResponseBody.Data.TaskResultList] = []
                for v in value {
                    if v != nil {
                        var model = ListComputeTaskResponseBody.Data.TaskResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskResultList = tmp
            }
        }
    }
    public var code: String?

    public var data: [ListComputeTaskResponseBody.Data]?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListComputeTaskResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListComputeTaskResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListComputeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComputeTaskResponseBody?

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
            var model = ListComputeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListComputeTask2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListComputeTask2ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class TaskResultList : Tea.TeaModel {
                public var bcId: Int64?

                public var code: Int32?

                public var lineNum: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bcId != nil {
                        map["bcId"] = self.bcId!
                    }
                    if self.code != nil {
                        map["code"] = self.code!
                    }
                    if self.lineNum != nil {
                        map["lineNum"] = self.lineNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["bcId"] as? Int64 {
                        self.bcId = value
                    }
                    if let value = dict["code"] as? Int32 {
                        self.code = value
                    }
                    if let value = dict["lineNum"] as? Int64 {
                        self.lineNum = value
                    }
                }
            }
            public var appId: Int64?

            public var bcId: Int64?

            public var computeOssFileTitle: String?

            public var datasetIds: String?

            public var extInfo: String?

            public var fileNum: Int64?

            public var name: String?

            public var remarks: String?

            public var status: String?

            public var taskResultList: [ListComputeTask2ResponseBody.Data.Data.TaskResultList]?

            public override init() {
                super.init()
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
                if self.bcId != nil {
                    map["bcId"] = self.bcId!
                }
                if self.computeOssFileTitle != nil {
                    map["computeOssFileTitle"] = self.computeOssFileTitle!
                }
                if self.datasetIds != nil {
                    map["datasetIds"] = self.datasetIds!
                }
                if self.extInfo != nil {
                    map["extInfo"] = self.extInfo!
                }
                if self.fileNum != nil {
                    map["fileNum"] = self.fileNum!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.remarks != nil {
                    map["remarks"] = self.remarks!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.taskResultList != nil {
                    var tmp : [Any] = []
                    for k in self.taskResultList! {
                        tmp.append(k.toMap())
                    }
                    map["taskResultList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? Int64 {
                    self.appId = value
                }
                if let value = dict["bcId"] as? Int64 {
                    self.bcId = value
                }
                if let value = dict["computeOssFileTitle"] as? String {
                    self.computeOssFileTitle = value
                }
                if let value = dict["datasetIds"] as? String {
                    self.datasetIds = value
                }
                if let value = dict["extInfo"] as? String {
                    self.extInfo = value
                }
                if let value = dict["fileNum"] as? Int64 {
                    self.fileNum = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["remarks"] as? String {
                    self.remarks = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["taskResultList"] as? [Any?] {
                    var tmp : [ListComputeTask2ResponseBody.Data.Data.TaskResultList] = []
                    for v in value {
                        if v != nil {
                            var model = ListComputeTask2ResponseBody.Data.Data.TaskResultList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.taskResultList = tmp
                }
            }
        }
        public var data: [ListComputeTask2ResponseBody.Data.Data]?

        public var totalNum: Int32?

        public override init() {
            super.init()
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
                map["data"] = tmp
            }
            if self.totalNum != nil {
                map["totalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [ListComputeTask2ResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListComputeTask2ResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["totalNum"] as? Int32 {
                self.totalNum = value
            }
        }
    }
    public var code: String?

    public var data: ListComputeTask2ResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = ListComputeTask2ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListComputeTask2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComputeTask2ResponseBody?

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
            var model = ListComputeTask2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var datasetId: Int64?

        public var lineNum: Int64?

        public var name: String?

        public var status: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.datasetId != nil {
                map["datasetId"] = self.datasetId!
            }
            if self.lineNum != nil {
                map["lineNum"] = self.lineNum!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["datasetId"] as? Int64 {
                self.datasetId = value
            }
            if let value = dict["lineNum"] as? Int64 {
                self.lineNum = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var data: [ListDataSetResponseBody.Data]?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListDataSetResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataSetResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSetResponseBody?

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
            var model = ListDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSet2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.pageNo != nil {
            map["pageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["pageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDataSet2ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var createTime: String?

            public var datasetId: Int64?

            public var lineNum: Int64?

            public var name: String?

            public var status: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.datasetId != nil {
                    map["datasetId"] = self.datasetId!
                }
                if self.lineNum != nil {
                    map["lineNum"] = self.lineNum!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["datasetId"] as? Int64 {
                    self.datasetId = value
                }
                if let value = dict["lineNum"] as? Int64 {
                    self.lineNum = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var data: [ListDataSet2ResponseBody.Data.Data]?

        public var totalNum: Int32?

        public override init() {
            super.init()
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
                map["data"] = tmp
            }
            if self.totalNum != nil {
                map["totalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [ListDataSet2ResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSet2ResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["totalNum"] as? Int32 {
                self.totalNum = value
            }
        }
    }
    public var code: String?

    public var data: ListDataSet2ResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = ListDataSet2ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataSet2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSet2ResponseBody?

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
            var model = ListDataSet2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDataSetRequest : Tea.TeaModel {
    public var body: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Int64 {
            self.body = value
        }
    }
}

public class RemoveDataSetResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDataSetResponseBody?

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
            var model = RemoveDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDataSet2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var dataSetId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.dataSetId != nil {
            map["dataSetId"] = self.dataSetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["dataSetId"] as? Int64 {
            self.dataSetId = value
        }
    }
}

public class RemoveDataSet2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveDataSet2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDataSet2ResponseBody?

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
            var model = RemoveDataSet2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveCrowdDatasetAndBindingDatasetRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var appId: String?

        public var datasetIds: [String]?

        public var description_: String?

        public var name: String?

        public override init() {
            super.init()
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
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["datasetIds"] as? [String] {
                self.datasetIds = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var body: SaveCrowdDatasetAndBindingDatasetRequest.Body?

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
            var model = SaveCrowdDatasetAndBindingDatasetRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveCrowdDatasetAndBindingDatasetShrinkRequest : Tea.TeaModel {
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

public class SaveCrowdDatasetAndBindingDatasetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var crowdDatasetId: String?

        public var datasetIds: [String]?

        public var description_: String?

        public var name: String?

        public var uploadStatus: String?

        public override init() {
            super.init()
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
            if self.crowdDatasetId != nil {
                map["crowdDatasetId"] = self.crowdDatasetId!
            }
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.uploadStatus != nil {
                map["uploadStatus"] = self.uploadStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["crowdDatasetId"] as? String {
                self.crowdDatasetId = value
            }
            if let value = dict["datasetIds"] as? [String] {
                self.datasetIds = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["uploadStatus"] as? String {
                self.uploadStatus = value
            }
        }
    }
    public var code: String?

    public var data: SaveCrowdDatasetAndBindingDatasetResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = SaveCrowdDatasetAndBindingDatasetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SaveCrowdDatasetAndBindingDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveCrowdDatasetAndBindingDatasetResponseBody?

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
            var model = SaveCrowdDatasetAndBindingDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SelectComputeTaskRequest : Tea.TeaModel {
    public var body: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Int64 {
            self.body = value
        }
    }
}

public class SelectComputeTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExportOssFileList : Tea.TeaModel {
            public var downLoadUrl: String?

            public var password: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.downLoadUrl != nil {
                    map["downLoadUrl"] = self.downLoadUrl!
                }
                if self.password != nil {
                    map["password"] = self.password!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["downLoadUrl"] as? String {
                    self.downLoadUrl = value
                }
                if let value = dict["password"] as? String {
                    self.password = value
                }
            }
        }
        public class TaskResultList : Tea.TeaModel {
            public var bcId: Int64?

            public var code: Int32?

            public var lineNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bcId != nil {
                    map["bcId"] = self.bcId!
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.lineNum != nil {
                    map["lineNum"] = self.lineNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bcId"] as? Int64 {
                    self.bcId = value
                }
                if let value = dict["code"] as? Int32 {
                    self.code = value
                }
                if let value = dict["lineNum"] as? Int64 {
                    self.lineNum = value
                }
            }
        }
        public var appId: Int64?

        public var bcId: Int64?

        public var computeOssFileTitle: String?

        public var datasetIds: String?

        public var exportOssFileList: [SelectComputeTaskResponseBody.Data.ExportOssFileList]?

        public var extInfo: String?

        public var fileNum: Int64?

        public var name: String?

        public var remarks: String?

        public var status: String?

        public var taskResultList: [SelectComputeTaskResponseBody.Data.TaskResultList]?

        public override init() {
            super.init()
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
            if self.bcId != nil {
                map["bcId"] = self.bcId!
            }
            if self.computeOssFileTitle != nil {
                map["computeOssFileTitle"] = self.computeOssFileTitle!
            }
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.exportOssFileList != nil {
                var tmp : [Any] = []
                for k in self.exportOssFileList! {
                    tmp.append(k.toMap())
                }
                map["exportOssFileList"] = tmp
            }
            if self.extInfo != nil {
                map["extInfo"] = self.extInfo!
            }
            if self.fileNum != nil {
                map["fileNum"] = self.fileNum!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.remarks != nil {
                map["remarks"] = self.remarks!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskResultList != nil {
                var tmp : [Any] = []
                for k in self.taskResultList! {
                    tmp.append(k.toMap())
                }
                map["taskResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["bcId"] as? Int64 {
                self.bcId = value
            }
            if let value = dict["computeOssFileTitle"] as? String {
                self.computeOssFileTitle = value
            }
            if let value = dict["datasetIds"] as? String {
                self.datasetIds = value
            }
            if let value = dict["exportOssFileList"] as? [Any?] {
                var tmp : [SelectComputeTaskResponseBody.Data.ExportOssFileList] = []
                for v in value {
                    if v != nil {
                        var model = SelectComputeTaskResponseBody.Data.ExportOssFileList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.exportOssFileList = tmp
            }
            if let value = dict["extInfo"] as? String {
                self.extInfo = value
            }
            if let value = dict["fileNum"] as? Int64 {
                self.fileNum = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["remarks"] as? String {
                self.remarks = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskResultList"] as? [Any?] {
                var tmp : [SelectComputeTaskResponseBody.Data.TaskResultList] = []
                for v in value {
                    if v != nil {
                        var model = SelectComputeTaskResponseBody.Data.TaskResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskResultList = tmp
            }
        }
    }
    public var code: String?

    public var data: SelectComputeTaskResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = SelectComputeTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SelectComputeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectComputeTaskResponseBody?

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
            var model = SelectComputeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SelectComputeTask2Request : Tea.TeaModel {
    public var bcConfirm: Bool?

    public var bcId: Int64?

    public var clientId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bcConfirm != nil {
            map["bcConfirm"] = self.bcConfirm!
        }
        if self.bcId != nil {
            map["bcId"] = self.bcId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bcConfirm"] as? Bool {
            self.bcConfirm = value
        }
        if let value = dict["bcId"] as? Int64 {
            self.bcId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
    }
}

public class SelectComputeTask2ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExportOssFileList : Tea.TeaModel {
            public var downLoadUrl: String?

            public var password: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.downLoadUrl != nil {
                    map["downLoadUrl"] = self.downLoadUrl!
                }
                if self.password != nil {
                    map["password"] = self.password!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["downLoadUrl"] as? String {
                    self.downLoadUrl = value
                }
                if let value = dict["password"] as? String {
                    self.password = value
                }
            }
        }
        public class TaskResultList : Tea.TeaModel {
            public var bcId: Int64?

            public var code: Int32?

            public var lineNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bcId != nil {
                    map["bcId"] = self.bcId!
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.lineNum != nil {
                    map["lineNum"] = self.lineNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bcId"] as? Int64 {
                    self.bcId = value
                }
                if let value = dict["code"] as? Int32 {
                    self.code = value
                }
                if let value = dict["lineNum"] as? Int64 {
                    self.lineNum = value
                }
            }
        }
        public var appId: Int64?

        public var bcId: Int64?

        public var computeOssFileTitle: String?

        public var datasetIds: String?

        public var exportOssFileList: [SelectComputeTask2ResponseBody.Data.ExportOssFileList]?

        public var extInfo: String?

        public var fileNum: Int64?

        public var hint: String?

        public var name: String?

        public var remarks: String?

        public var status: String?

        public var taskResultList: [SelectComputeTask2ResponseBody.Data.TaskResultList]?

        public override init() {
            super.init()
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
            if self.bcId != nil {
                map["bcId"] = self.bcId!
            }
            if self.computeOssFileTitle != nil {
                map["computeOssFileTitle"] = self.computeOssFileTitle!
            }
            if self.datasetIds != nil {
                map["datasetIds"] = self.datasetIds!
            }
            if self.exportOssFileList != nil {
                var tmp : [Any] = []
                for k in self.exportOssFileList! {
                    tmp.append(k.toMap())
                }
                map["exportOssFileList"] = tmp
            }
            if self.extInfo != nil {
                map["extInfo"] = self.extInfo!
            }
            if self.fileNum != nil {
                map["fileNum"] = self.fileNum!
            }
            if self.hint != nil {
                map["hint"] = self.hint!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.remarks != nil {
                map["remarks"] = self.remarks!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskResultList != nil {
                var tmp : [Any] = []
                for k in self.taskResultList! {
                    tmp.append(k.toMap())
                }
                map["taskResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["bcId"] as? Int64 {
                self.bcId = value
            }
            if let value = dict["computeOssFileTitle"] as? String {
                self.computeOssFileTitle = value
            }
            if let value = dict["datasetIds"] as? String {
                self.datasetIds = value
            }
            if let value = dict["exportOssFileList"] as? [Any?] {
                var tmp : [SelectComputeTask2ResponseBody.Data.ExportOssFileList] = []
                for v in value {
                    if v != nil {
                        var model = SelectComputeTask2ResponseBody.Data.ExportOssFileList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.exportOssFileList = tmp
            }
            if let value = dict["extInfo"] as? String {
                self.extInfo = value
            }
            if let value = dict["fileNum"] as? Int64 {
                self.fileNum = value
            }
            if let value = dict["hint"] as? String {
                self.hint = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["remarks"] as? String {
                self.remarks = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskResultList"] as? [Any?] {
                var tmp : [SelectComputeTask2ResponseBody.Data.TaskResultList] = []
                for v in value {
                    if v != nil {
                        var model = SelectComputeTask2ResponseBody.Data.TaskResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskResultList = tmp
            }
        }
    }
    public var code: String?

    public var data: SelectComputeTask2ResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = SelectComputeTask2ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SelectComputeTask2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectComputeTask2ResponseBody?

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
            var model = SelectComputeTask2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SelectDataSetRequest : Tea.TeaModel {
    public var body: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Int64 {
            self.body = value
        }
    }
}

public class SelectDataSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var datasetId: Int64?

        public var lineNum: Int64?

        public var name: String?

        public var status: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.datasetId != nil {
                map["datasetId"] = self.datasetId!
            }
            if self.lineNum != nil {
                map["lineNum"] = self.lineNum!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["datasetId"] as? Int64 {
                self.datasetId = value
            }
            if let value = dict["lineNum"] as? Int64 {
                self.lineNum = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var data: SelectDataSetResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = SelectDataSetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SelectDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectDataSetResponseBody?

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
            var model = SelectDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SelectDataSet2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var dataSetId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.dataSetId != nil {
            map["dataSetId"] = self.dataSetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["dataSetId"] as? Int64 {
            self.dataSetId = value
        }
    }
}

public class SelectDataSet2ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var datasetId: Int64?

        public var lineNum: Int64?

        public var name: String?

        public var ossFileCount: Int64?

        public var status: String?

        public var statusMsg: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.datasetId != nil {
                map["datasetId"] = self.datasetId!
            }
            if self.lineNum != nil {
                map["lineNum"] = self.lineNum!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ossFileCount != nil {
                map["ossFileCount"] = self.ossFileCount!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusMsg != nil {
                map["statusMsg"] = self.statusMsg!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["datasetId"] as? Int64 {
                self.datasetId = value
            }
            if let value = dict["lineNum"] as? Int64 {
                self.lineNum = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["ossFileCount"] as? Int64 {
                self.ossFileCount = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusMsg"] as? String {
                self.statusMsg = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var data: SelectDataSet2ResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
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
            var model = SelectDataSet2ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SelectDataSet2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectDataSet2ResponseBody?

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
            var model = SelectDataSet2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDataSetTaskRequest : Tea.TeaModel {
    public var body: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Int64 {
            self.body = value
        }
    }
}

public class SubmitDataSetTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitDataSetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDataSetTaskResponseBody?

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
            var model = SubmitDataSetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDataSetTask2Request : Tea.TeaModel {
    public var clientId: Int64?

    public var dataSetId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.dataSetId != nil {
            map["dataSetId"] = self.dataSetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["dataSetId"] as? Int64 {
            self.dataSetId = value
        }
    }
}

public class SubmitDataSetTask2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitDataSetTask2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDataSetTask2ResponseBody?

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
            var model = SubmitDataSetTask2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateKnowLedgeRequest : Tea.TeaModel {
    public var body: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String] {
            self.body = value
        }
    }
}

public class ValidateKnowLedgeShrinkRequest : Tea.TeaModel {
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

public class ValidateKnowLedgeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var msg: String?

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
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ValidateKnowLedgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateKnowLedgeResponseBody?

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
            var model = ValidateKnowLedgeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
