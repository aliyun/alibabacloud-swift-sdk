import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchJobCheckRequest : Tea.TeaModel {
    public var regionId: String?

    public var submitId: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.submitId != nil {
            map["SubmitId"] = self.submitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubmitId") && dict["SubmitId"] != nil {
            self.submitId = dict["SubmitId"] as! String
        }
    }
}

public class BatchJobCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrTaskList : Tea.TeaModel {
            public class ProductList : Tea.TeaModel {
                public class LogList : Tea.TeaModel {
                    public var errorCode: String?

                    public var logCode: String?

                    public var logStoreNamePattern: String?

                    public var productCode: String?

                    public var projectNamePattern: String?

                    public var regionCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.logCode != nil {
                            map["LogCode"] = self.logCode!
                        }
                        if self.logStoreNamePattern != nil {
                            map["LogStoreNamePattern"] = self.logStoreNamePattern!
                        }
                        if self.productCode != nil {
                            map["ProductCode"] = self.productCode!
                        }
                        if self.projectNamePattern != nil {
                            map["ProjectNamePattern"] = self.projectNamePattern!
                        }
                        if self.regionCode != nil {
                            map["RegionCode"] = self.regionCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
                            self.logCode = dict["LogCode"] as! String
                        }
                        if dict.keys.contains("LogStoreNamePattern") && dict["LogStoreNamePattern"] != nil {
                            self.logStoreNamePattern = dict["LogStoreNamePattern"] as! String
                        }
                        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                            self.productCode = dict["ProductCode"] as! String
                        }
                        if dict.keys.contains("ProjectNamePattern") && dict["ProjectNamePattern"] != nil {
                            self.projectNamePattern = dict["ProjectNamePattern"] as! String
                        }
                        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
                            self.regionCode = dict["RegionCode"] as! String
                        }
                    }
                }
                public var logList: [BatchJobCheckResponseBody.Data.ErrTaskList.ProductList.LogList]?

                public var productCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.logList != nil {
                        var tmp : [Any] = []
                        for k in self.logList! {
                            tmp.append(k.toMap())
                        }
                        map["LogList"] = tmp
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LogList") && dict["LogList"] != nil {
                        var tmp : [BatchJobCheckResponseBody.Data.ErrTaskList.ProductList.LogList] = []
                        for v in dict["LogList"] as! [Any] {
                            var model = BatchJobCheckResponseBody.Data.ErrTaskList.ProductList.LogList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.logList = tmp
                    }
                    if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                        self.productCode = dict["ProductCode"] as! String
                    }
                }
            }
            public var productList: [BatchJobCheckResponseBody.Data.ErrTaskList.ProductList]?

            public var userId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.productList != nil {
                    var tmp : [Any] = []
                    for k in self.productList! {
                        tmp.append(k.toMap())
                    }
                    map["ProductList"] = tmp
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductList") && dict["ProductList"] != nil {
                    var tmp : [BatchJobCheckResponseBody.Data.ErrTaskList.ProductList] = []
                    for v in dict["ProductList"] as! [Any] {
                        var model = BatchJobCheckResponseBody.Data.ErrTaskList.ProductList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.productList = tmp
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! Int64
                }
            }
        }
        public var configId: String?

        public var errTaskList: [BatchJobCheckResponseBody.Data.ErrTaskList]?

        public var failedCount: Int32?

        public var finishCount: Int32?

        public var folderId: String?

        public var taskCount: Int32?

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
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.errTaskList != nil {
                var tmp : [Any] = []
                for k in self.errTaskList! {
                    tmp.append(k.toMap())
                }
                map["ErrTaskList"] = tmp
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.finishCount != nil {
                map["FinishCount"] = self.finishCount!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") && dict["ConfigId"] != nil {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("ErrTaskList") && dict["ErrTaskList"] != nil {
                var tmp : [BatchJobCheckResponseBody.Data.ErrTaskList] = []
                for v in dict["ErrTaskList"] as! [Any] {
                    var model = BatchJobCheckResponseBody.Data.ErrTaskList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errTaskList = tmp
            }
            if dict.keys.contains("FailedCount") && dict["FailedCount"] != nil {
                self.failedCount = dict["FailedCount"] as! Int32
            }
            if dict.keys.contains("FinishCount") && dict["FinishCount"] != nil {
                self.finishCount = dict["FinishCount"] as! Int32
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("TaskCount") && dict["TaskCount"] != nil {
                self.taskCount = dict["TaskCount"] as! Int32
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: BatchJobCheckResponseBody.Data?

    public var errCode: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchJobCheckResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchJobCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchJobCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchJobCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchJobSubmitRequest : Tea.TeaModel {
    public var jsonConfig: String?

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
        if self.jsonConfig != nil {
            map["JsonConfig"] = self.jsonConfig!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonConfig") && dict["JsonConfig"] != nil {
            self.jsonConfig = dict["JsonConfig"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchJobSubmitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConfigList : Tea.TeaModel {
            public class ProductList : Tea.TeaModel {
                public class LogList : Tea.TeaModel {
                    public var errorCode: String?

                    public var logCode: String?

                    public var logStoreNamePattern: String?

                    public var productCode: String?

                    public var projectNamePattern: String?

                    public var regionCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.logCode != nil {
                            map["LogCode"] = self.logCode!
                        }
                        if self.logStoreNamePattern != nil {
                            map["LogStoreNamePattern"] = self.logStoreNamePattern!
                        }
                        if self.productCode != nil {
                            map["ProductCode"] = self.productCode!
                        }
                        if self.projectNamePattern != nil {
                            map["ProjectNamePattern"] = self.projectNamePattern!
                        }
                        if self.regionCode != nil {
                            map["RegionCode"] = self.regionCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
                            self.logCode = dict["LogCode"] as! String
                        }
                        if dict.keys.contains("LogStoreNamePattern") && dict["LogStoreNamePattern"] != nil {
                            self.logStoreNamePattern = dict["LogStoreNamePattern"] as! String
                        }
                        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                            self.productCode = dict["ProductCode"] as! String
                        }
                        if dict.keys.contains("ProjectNamePattern") && dict["ProjectNamePattern"] != nil {
                            self.projectNamePattern = dict["ProjectNamePattern"] as! String
                        }
                        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
                            self.regionCode = dict["RegionCode"] as! String
                        }
                    }
                }
                public var logList: [BatchJobSubmitResponseBody.Data.ConfigList.ProductList.LogList]?

                public var productCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.logList != nil {
                        var tmp : [Any] = []
                        for k in self.logList! {
                            tmp.append(k.toMap())
                        }
                        map["LogList"] = tmp
                    }
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LogList") && dict["LogList"] != nil {
                        var tmp : [BatchJobSubmitResponseBody.Data.ConfigList.ProductList.LogList] = []
                        for v in dict["LogList"] as! [Any] {
                            var model = BatchJobSubmitResponseBody.Data.ConfigList.ProductList.LogList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.logList = tmp
                    }
                    if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                        self.productCode = dict["ProductCode"] as! String
                    }
                }
            }
            public var productList: [BatchJobSubmitResponseBody.Data.ConfigList.ProductList]?

            public var userId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.productList != nil {
                    var tmp : [Any] = []
                    for k in self.productList! {
                        tmp.append(k.toMap())
                    }
                    map["ProductList"] = tmp
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductList") && dict["ProductList"] != nil {
                    var tmp : [BatchJobSubmitResponseBody.Data.ConfigList.ProductList] = []
                    for v in dict["ProductList"] as! [Any] {
                        var model = BatchJobSubmitResponseBody.Data.ConfigList.ProductList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.productList = tmp
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! Int64
                }
            }
        }
        public var configId: String?

        public var configList: [BatchJobSubmitResponseBody.Data.ConfigList]?

        public var submitId: String?

        public var taskCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.configList != nil {
                var tmp : [Any] = []
                for k in self.configList! {
                    tmp.append(k.toMap())
                }
                map["ConfigList"] = tmp
            }
            if self.submitId != nil {
                map["SubmitId"] = self.submitId!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") && dict["ConfigId"] != nil {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("ConfigList") && dict["ConfigList"] != nil {
                var tmp : [BatchJobSubmitResponseBody.Data.ConfigList] = []
                for v in dict["ConfigList"] as! [Any] {
                    var model = BatchJobSubmitResponseBody.Data.ConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configList = tmp
            }
            if dict.keys.contains("SubmitId") && dict["SubmitId"] != nil {
                self.submitId = dict["SubmitId"] as! String
            }
            if dict.keys.contains("TaskCount") && dict["TaskCount"] != nil {
                self.taskCount = dict["TaskCount"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: BatchJobSubmitResponseBody.Data?

    public var errCode: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchJobSubmitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchJobSubmitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchJobSubmitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchJobSubmitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public var channelType: Int32?

    public var receiveUid: Int64?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.receiveUid != nil {
            map["ReceiveUid"] = self.receiveUid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") && dict["ChannelType"] != nil {
            self.channelType = dict["ChannelType"] as! Int32
        }
        if dict.keys.contains("ReceiveUid") && dict["ReceiveUid"] != nil {
            self.receiveUid = dict["ReceiveUid"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SendMessageResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var errCode: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
