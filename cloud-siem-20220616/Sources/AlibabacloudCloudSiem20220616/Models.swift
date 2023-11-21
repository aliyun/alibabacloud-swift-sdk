import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataProductListLogMapValue : Tea.TeaModel {
    public class ExtraParameters : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var logCode: String?

    public var logName: String?

    public var logNameEn: String?

    public var logNameKey: String?

    public var status: Bool?

    public var canOperateOrNot: Bool?

    public var topic: String?

    public var extraParameters: [DataProductListLogMapValue.ExtraParameters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.logName != nil {
            map["LogName"] = self.logName!
        }
        if self.logNameEn != nil {
            map["LogNameEn"] = self.logNameEn!
        }
        if self.logNameKey != nil {
            map["LogNameKey"] = self.logNameKey!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.canOperateOrNot != nil {
            map["CanOperateOrNot"] = self.canOperateOrNot!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.extraParameters != nil {
            var tmp : [Any] = []
            for k in self.extraParameters! {
                tmp.append(k.toMap())
            }
            map["ExtraParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("LogName") && dict["LogName"] != nil {
            self.logName = dict["LogName"] as! String
        }
        if dict.keys.contains("LogNameEn") && dict["LogNameEn"] != nil {
            self.logNameEn = dict["LogNameEn"] as! String
        }
        if dict.keys.contains("LogNameKey") && dict["LogNameKey"] != nil {
            self.logNameKey = dict["LogNameKey"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("CanOperateOrNot") && dict["CanOperateOrNot"] != nil {
            self.canOperateOrNot = dict["CanOperateOrNot"] as! Bool
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("ExtraParameters") && dict["ExtraParameters"] != nil {
            var tmp : [DataProductListLogMapValue.ExtraParameters] = []
            for v in dict["ExtraParameters"] as! [Any] {
                var model = DataProductListLogMapValue.ExtraParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.extraParameters = tmp
        }
    }
}

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

public class CloseDeliveryRequest : Tea.TeaModel {
    public var logCode: String?

    public var productCode: String?

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
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CloseDeliveryResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class CloseDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseDeliveryResponseBody?

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
            var model = CloseDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAutomateResponseConfigRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAutomateResponseConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class DeleteAutomateResponseConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutomateResponseConfigResponseBody?

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
            var model = DeleteAutomateResponseConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomizeRuleRequest : Tea.TeaModel {
    public var regionId: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DeleteCustomizeRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int32?

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
            self.data = dict["Data"] as! Int32
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

public class DeleteCustomizeRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomizeRuleResponseBody?

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
            var model = DeleteCustomizeRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteQuickQueryRequest : Tea.TeaModel {
    public var regionId: String?

    public var searchName: String?

    public override init() {
        super.init()
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
        if self.searchName != nil {
            map["SearchName"] = self.searchName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchName") && dict["SearchName"] != nil {
            self.searchName = dict["SearchName"] as! String
        }
    }
}

public class DeleteQuickQueryResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class DeleteQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQuickQueryResponseBody?

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
            var model = DeleteQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWhiteRuleListRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteWhiteRuleListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
            self.data = dict["Data"] as! Any
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

public class DeleteWhiteRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWhiteRuleListResponseBody?

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
            var model = DeleteWhiteRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAggregateFunctionRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAggregateFunctionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var function: String?

        public var functionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.function != nil {
                map["Function"] = self.function!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Function") && dict["Function"] != nil {
                self.function = dict["Function"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAggregateFunctionResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAggregateFunctionResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAggregateFunctionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAggregateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAggregateFunctionResponseBody?

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
            var model = DescribeAggregateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertSceneRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAlertSceneResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Targets : Tea.TeaModel {
            public var name: String?

            public var type: String?

            public var value: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var alertName: String?

        public var alertNameId: String?

        public var alertTile: String?

        public var alertTileId: String?

        public var alertType: String?

        public var alertTypeId: String?

        public var targets: [DescribeAlertSceneResponseBody.Data.Targets]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.alertNameId != nil {
                map["AlertNameId"] = self.alertNameId!
            }
            if self.alertTile != nil {
                map["AlertTile"] = self.alertTile!
            }
            if self.alertTileId != nil {
                map["AlertTileId"] = self.alertTileId!
            }
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeId != nil {
                map["AlertTypeId"] = self.alertTypeId!
            }
            if self.targets != nil {
                var tmp : [Any] = []
                for k in self.targets! {
                    tmp.append(k.toMap())
                }
                map["Targets"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("AlertNameId") && dict["AlertNameId"] != nil {
                self.alertNameId = dict["AlertNameId"] as! String
            }
            if dict.keys.contains("AlertTile") && dict["AlertTile"] != nil {
                self.alertTile = dict["AlertTile"] as! String
            }
            if dict.keys.contains("AlertTileId") && dict["AlertTileId"] != nil {
                self.alertTileId = dict["AlertTileId"] as! String
            }
            if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeId") && dict["AlertTypeId"] != nil {
                self.alertTypeId = dict["AlertTypeId"] as! String
            }
            if dict.keys.contains("Targets") && dict["Targets"] != nil {
                var tmp : [DescribeAlertSceneResponseBody.Data.Targets] = []
                for v in dict["Targets"] as! [Any] {
                    var model = DescribeAlertSceneResponseBody.Data.Targets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.targets = tmp
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSceneResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAlertSceneResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSceneResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAlertSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSceneResponseBody?

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
            var model = DescribeAlertSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertSceneByEventRequest : Tea.TeaModel {
    public var incidentUuid: String?

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
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAlertSceneByEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Targets : Tea.TeaModel {
            public var name: String?

            public var type: String?

            public var value: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var alertName: String?

        public var alertNameId: String?

        public var alertTile: String?

        public var alertTileId: String?

        public var alertType: String?

        public var alertTypeId: String?

        public var targets: [DescribeAlertSceneByEventResponseBody.Data.Targets]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.alertNameId != nil {
                map["AlertNameId"] = self.alertNameId!
            }
            if self.alertTile != nil {
                map["AlertTile"] = self.alertTile!
            }
            if self.alertTileId != nil {
                map["AlertTileId"] = self.alertTileId!
            }
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeId != nil {
                map["AlertTypeId"] = self.alertTypeId!
            }
            if self.targets != nil {
                var tmp : [Any] = []
                for k in self.targets! {
                    tmp.append(k.toMap())
                }
                map["Targets"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("AlertNameId") && dict["AlertNameId"] != nil {
                self.alertNameId = dict["AlertNameId"] as! String
            }
            if dict.keys.contains("AlertTile") && dict["AlertTile"] != nil {
                self.alertTile = dict["AlertTile"] as! String
            }
            if dict.keys.contains("AlertTileId") && dict["AlertTileId"] != nil {
                self.alertTileId = dict["AlertTileId"] as! String
            }
            if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeId") && dict["AlertTypeId"] != nil {
                self.alertTypeId = dict["AlertTypeId"] as! String
            }
            if dict.keys.contains("Targets") && dict["Targets"] != nil {
                var tmp : [DescribeAlertSceneByEventResponseBody.Data.Targets] = []
                for v in dict["Targets"] as! [Any] {
                    var model = DescribeAlertSceneByEventResponseBody.Data.Targets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.targets = tmp
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSceneByEventResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAlertSceneByEventResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSceneByEventResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAlertSceneByEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSceneByEventResponseBody?

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
            var model = DescribeAlertSceneByEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertSourceRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var level: [String]?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeAlertSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var source: String?

        public var sourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceName != nil {
                map["SourceName"] = self.sourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceName") && dict["SourceName"] != nil {
                self.sourceName = dict["SourceName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSourceResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAlertSourceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSourceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAlertSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSourceResponseBody?

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
            var model = DescribeAlertSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertSourceWithEventRequest : Tea.TeaModel {
    public var incidentUuid: String?

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
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAlertSourceWithEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var source: String?

        public var sourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceName != nil {
                map["SourceName"] = self.sourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceName") && dict["SourceName"] != nil {
                self.sourceName = dict["SourceName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSourceWithEventResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAlertSourceWithEventResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSourceWithEventResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAlertSourceWithEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSourceWithEventResponseBody?

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
            var model = DescribeAlertSourceWithEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertTypeRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAlertTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertType: String?

        public var alertTypeMds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeMds != nil {
                map["AlertTypeMds"] = self.alertTypeMds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeMds") && dict["AlertTypeMds"] != nil {
                self.alertTypeMds = dict["AlertTypeMds"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertTypeResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAlertTypeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertTypeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAlertTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertTypeResponseBody?

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
            var model = DescribeAlertTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsRequest : Tea.TeaModel {
    public var alertTitle: String?

    public var alertUuid: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var isDefend: String?

    public var level: [String]?

    public var pageSize: Int32?

    public var regionId: String?

    public var source: String?

    public var startTime: Int64?

    public var subUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.alertUuid != nil {
            map["AlertUuid"] = self.alertUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isDefend != nil {
            map["IsDefend"] = self.isDefend!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertTitle") && dict["AlertTitle"] != nil {
            self.alertTitle = dict["AlertTitle"] as! String
        }
        if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
            self.alertUuid = dict["AlertUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IsDefend") && dict["IsDefend"] != nil {
            self.isDefend = dict["IsDefend"] as! String
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! [String]
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DescribeAlertsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AlertInfoList : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
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
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") && dict["Key"] != nil {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") && dict["KeyName"] != nil {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") && dict["Values"] != nil {
                        self.values = dict["Values"] as! String
                    }
                }
            }
            public var alertDesc: String?

            public var alertDescCode: String?

            public var alertDescEn: String?

            public var alertDetail: String?

            public var alertInfoList: [DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList]?

            public var alertLevel: String?

            public var alertName: String?

            public var alertNameCode: String?

            public var alertNameEn: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var alertTitle: String?

            public var alertTitleEn: String?

            public var alertType: String?

            public var alertTypeCode: String?

            public var alertTypeEn: String?

            public var alertUuid: String?

            public var assetList: String?

            public var attCk: String?

            public var cloudCode: String?

            public var endTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isDefend: String?

            public var logTime: String?

            public var logUuid: String?

            public var mainUserId: Int64?

            public var occurTime: String?

            public var startTime: String?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDescCode != nil {
                    map["AlertDescCode"] = self.alertDescCode!
                }
                if self.alertDescEn != nil {
                    map["AlertDescEn"] = self.alertDescEn!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.alertInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AlertInfoList"] = tmp
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameCode != nil {
                    map["AlertNameCode"] = self.alertNameCode!
                }
                if self.alertNameEn != nil {
                    map["AlertNameEn"] = self.alertNameEn!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertTitleEn != nil {
                    map["AlertTitleEn"] = self.alertTitleEn!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeCode != nil {
                    map["AlertTypeCode"] = self.alertTypeCode!
                }
                if self.alertTypeEn != nil {
                    map["AlertTypeEn"] = self.alertTypeEn!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.assetList != nil {
                    map["AssetList"] = self.assetList!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isDefend != nil {
                    map["IsDefend"] = self.isDefend!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logUuid != nil {
                    map["LogUuid"] = self.logUuid!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.occurTime != nil {
                    map["OccurTime"] = self.occurTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") && dict["AlertDesc"] != nil {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDescCode") && dict["AlertDescCode"] != nil {
                    self.alertDescCode = dict["AlertDescCode"] as! String
                }
                if dict.keys.contains("AlertDescEn") && dict["AlertDescEn"] != nil {
                    self.alertDescEn = dict["AlertDescEn"] as! String
                }
                if dict.keys.contains("AlertDetail") && dict["AlertDetail"] != nil {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertInfoList") && dict["AlertInfoList"] != nil {
                    var tmp : [DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in dict["AlertInfoList"] as! [Any] {
                        var model = DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.alertInfoList = tmp
                }
                if dict.keys.contains("AlertLevel") && dict["AlertLevel"] != nil {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameCode") && dict["AlertNameCode"] != nil {
                    self.alertNameCode = dict["AlertNameCode"] as! String
                }
                if dict.keys.contains("AlertNameEn") && dict["AlertNameEn"] != nil {
                    self.alertNameEn = dict["AlertNameEn"] as! String
                }
                if dict.keys.contains("AlertSrcProd") && dict["AlertSrcProd"] != nil {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") && dict["AlertSrcProdModule"] != nil {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AlertTitle") && dict["AlertTitle"] != nil {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertTitleEn") && dict["AlertTitleEn"] != nil {
                    self.alertTitleEn = dict["AlertTitleEn"] as! String
                }
                if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeCode") && dict["AlertTypeCode"] != nil {
                    self.alertTypeCode = dict["AlertTypeCode"] as! String
                }
                if dict.keys.contains("AlertTypeEn") && dict["AlertTypeEn"] != nil {
                    self.alertTypeEn = dict["AlertTypeEn"] as! String
                }
                if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("AssetList") && dict["AssetList"] != nil {
                    self.assetList = dict["AssetList"] as! String
                }
                if dict.keys.contains("AttCk") && dict["AttCk"] != nil {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("CloudCode") && dict["CloudCode"] != nil {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("IsDefend") && dict["IsDefend"] != nil {
                    self.isDefend = dict["IsDefend"] as! String
                }
                if dict.keys.contains("LogTime") && dict["LogTime"] != nil {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogUuid") && dict["LogUuid"] != nil {
                    self.logUuid = dict["LogUuid"] as! String
                }
                if dict.keys.contains("MainUserId") && dict["MainUserId"] != nil {
                    self.mainUserId = dict["MainUserId"] as! Int64
                }
                if dict.keys.contains("OccurTime") && dict["OccurTime"] != nil {
                    self.occurTime = dict["OccurTime"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
                    self.subUserId = dict["SubUserId"] as! Int64
                }
            }
        }
        public var pageInfo: DescribeAlertsResponseBody.Data.PageInfo?

        public var responseData: [DescribeAlertsResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeAlertsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeAlertsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeAlertsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAlertsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAlertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsResponseBody?

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
            var model = DescribeAlertsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsCountRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeAlertsCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var all: Int64?

        public var high: Int64?

        public var low: Int64?

        public var medium: Int64?

        public var productNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                map["All"] = self.all!
            }
            if self.high != nil {
                map["High"] = self.high!
            }
            if self.low != nil {
                map["Low"] = self.low!
            }
            if self.medium != nil {
                map["Medium"] = self.medium!
            }
            if self.productNum != nil {
                map["ProductNum"] = self.productNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                self.all = dict["All"] as! Int64
            }
            if dict.keys.contains("High") && dict["High"] != nil {
                self.high = dict["High"] as! Int64
            }
            if dict.keys.contains("Low") && dict["Low"] != nil {
                self.low = dict["Low"] as! Int64
            }
            if dict.keys.contains("Medium") && dict["Medium"] != nil {
                self.medium = dict["Medium"] as! Int64
            }
            if dict.keys.contains("ProductNum") && dict["ProductNum"] != nil {
                self.productNum = dict["ProductNum"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsCountResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAlertsCountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAlertsCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsCountResponseBody?

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
            var model = DescribeAlertsCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsWithEntityRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var entityId: Int64?

    public var incidentUuid: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sophonTaskId: String?

    public override init() {
        super.init()
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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SophonTaskId") && dict["SophonTaskId"] != nil {
            self.sophonTaskId = dict["SophonTaskId"] as! String
        }
    }
}

public class DescribeAlertsWithEntityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AlertInfoList : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
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
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") && dict["Key"] != nil {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") && dict["KeyName"] != nil {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") && dict["Values"] != nil {
                        self.values = dict["Values"] as! String
                    }
                }
            }
            public var alertDesc: String?

            public var alertDescCode: String?

            public var alertDescEn: String?

            public var alertDetail: String?

            public var alertInfoList: [DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList]?

            public var alertLevel: String?

            public var alertName: String?

            public var alertNameCode: String?

            public var alertNameEn: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var alertTitle: String?

            public var alertTitleEn: String?

            public var alertType: String?

            public var alertTypeCode: String?

            public var alertTypeEn: String?

            public var alertUuid: String?

            public var assetList: String?

            public var attCk: String?

            public var cloudCode: String?

            public var endTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isDefend: String?

            public var logTime: String?

            public var logUuid: String?

            public var mainUserId: Int64?

            public var occurTime: String?

            public var startTime: String?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDescCode != nil {
                    map["AlertDescCode"] = self.alertDescCode!
                }
                if self.alertDescEn != nil {
                    map["AlertDescEn"] = self.alertDescEn!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.alertInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AlertInfoList"] = tmp
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameCode != nil {
                    map["AlertNameCode"] = self.alertNameCode!
                }
                if self.alertNameEn != nil {
                    map["AlertNameEn"] = self.alertNameEn!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertTitleEn != nil {
                    map["AlertTitleEn"] = self.alertTitleEn!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeCode != nil {
                    map["AlertTypeCode"] = self.alertTypeCode!
                }
                if self.alertTypeEn != nil {
                    map["AlertTypeEn"] = self.alertTypeEn!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.assetList != nil {
                    map["AssetList"] = self.assetList!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isDefend != nil {
                    map["IsDefend"] = self.isDefend!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logUuid != nil {
                    map["LogUuid"] = self.logUuid!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.occurTime != nil {
                    map["OccurTime"] = self.occurTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") && dict["AlertDesc"] != nil {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDescCode") && dict["AlertDescCode"] != nil {
                    self.alertDescCode = dict["AlertDescCode"] as! String
                }
                if dict.keys.contains("AlertDescEn") && dict["AlertDescEn"] != nil {
                    self.alertDescEn = dict["AlertDescEn"] as! String
                }
                if dict.keys.contains("AlertDetail") && dict["AlertDetail"] != nil {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertInfoList") && dict["AlertInfoList"] != nil {
                    var tmp : [DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in dict["AlertInfoList"] as! [Any] {
                        var model = DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.alertInfoList = tmp
                }
                if dict.keys.contains("AlertLevel") && dict["AlertLevel"] != nil {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameCode") && dict["AlertNameCode"] != nil {
                    self.alertNameCode = dict["AlertNameCode"] as! String
                }
                if dict.keys.contains("AlertNameEn") && dict["AlertNameEn"] != nil {
                    self.alertNameEn = dict["AlertNameEn"] as! String
                }
                if dict.keys.contains("AlertSrcProd") && dict["AlertSrcProd"] != nil {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") && dict["AlertSrcProdModule"] != nil {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AlertTitle") && dict["AlertTitle"] != nil {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertTitleEn") && dict["AlertTitleEn"] != nil {
                    self.alertTitleEn = dict["AlertTitleEn"] as! String
                }
                if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeCode") && dict["AlertTypeCode"] != nil {
                    self.alertTypeCode = dict["AlertTypeCode"] as! String
                }
                if dict.keys.contains("AlertTypeEn") && dict["AlertTypeEn"] != nil {
                    self.alertTypeEn = dict["AlertTypeEn"] as! String
                }
                if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("AssetList") && dict["AssetList"] != nil {
                    self.assetList = dict["AssetList"] as! String
                }
                if dict.keys.contains("AttCk") && dict["AttCk"] != nil {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("CloudCode") && dict["CloudCode"] != nil {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("IsDefend") && dict["IsDefend"] != nil {
                    self.isDefend = dict["IsDefend"] as! String
                }
                if dict.keys.contains("LogTime") && dict["LogTime"] != nil {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogUuid") && dict["LogUuid"] != nil {
                    self.logUuid = dict["LogUuid"] as! String
                }
                if dict.keys.contains("MainUserId") && dict["MainUserId"] != nil {
                    self.mainUserId = dict["MainUserId"] as! Int64
                }
                if dict.keys.contains("OccurTime") && dict["OccurTime"] != nil {
                    self.occurTime = dict["OccurTime"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
                    self.subUserId = dict["SubUserId"] as! Int64
                }
            }
        }
        public var pageInfo: DescribeAlertsWithEntityResponseBody.Data.PageInfo?

        public var responseData: [DescribeAlertsWithEntityResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeAlertsWithEntityResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeAlertsWithEntityResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeAlertsWithEntityResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsWithEntityResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAlertsWithEntityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAlertsWithEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsWithEntityResponseBody?

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
            var model = DescribeAlertsWithEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsWithEventRequest : Tea.TeaModel {
    public var alertTitle: String?

    public var currentPage: Int32?

    public var incidentUuid: String?

    public var isDefend: String?

    public var level: [String]?

    public var pageSize: Int32?

    public var regionId: String?

    public var source: String?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.isDefend != nil {
            map["IsDefend"] = self.isDefend!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertTitle") && dict["AlertTitle"] != nil {
            self.alertTitle = dict["AlertTitle"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("IsDefend") && dict["IsDefend"] != nil {
            self.isDefend = dict["IsDefend"] as! String
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! [String]
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
            self.subUserId = dict["SubUserId"] as! Int64
        }
    }
}

public class DescribeAlertsWithEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AlertInfoList : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
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
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") && dict["Key"] != nil {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") && dict["KeyName"] != nil {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") && dict["Values"] != nil {
                        self.values = dict["Values"] as! String
                    }
                }
            }
            public var alertDesc: String?

            public var alertDescCode: String?

            public var alertDescEn: String?

            public var alertDetail: String?

            public var alertInfoList: [DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList]?

            public var alertLevel: String?

            public var alertName: String?

            public var alertNameCode: String?

            public var alertNameEn: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var alertTitle: String?

            public var alertTitleEn: String?

            public var alertType: String?

            public var alertTypeCode: String?

            public var alertTypeEn: String?

            public var alertUuid: String?

            public var assetList: String?

            public var attCk: String?

            public var cloudCode: String?

            public var endTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isDefend: String?

            public var logTime: String?

            public var logUuid: String?

            public var mainUserId: Int64?

            public var occurTime: String?

            public var startTime: String?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDescCode != nil {
                    map["AlertDescCode"] = self.alertDescCode!
                }
                if self.alertDescEn != nil {
                    map["AlertDescEn"] = self.alertDescEn!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.alertInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AlertInfoList"] = tmp
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameCode != nil {
                    map["AlertNameCode"] = self.alertNameCode!
                }
                if self.alertNameEn != nil {
                    map["AlertNameEn"] = self.alertNameEn!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertTitleEn != nil {
                    map["AlertTitleEn"] = self.alertTitleEn!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeCode != nil {
                    map["AlertTypeCode"] = self.alertTypeCode!
                }
                if self.alertTypeEn != nil {
                    map["AlertTypeEn"] = self.alertTypeEn!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.assetList != nil {
                    map["AssetList"] = self.assetList!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isDefend != nil {
                    map["IsDefend"] = self.isDefend!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logUuid != nil {
                    map["LogUuid"] = self.logUuid!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.occurTime != nil {
                    map["OccurTime"] = self.occurTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") && dict["AlertDesc"] != nil {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDescCode") && dict["AlertDescCode"] != nil {
                    self.alertDescCode = dict["AlertDescCode"] as! String
                }
                if dict.keys.contains("AlertDescEn") && dict["AlertDescEn"] != nil {
                    self.alertDescEn = dict["AlertDescEn"] as! String
                }
                if dict.keys.contains("AlertDetail") && dict["AlertDetail"] != nil {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertInfoList") && dict["AlertInfoList"] != nil {
                    var tmp : [DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in dict["AlertInfoList"] as! [Any] {
                        var model = DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.alertInfoList = tmp
                }
                if dict.keys.contains("AlertLevel") && dict["AlertLevel"] != nil {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameCode") && dict["AlertNameCode"] != nil {
                    self.alertNameCode = dict["AlertNameCode"] as! String
                }
                if dict.keys.contains("AlertNameEn") && dict["AlertNameEn"] != nil {
                    self.alertNameEn = dict["AlertNameEn"] as! String
                }
                if dict.keys.contains("AlertSrcProd") && dict["AlertSrcProd"] != nil {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") && dict["AlertSrcProdModule"] != nil {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AlertTitle") && dict["AlertTitle"] != nil {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertTitleEn") && dict["AlertTitleEn"] != nil {
                    self.alertTitleEn = dict["AlertTitleEn"] as! String
                }
                if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeCode") && dict["AlertTypeCode"] != nil {
                    self.alertTypeCode = dict["AlertTypeCode"] as! String
                }
                if dict.keys.contains("AlertTypeEn") && dict["AlertTypeEn"] != nil {
                    self.alertTypeEn = dict["AlertTypeEn"] as! String
                }
                if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("AssetList") && dict["AssetList"] != nil {
                    self.assetList = dict["AssetList"] as! String
                }
                if dict.keys.contains("AttCk") && dict["AttCk"] != nil {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("CloudCode") && dict["CloudCode"] != nil {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("IsDefend") && dict["IsDefend"] != nil {
                    self.isDefend = dict["IsDefend"] as! String
                }
                if dict.keys.contains("LogTime") && dict["LogTime"] != nil {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogUuid") && dict["LogUuid"] != nil {
                    self.logUuid = dict["LogUuid"] as! String
                }
                if dict.keys.contains("MainUserId") && dict["MainUserId"] != nil {
                    self.mainUserId = dict["MainUserId"] as! Int64
                }
                if dict.keys.contains("OccurTime") && dict["OccurTime"] != nil {
                    self.occurTime = dict["OccurTime"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
                    self.subUserId = dict["SubUserId"] as! Int64
                }
            }
        }
        public var pageInfo: DescribeAlertsWithEventResponseBody.Data.PageInfo?

        public var responseData: [DescribeAlertsWithEventResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeAlertsWithEventResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeAlertsWithEventResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeAlertsWithEventResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsWithEventResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAlertsWithEventResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAlertsWithEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsWithEventResponseBody?

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
            var model = DescribeAlertsWithEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAttackTimeLineRequest : Tea.TeaModel {
    public var assetName: String?

    public var endTime: Int64?

    public var incidentUuid: String?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetName != nil {
            map["AssetName"] = self.assetName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetName") && dict["AssetName"] != nil {
            self.assetName = dict["AssetName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeAttackTimeLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertLevel: String?

        public var alertName: String?

        public var alertNameCode: String?

        public var alertNameEn: String?

        public var alertSrcProd: String?

        public var alertSrcProdModule: String?

        public var alertTime: Int64?

        public var alertTitle: String?

        public var alertTitleEn: String?

        public var alertType: String?

        public var alertTypeCode: String?

        public var alertTypeEn: String?

        public var alertUuid: String?

        public var assetId: String?

        public var assetList: String?

        public var assetName: String?

        public var attCk: String?

        public var cloudCode: String?

        public var incidentUuid: String?

        public var logTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertLevel != nil {
                map["AlertLevel"] = self.alertLevel!
            }
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.alertNameCode != nil {
                map["AlertNameCode"] = self.alertNameCode!
            }
            if self.alertNameEn != nil {
                map["AlertNameEn"] = self.alertNameEn!
            }
            if self.alertSrcProd != nil {
                map["AlertSrcProd"] = self.alertSrcProd!
            }
            if self.alertSrcProdModule != nil {
                map["AlertSrcProdModule"] = self.alertSrcProdModule!
            }
            if self.alertTime != nil {
                map["AlertTime"] = self.alertTime!
            }
            if self.alertTitle != nil {
                map["AlertTitle"] = self.alertTitle!
            }
            if self.alertTitleEn != nil {
                map["AlertTitleEn"] = self.alertTitleEn!
            }
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeCode != nil {
                map["AlertTypeCode"] = self.alertTypeCode!
            }
            if self.alertTypeEn != nil {
                map["AlertTypeEn"] = self.alertTypeEn!
            }
            if self.alertUuid != nil {
                map["AlertUuid"] = self.alertUuid!
            }
            if self.assetId != nil {
                map["AssetId"] = self.assetId!
            }
            if self.assetList != nil {
                map["AssetList"] = self.assetList!
            }
            if self.assetName != nil {
                map["AssetName"] = self.assetName!
            }
            if self.attCk != nil {
                map["AttCk"] = self.attCk!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.logTime != nil {
                map["LogTime"] = self.logTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertLevel") && dict["AlertLevel"] != nil {
                self.alertLevel = dict["AlertLevel"] as! String
            }
            if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("AlertNameCode") && dict["AlertNameCode"] != nil {
                self.alertNameCode = dict["AlertNameCode"] as! String
            }
            if dict.keys.contains("AlertNameEn") && dict["AlertNameEn"] != nil {
                self.alertNameEn = dict["AlertNameEn"] as! String
            }
            if dict.keys.contains("AlertSrcProd") && dict["AlertSrcProd"] != nil {
                self.alertSrcProd = dict["AlertSrcProd"] as! String
            }
            if dict.keys.contains("AlertSrcProdModule") && dict["AlertSrcProdModule"] != nil {
                self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
            }
            if dict.keys.contains("AlertTime") && dict["AlertTime"] != nil {
                self.alertTime = dict["AlertTime"] as! Int64
            }
            if dict.keys.contains("AlertTitle") && dict["AlertTitle"] != nil {
                self.alertTitle = dict["AlertTitle"] as! String
            }
            if dict.keys.contains("AlertTitleEn") && dict["AlertTitleEn"] != nil {
                self.alertTitleEn = dict["AlertTitleEn"] as! String
            }
            if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeCode") && dict["AlertTypeCode"] != nil {
                self.alertTypeCode = dict["AlertTypeCode"] as! String
            }
            if dict.keys.contains("AlertTypeEn") && dict["AlertTypeEn"] != nil {
                self.alertTypeEn = dict["AlertTypeEn"] as! String
            }
            if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                self.alertUuid = dict["AlertUuid"] as! String
            }
            if dict.keys.contains("AssetId") && dict["AssetId"] != nil {
                self.assetId = dict["AssetId"] as! String
            }
            if dict.keys.contains("AssetList") && dict["AssetList"] != nil {
                self.assetList = dict["AssetList"] as! String
            }
            if dict.keys.contains("AssetName") && dict["AssetName"] != nil {
                self.assetName = dict["AssetName"] as! String
            }
            if dict.keys.contains("AttCk") && dict["AttCk"] != nil {
                self.attCk = dict["AttCk"] as! String
            }
            if dict.keys.contains("CloudCode") && dict["CloudCode"] != nil {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                self.incidentUuid = dict["IncidentUuid"] as! String
            }
            if dict.keys.contains("LogTime") && dict["LogTime"] != nil {
                self.logTime = dict["LogTime"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAttackTimeLineResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAttackTimeLineResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAttackTimeLineResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAttackTimeLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAttackTimeLineResponseBody?

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
            var model = DescribeAttackTimeLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAutomateResponseConfigCounterRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAutomateResponseConfigCounterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var all: Int64?

        public var online: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                map["All"] = self.all!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                self.all = dict["All"] as! Int64
            }
            if dict.keys.contains("Online") && dict["Online"] != nil {
                self.online = dict["Online"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAutomateResponseConfigCounterResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAutomateResponseConfigCounterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAutomateResponseConfigCounterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutomateResponseConfigCounterResponseBody?

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
            var model = DescribeAutomateResponseConfigCounterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAutomateResponseConfigFeatureRequest : Tea.TeaModel {
    public var autoResponseType: String?

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
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoResponseType") && dict["AutoResponseType"] != nil {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAutomateResponseConfigFeatureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RightValueEnums : Tea.TeaModel {
            public var value: String?

            public var valueMds: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueMds != nil {
                    map["ValueMds"] = self.valueMds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueMds") && dict["ValueMds"] != nil {
                    self.valueMds = dict["ValueMds"] as! String
                }
            }
        }
        public class SupportOperators : Tea.TeaModel {
            public var hasRightValue: Bool?

            public var index: Int32?

            public var operator_: String?

            public var operatorDescCn: String?

            public var operatorDescEn: String?

            public var operatorName: String?

            public var supportDataType: String?

            public var supportTag: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hasRightValue != nil {
                    map["HasRightValue"] = self.hasRightValue!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.operatorDescCn != nil {
                    map["OperatorDescCn"] = self.operatorDescCn!
                }
                if self.operatorDescEn != nil {
                    map["OperatorDescEn"] = self.operatorDescEn!
                }
                if self.operatorName != nil {
                    map["OperatorName"] = self.operatorName!
                }
                if self.supportDataType != nil {
                    map["SupportDataType"] = self.supportDataType!
                }
                if self.supportTag != nil {
                    map["SupportTag"] = self.supportTag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HasRightValue") && dict["HasRightValue"] != nil {
                    self.hasRightValue = dict["HasRightValue"] as! Bool
                }
                if dict.keys.contains("Index") && dict["Index"] != nil {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("Operator") && dict["Operator"] != nil {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("OperatorDescCn") && dict["OperatorDescCn"] != nil {
                    self.operatorDescCn = dict["OperatorDescCn"] as! String
                }
                if dict.keys.contains("OperatorDescEn") && dict["OperatorDescEn"] != nil {
                    self.operatorDescEn = dict["OperatorDescEn"] as! String
                }
                if dict.keys.contains("OperatorName") && dict["OperatorName"] != nil {
                    self.operatorName = dict["OperatorName"] as! String
                }
                if dict.keys.contains("SupportDataType") && dict["SupportDataType"] != nil {
                    self.supportDataType = dict["SupportDataType"] as! String
                }
                if dict.keys.contains("SupportTag") && dict["SupportTag"] != nil {
                    self.supportTag = dict["SupportTag"] as! [String]
                }
            }
        }
        public var dataType: String?

        public var feature: String?

        public var rightValueEnums: [DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums]?

        public var supportOperators: [DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators]?

        public override init() {
            super.init()
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
            if self.feature != nil {
                map["Feature"] = self.feature!
            }
            if self.rightValueEnums != nil {
                var tmp : [Any] = []
                for k in self.rightValueEnums! {
                    tmp.append(k.toMap())
                }
                map["RightValueEnums"] = tmp
            }
            if self.supportOperators != nil {
                var tmp : [Any] = []
                for k in self.supportOperators! {
                    tmp.append(k.toMap())
                }
                map["SupportOperators"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Feature") && dict["Feature"] != nil {
                self.feature = dict["Feature"] as! String
            }
            if dict.keys.contains("RightValueEnums") && dict["RightValueEnums"] != nil {
                var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums] = []
                for v in dict["RightValueEnums"] as! [Any] {
                    var model = DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rightValueEnums = tmp
            }
            if dict.keys.contains("SupportOperators") && dict["SupportOperators"] != nil {
                var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators] = []
                for v in dict["SupportOperators"] as! [Any] {
                    var model = DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supportOperators = tmp
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAutomateResponseConfigFeatureResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAutomateResponseConfigFeatureResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAutomateResponseConfigFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutomateResponseConfigFeatureResponseBody?

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
            var model = DescribeAutomateResponseConfigFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAutomateResponseConfigPlayBooksRequest : Tea.TeaModel {
    public var autoResponseType: String?

    public var entityType: String?

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
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoResponseType") && dict["AutoResponseType"] != nil {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAutomateResponseConfigPlayBooksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var name: String?

        public var paramType: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAutomateResponseConfigPlayBooksResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeAutomateResponseConfigPlayBooksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAutomateResponseConfigPlayBooksResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAutomateResponseConfigPlayBooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutomateResponseConfigPlayBooksResponseBody?

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
            var model = DescribeAutomateResponseConfigPlayBooksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudSiemAssetsRequest : Tea.TeaModel {
    public var assetType: String?

    public var currentPage: Int32?

    public var incidentUuid: String?

    public var pageSize: Int32?

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
        if self.assetType != nil {
            map["AssetType"] = self.assetType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetType") && dict["AssetType"] != nil {
            self.assetType = dict["AssetType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCloudSiemAssetsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AssetInfo : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
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
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") && dict["Key"] != nil {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") && dict["KeyName"] != nil {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") && dict["Values"] != nil {
                        self.values = dict["Values"] as! String
                    }
                }
            }
            public var alertUuid: String?

            public var aliuid: Int64?

            public var assetId: String?

            public var assetInfo: [DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo]?

            public var assetName: String?

            public var assetType: String?

            public var cloudCode: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.assetId != nil {
                    map["AssetId"] = self.assetId!
                }
                if self.assetInfo != nil {
                    var tmp : [Any] = []
                    for k in self.assetInfo! {
                        tmp.append(k.toMap())
                    }
                    map["AssetInfo"] = tmp
                }
                if self.assetName != nil {
                    map["AssetName"] = self.assetName!
                }
                if self.assetType != nil {
                    map["AssetType"] = self.assetType!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AssetId") && dict["AssetId"] != nil {
                    self.assetId = dict["AssetId"] as! String
                }
                if dict.keys.contains("AssetInfo") && dict["AssetInfo"] != nil {
                    var tmp : [DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo] = []
                    for v in dict["AssetInfo"] as! [Any] {
                        var model = DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.assetInfo = tmp
                }
                if dict.keys.contains("AssetName") && dict["AssetName"] != nil {
                    self.assetName = dict["AssetName"] as! String
                }
                if dict.keys.contains("AssetType") && dict["AssetType"] != nil {
                    self.assetType = dict["AssetType"] as! String
                }
                if dict.keys.contains("CloudCode") && dict["CloudCode"] != nil {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
                    self.subUserId = dict["SubUserId"] as! Int64
                }
            }
        }
        public var pageInfo: DescribeCloudSiemAssetsResponseBody.Data.PageInfo?

        public var responseData: [DescribeCloudSiemAssetsResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeCloudSiemAssetsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeCloudSiemAssetsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeCloudSiemAssetsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCloudSiemAssetsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCloudSiemAssetsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCloudSiemAssetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemAssetsResponseBody?

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
            var model = DescribeCloudSiemAssetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudSiemAssetsCounterRequest : Tea.TeaModel {
    public var incidentUuid: String?

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
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCloudSiemAssetsCounterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var assetNum: Int32?

        public var assetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetNum != nil {
                map["AssetNum"] = self.assetNum!
            }
            if self.assetType != nil {
                map["AssetType"] = self.assetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssetNum") && dict["AssetNum"] != nil {
                self.assetNum = dict["AssetNum"] as! Int32
            }
            if dict.keys.contains("AssetType") && dict["AssetType"] != nil {
                self.assetType = dict["AssetType"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeCloudSiemAssetsCounterResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeCloudSiemAssetsCounterResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeCloudSiemAssetsCounterResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeCloudSiemAssetsCounterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemAssetsCounterResponseBody?

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
            var model = DescribeCloudSiemAssetsCounterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudSiemEventDetailRequest : Tea.TeaModel {
    public var incidentUuid: String?

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
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCloudSiemEventDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertNum: Int32?

        public var aliuid: Int64?

        public var assetNum: Int32?

        public var attCkLabels: [String]?

        public var dataSources: [String]?

        public var description_: String?

        public var descriptionEn: String?

        public var extContent: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var incidentName: String?

        public var incidentNameEn: String?

        public var incidentUuid: String?

        public var remark: String?

        public var status: Int32?

        public var threatLevel: String?

        public var threatScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertNum != nil {
                map["AlertNum"] = self.alertNum!
            }
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.assetNum != nil {
                map["AssetNum"] = self.assetNum!
            }
            if self.attCkLabels != nil {
                map["AttCkLabels"] = self.attCkLabels!
            }
            if self.dataSources != nil {
                map["DataSources"] = self.dataSources!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionEn != nil {
                map["DescriptionEn"] = self.descriptionEn!
            }
            if self.extContent != nil {
                map["ExtContent"] = self.extContent!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.incidentName != nil {
                map["IncidentName"] = self.incidentName!
            }
            if self.incidentNameEn != nil {
                map["IncidentNameEn"] = self.incidentNameEn!
            }
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            if self.threatScore != nil {
                map["ThreatScore"] = self.threatScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertNum") && dict["AlertNum"] != nil {
                self.alertNum = dict["AlertNum"] as! Int32
            }
            if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("AssetNum") && dict["AssetNum"] != nil {
                self.assetNum = dict["AssetNum"] as! Int32
            }
            if dict.keys.contains("AttCkLabels") && dict["AttCkLabels"] != nil {
                self.attCkLabels = dict["AttCkLabels"] as! [String]
            }
            if dict.keys.contains("DataSources") && dict["DataSources"] != nil {
                self.dataSources = dict["DataSources"] as! [String]
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DescriptionEn") && dict["DescriptionEn"] != nil {
                self.descriptionEn = dict["DescriptionEn"] as! String
            }
            if dict.keys.contains("ExtContent") && dict["ExtContent"] != nil {
                self.extContent = dict["ExtContent"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IncidentName") && dict["IncidentName"] != nil {
                self.incidentName = dict["IncidentName"] as! String
            }
            if dict.keys.contains("IncidentNameEn") && dict["IncidentNameEn"] != nil {
                self.incidentNameEn = dict["IncidentNameEn"] as! String
            }
            if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                self.incidentUuid = dict["IncidentUuid"] as! String
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
                self.threatLevel = dict["ThreatLevel"] as! String
            }
            if dict.keys.contains("ThreatScore") && dict["ThreatScore"] != nil {
                self.threatScore = dict["ThreatScore"] as! Double
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCloudSiemEventDetailResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCloudSiemEventDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCloudSiemEventDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemEventDetailResponseBody?

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
            var model = DescribeCloudSiemEventDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudSiemEventsRequest : Tea.TeaModel {
    public var assetId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var eventName: String?

    public var incidentUuid: String?

    public var order: String?

    public var orderField: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: Int64?

    public var status: Int32?

    public var threadLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threadLevel != nil {
            map["ThreadLevel"] = self.threadLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetId") && dict["AssetId"] != nil {
            self.assetId = dict["AssetId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventName") && dict["EventName"] != nil {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderField") && dict["OrderField"] != nil {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThreadLevel") && dict["ThreadLevel"] != nil {
            self.threadLevel = dict["ThreadLevel"] as! [String]
        }
    }
}

public class DescribeCloudSiemEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertNum: Int32?

            public var aliuid: Int64?

            public var assetNum: Int32?

            public var attCkLabels: [String]?

            public var dataSources: [String]?

            public var description_: String?

            public var descriptionEn: String?

            public var extContent: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var incidentName: String?

            public var incidentNameEn: String?

            public var incidentUuid: String?

            public var remark: String?

            public var status: Int32?

            public var threatLevel: String?

            public var threatScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertNum != nil {
                    map["AlertNum"] = self.alertNum!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.assetNum != nil {
                    map["AssetNum"] = self.assetNum!
                }
                if self.attCkLabels != nil {
                    map["AttCkLabels"] = self.attCkLabels!
                }
                if self.dataSources != nil {
                    map["DataSources"] = self.dataSources!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.descriptionEn != nil {
                    map["DescriptionEn"] = self.descriptionEn!
                }
                if self.extContent != nil {
                    map["ExtContent"] = self.extContent!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.incidentName != nil {
                    map["IncidentName"] = self.incidentName!
                }
                if self.incidentNameEn != nil {
                    map["IncidentNameEn"] = self.incidentNameEn!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.threatLevel != nil {
                    map["ThreatLevel"] = self.threatLevel!
                }
                if self.threatScore != nil {
                    map["ThreatScore"] = self.threatScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertNum") && dict["AlertNum"] != nil {
                    self.alertNum = dict["AlertNum"] as! Int32
                }
                if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AssetNum") && dict["AssetNum"] != nil {
                    self.assetNum = dict["AssetNum"] as! Int32
                }
                if dict.keys.contains("AttCkLabels") && dict["AttCkLabels"] != nil {
                    self.attCkLabels = dict["AttCkLabels"] as! [String]
                }
                if dict.keys.contains("DataSources") && dict["DataSources"] != nil {
                    self.dataSources = dict["DataSources"] as! [String]
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DescriptionEn") && dict["DescriptionEn"] != nil {
                    self.descriptionEn = dict["DescriptionEn"] as! String
                }
                if dict.keys.contains("ExtContent") && dict["ExtContent"] != nil {
                    self.extContent = dict["ExtContent"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("IncidentName") && dict["IncidentName"] != nil {
                    self.incidentName = dict["IncidentName"] as! String
                }
                if dict.keys.contains("IncidentNameEn") && dict["IncidentNameEn"] != nil {
                    self.incidentNameEn = dict["IncidentNameEn"] as! String
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
                    self.threatLevel = dict["ThreatLevel"] as! String
                }
                if dict.keys.contains("ThreatScore") && dict["ThreatScore"] != nil {
                    self.threatScore = dict["ThreatScore"] as! Double
                }
            }
        }
        public var pageInfo: DescribeCloudSiemEventsResponseBody.Data.PageInfo?

        public var responseData: [DescribeCloudSiemEventsResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeCloudSiemEventsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeCloudSiemEventsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeCloudSiemEventsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCloudSiemEventsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCloudSiemEventsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCloudSiemEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemEventsResponseBody?

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
            var model = DescribeCloudSiemEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleRequest : Tea.TeaModel {
    public var regionId: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DescribeCustomizeRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertType: String?

        public var alertTypeMds: String?

        public var aliuid: Int64?

        public var eventTransferExt: String?

        public var eventTransferSwitch: Int32?

        public var eventTransferType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var logSource: String?

        public var logSourceMds: String?

        public var logType: String?

        public var logTypeMds: String?

        public var queryCycle: String?

        public var ruleCondition: String?

        public var ruleDesc: String?

        public var ruleGroup: String?

        public var ruleName: String?

        public var ruleThreshold: String?

        public var ruleType: String?

        public var status: Int32?

        public var threatLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeMds != nil {
                map["AlertTypeMds"] = self.alertTypeMds!
            }
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.eventTransferExt != nil {
                map["EventTransferExt"] = self.eventTransferExt!
            }
            if self.eventTransferSwitch != nil {
                map["EventTransferSwitch"] = self.eventTransferSwitch!
            }
            if self.eventTransferType != nil {
                map["EventTransferType"] = self.eventTransferType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.logSource != nil {
                map["LogSource"] = self.logSource!
            }
            if self.logSourceMds != nil {
                map["LogSourceMds"] = self.logSourceMds!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.logTypeMds != nil {
                map["LogTypeMds"] = self.logTypeMds!
            }
            if self.queryCycle != nil {
                map["QueryCycle"] = self.queryCycle!
            }
            if self.ruleCondition != nil {
                map["RuleCondition"] = self.ruleCondition!
            }
            if self.ruleDesc != nil {
                map["RuleDesc"] = self.ruleDesc!
            }
            if self.ruleGroup != nil {
                map["RuleGroup"] = self.ruleGroup!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleThreshold != nil {
                map["RuleThreshold"] = self.ruleThreshold!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeMds") && dict["AlertTypeMds"] != nil {
                self.alertTypeMds = dict["AlertTypeMds"] as! String
            }
            if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("EventTransferExt") && dict["EventTransferExt"] != nil {
                self.eventTransferExt = dict["EventTransferExt"] as! String
            }
            if dict.keys.contains("EventTransferSwitch") && dict["EventTransferSwitch"] != nil {
                self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
            }
            if dict.keys.contains("EventTransferType") && dict["EventTransferType"] != nil {
                self.eventTransferType = dict["EventTransferType"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
                self.logSource = dict["LogSource"] as! String
            }
            if dict.keys.contains("LogSourceMds") && dict["LogSourceMds"] != nil {
                self.logSourceMds = dict["LogSourceMds"] as! String
            }
            if dict.keys.contains("LogType") && dict["LogType"] != nil {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("LogTypeMds") && dict["LogTypeMds"] != nil {
                self.logTypeMds = dict["LogTypeMds"] as! String
            }
            if dict.keys.contains("QueryCycle") && dict["QueryCycle"] != nil {
                self.queryCycle = dict["QueryCycle"] as! String
            }
            if dict.keys.contains("RuleCondition") && dict["RuleCondition"] != nil {
                self.ruleCondition = dict["RuleCondition"] as! String
            }
            if dict.keys.contains("RuleDesc") && dict["RuleDesc"] != nil {
                self.ruleDesc = dict["RuleDesc"] as! String
            }
            if dict.keys.contains("RuleGroup") && dict["RuleGroup"] != nil {
                self.ruleGroup = dict["RuleGroup"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleThreshold") && dict["RuleThreshold"] != nil {
                self.ruleThreshold = dict["RuleThreshold"] as! String
            }
            if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
                self.threatLevel = dict["ThreatLevel"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCustomizeRuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCustomizeRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCustomizeRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleResponseBody?

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
            var model = DescribeCustomizeRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleCountRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomizeRuleCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var highRuleNum: Int32?

        public var inUseRuleNum: Int32?

        public var lowRuleNum: Int32?

        public var mediumRuleNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.highRuleNum != nil {
                map["HighRuleNum"] = self.highRuleNum!
            }
            if self.inUseRuleNum != nil {
                map["InUseRuleNum"] = self.inUseRuleNum!
            }
            if self.lowRuleNum != nil {
                map["LowRuleNum"] = self.lowRuleNum!
            }
            if self.mediumRuleNum != nil {
                map["MediumRuleNum"] = self.mediumRuleNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HighRuleNum") && dict["HighRuleNum"] != nil {
                self.highRuleNum = dict["HighRuleNum"] as! Int32
            }
            if dict.keys.contains("InUseRuleNum") && dict["InUseRuleNum"] != nil {
                self.inUseRuleNum = dict["InUseRuleNum"] as! Int32
            }
            if dict.keys.contains("LowRuleNum") && dict["LowRuleNum"] != nil {
                self.lowRuleNum = dict["LowRuleNum"] as! Int32
            }
            if dict.keys.contains("MediumRuleNum") && dict["MediumRuleNum"] != nil {
                self.mediumRuleNum = dict["MediumRuleNum"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCustomizeRuleCountResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCustomizeRuleCountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCustomizeRuleCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleCountResponseBody?

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
            var model = DescribeCustomizeRuleCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleTestRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomizeRuleTestResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

        public var simulateData: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.simulateData != nil {
                map["SimulateData"] = self.simulateData!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("SimulateData") && dict["SimulateData"] != nil {
                self.simulateData = dict["SimulateData"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCustomizeRuleTestResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCustomizeRuleTestResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCustomizeRuleTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleTestResponseBody?

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
            var model = DescribeCustomizeRuleTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleTestHistogramRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCustomizeRuleTestHistogramResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var from: Int64?

        public var to: Int64?

        public override init() {
            super.init()
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
            if self.from != nil {
                map["From"] = self.from!
            }
            if self.to != nil {
                map["To"] = self.to!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("From") && dict["From"] != nil {
                self.from = dict["From"] as! Int64
            }
            if dict.keys.contains("To") && dict["To"] != nil {
                self.to = dict["To"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeCustomizeRuleTestHistogramResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeCustomizeRuleTestHistogramResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeCustomizeRuleTestHistogramResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeCustomizeRuleTestHistogramResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleTestHistogramResponseBody?

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
            var model = DescribeCustomizeRuleTestHistogramResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDisposeAndPlaybookRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var entityType: String?

    public var incidentUuid: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDisposeAndPlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class PlaybookList : Tea.TeaModel {
                public var description_: String?

                public var displayName: String?

                public var name: String?

                public var opCode: String?

                public var opLevel: String?

                public var taskConfig: String?

                public var wafPlaybook: Bool?

                public override init() {
                    super.init()
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
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.opCode != nil {
                        map["OpCode"] = self.opCode!
                    }
                    if self.opLevel != nil {
                        map["OpLevel"] = self.opLevel!
                    }
                    if self.taskConfig != nil {
                        map["TaskConfig"] = self.taskConfig!
                    }
                    if self.wafPlaybook != nil {
                        map["WafPlaybook"] = self.wafPlaybook!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OpCode") && dict["OpCode"] != nil {
                        self.opCode = dict["OpCode"] as! String
                    }
                    if dict.keys.contains("OpLevel") && dict["OpLevel"] != nil {
                        self.opLevel = dict["OpLevel"] as! String
                    }
                    if dict.keys.contains("TaskConfig") && dict["TaskConfig"] != nil {
                        self.taskConfig = dict["TaskConfig"] as! String
                    }
                    if dict.keys.contains("WafPlaybook") && dict["WafPlaybook"] != nil {
                        self.wafPlaybook = dict["WafPlaybook"] as! Bool
                    }
                }
            }
            public var alertNum: Int32?

            public var dispose: String?

            public var entityId: Int64?

            public var entityInfo: [String: Any]?

            public var opcodeMap: [String: String]?

            public var opcodeSet: [String]?

            public var playbookList: [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList]?

            public var scope: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertNum != nil {
                    map["AlertNum"] = self.alertNum!
                }
                if self.dispose != nil {
                    map["Dispose"] = self.dispose!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityInfo != nil {
                    map["EntityInfo"] = self.entityInfo!
                }
                if self.opcodeMap != nil {
                    map["OpcodeMap"] = self.opcodeMap!
                }
                if self.opcodeSet != nil {
                    map["OpcodeSet"] = self.opcodeSet!
                }
                if self.playbookList != nil {
                    var tmp : [Any] = []
                    for k in self.playbookList! {
                        tmp.append(k.toMap())
                    }
                    map["PlaybookList"] = tmp
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertNum") && dict["AlertNum"] != nil {
                    self.alertNum = dict["AlertNum"] as! Int32
                }
                if dict.keys.contains("Dispose") && dict["Dispose"] != nil {
                    self.dispose = dict["Dispose"] as! String
                }
                if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                    self.entityId = dict["EntityId"] as! Int64
                }
                if dict.keys.contains("EntityInfo") && dict["EntityInfo"] != nil {
                    self.entityInfo = dict["EntityInfo"] as! [String: Any]
                }
                if dict.keys.contains("OpcodeMap") && dict["OpcodeMap"] != nil {
                    self.opcodeMap = dict["OpcodeMap"] as! [String: String]
                }
                if dict.keys.contains("OpcodeSet") && dict["OpcodeSet"] != nil {
                    self.opcodeSet = dict["OpcodeSet"] as! [String]
                }
                if dict.keys.contains("PlaybookList") && dict["PlaybookList"] != nil {
                    var tmp : [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList] = []
                    for v in dict["PlaybookList"] as! [Any] {
                        var model = DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.playbookList = tmp
                }
                if dict.keys.contains("Scope") && dict["Scope"] != nil {
                    self.scope = dict["Scope"] as! [Any]
                }
            }
        }
        public var pageInfo: DescribeDisposeAndPlaybookResponseBody.Data.PageInfo?

        public var responseData: [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeDisposeAndPlaybookResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeDisposeAndPlaybookResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeDisposeAndPlaybookResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDisposeAndPlaybookResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeDisposeAndPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDisposeAndPlaybookResponseBody?

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
            var model = DescribeDisposeAndPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDisposeStrategyPlaybookRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeDisposeStrategyPlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var playbookName: String?

        public var playbookUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.playbookName != nil {
                map["PlaybookName"] = self.playbookName!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PlaybookName") && dict["PlaybookName"] != nil {
                self.playbookName = dict["PlaybookName"] as! String
            }
            if dict.keys.contains("PlaybookUuid") && dict["PlaybookUuid"] != nil {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeDisposeStrategyPlaybookResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeDisposeStrategyPlaybookResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDisposeStrategyPlaybookResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeDisposeStrategyPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDisposeStrategyPlaybookResponseBody?

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
            var model = DescribeDisposeStrategyPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEntityInfoRequest : Tea.TeaModel {
    public var entityId: Int64?

    public var entityIdentity: String?

    public var incidentUuid: String?

    public var regionId: String?

    public var sophonTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityIdentity != nil {
            map["EntityIdentity"] = self.entityIdentity!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityIdentity") && dict["EntityIdentity"] != nil {
            self.entityIdentity = dict["EntityIdentity"] as! String
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SophonTaskId") && dict["SophonTaskId"] != nil {
            self.sophonTaskId = dict["SophonTaskId"] as! String
        }
    }
}

public class DescribeEntityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entityId: Int64?

        public var entityInfo: [String: Any]?

        public var entityType: String?

        public var tipInfo: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityInfo != nil {
                map["EntityInfo"] = self.entityInfo!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.tipInfo != nil {
                map["TipInfo"] = self.tipInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityInfo") && dict["EntityInfo"] != nil {
                self.entityInfo = dict["EntityInfo"] as! [String: Any]
            }
            if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("TipInfo") && dict["TipInfo"] != nil {
                self.tipInfo = dict["TipInfo"] as! [String: Any]
            }
        }
    }
    public var code: Int32?

    public var data: DescribeEntityInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeEntityInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeEntityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEntityInfoResponseBody?

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
            var model = DescribeEntityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventCountByThreatLevelRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeEventCountByThreatLevelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var eventNum: Int64?

        public var highLevelEventNum: Int64?

        public var lowLevelEventNum: Int64?

        public var mediumLevelEventNum: Int64?

        public var undealEventNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventNum != nil {
                map["EventNum"] = self.eventNum!
            }
            if self.highLevelEventNum != nil {
                map["HighLevelEventNum"] = self.highLevelEventNum!
            }
            if self.lowLevelEventNum != nil {
                map["LowLevelEventNum"] = self.lowLevelEventNum!
            }
            if self.mediumLevelEventNum != nil {
                map["MediumLevelEventNum"] = self.mediumLevelEventNum!
            }
            if self.undealEventNum != nil {
                map["UndealEventNum"] = self.undealEventNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventNum") && dict["EventNum"] != nil {
                self.eventNum = dict["EventNum"] as! Int64
            }
            if dict.keys.contains("HighLevelEventNum") && dict["HighLevelEventNum"] != nil {
                self.highLevelEventNum = dict["HighLevelEventNum"] as! Int64
            }
            if dict.keys.contains("LowLevelEventNum") && dict["LowLevelEventNum"] != nil {
                self.lowLevelEventNum = dict["LowLevelEventNum"] as! Int64
            }
            if dict.keys.contains("MediumLevelEventNum") && dict["MediumLevelEventNum"] != nil {
                self.mediumLevelEventNum = dict["MediumLevelEventNum"] as! Int64
            }
            if dict.keys.contains("UndealEventNum") && dict["UndealEventNum"] != nil {
                self.undealEventNum = dict["UndealEventNum"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: DescribeEventCountByThreatLevelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeEventCountByThreatLevelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeEventCountByThreatLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventCountByThreatLevelResponseBody?

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
            var model = DescribeEventCountByThreatLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventDisposeRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var incidentUuid: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeEventDisposeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReceiverInfo : Tea.TeaModel {
            public var channel: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var messageTitle: String?

            public var receiver: String?

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
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.messageTitle != nil {
                    map["MessageTitle"] = self.messageTitle!
                }
                if self.receiver != nil {
                    map["Receiver"] = self.receiver!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Channel") && dict["Channel"] != nil {
                    self.channel = dict["Channel"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("MessageTitle") && dict["MessageTitle"] != nil {
                    self.messageTitle = dict["MessageTitle"] as! String
                }
                if dict.keys.contains("Receiver") && dict["Receiver"] != nil {
                    self.receiver = dict["Receiver"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var eventDispose: [Any]?

        public var receiverInfo: DescribeEventDisposeResponseBody.Data.ReceiverInfo?

        public var remark: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.receiverInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventDispose != nil {
                map["EventDispose"] = self.eventDispose!
            }
            if self.receiverInfo != nil {
                map["ReceiverInfo"] = self.receiverInfo?.toMap()
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventDispose") && dict["EventDispose"] != nil {
                self.eventDispose = dict["EventDispose"] as! [Any]
            }
            if dict.keys.contains("ReceiverInfo") && dict["ReceiverInfo"] != nil {
                var model = DescribeEventDisposeResponseBody.Data.ReceiverInfo()
                model.fromMap(dict["ReceiverInfo"] as! [String: Any])
                self.receiverInfo = model
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: DescribeEventDisposeResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeEventDisposeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeEventDisposeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventDisposeResponseBody?

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
            var model = DescribeEventDisposeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeJobStatusRequest : Tea.TeaModel {
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

public class DescribeJobStatusResponseBody : Tea.TeaModel {
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
                public var logList: [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList.LogList]?

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
                        var tmp : [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList.LogList] = []
                        for v in dict["LogList"] as! [Any] {
                            var model = DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList.LogList()
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
            public var productList: [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList]?

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
                    var tmp : [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList] = []
                    for v in dict["ProductList"] as! [Any] {
                        var model = DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList()
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

        public var errTaskList: [DescribeJobStatusResponseBody.Data.ErrTaskList]?

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
                var tmp : [DescribeJobStatusResponseBody.Data.ErrTaskList] = []
                for v in dict["ErrTaskList"] as! [Any] {
                    var model = DescribeJobStatusResponseBody.Data.ErrTaskList()
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

    public var data: DescribeJobStatusResponseBody.Data?

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
            var model = DescribeJobStatusResponseBody.Data()
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

public class DescribeJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobStatusResponseBody?

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
            var model = DescribeJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogFieldsRequest : Tea.TeaModel {
    public var logSource: String?

    public var logType: String?

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
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeLogFieldsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activityName: String?

        public var fieldDesc: String?

        public var fieldName: String?

        public var fieldType: String?

        public var logCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityName != nil {
                map["ActivityName"] = self.activityName!
            }
            if self.fieldDesc != nil {
                map["FieldDesc"] = self.fieldDesc!
            }
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.fieldType != nil {
                map["FieldType"] = self.fieldType!
            }
            if self.logCode != nil {
                map["LogCode"] = self.logCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivityName") && dict["ActivityName"] != nil {
                self.activityName = dict["ActivityName"] as! String
            }
            if dict.keys.contains("FieldDesc") && dict["FieldDesc"] != nil {
                self.fieldDesc = dict["FieldDesc"] as! String
            }
            if dict.keys.contains("FieldName") && dict["FieldName"] != nil {
                self.fieldName = dict["FieldName"] as! String
            }
            if dict.keys.contains("FieldType") && dict["FieldType"] != nil {
                self.fieldType = dict["FieldType"] as! String
            }
            if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
                self.logCode = dict["LogCode"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeLogFieldsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeLogFieldsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeLogFieldsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeLogFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogFieldsResponseBody?

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
            var model = DescribeLogFieldsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogSourceRequest : Tea.TeaModel {
    public var logType: String?

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
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeLogSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logSource: String?

        public var logSourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logSource != nil {
                map["LogSource"] = self.logSource!
            }
            if self.logSourceName != nil {
                map["LogSourceName"] = self.logSourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
                self.logSource = dict["LogSource"] as! String
            }
            if dict.keys.contains("LogSourceName") && dict["LogSourceName"] != nil {
                self.logSourceName = dict["LogSourceName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeLogSourceResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeLogSourceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeLogSourceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeLogSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogSourceResponseBody?

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
            var model = DescribeLogSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogStoreRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeLogStoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appendMeta: Bool?

        public var autoSplit: Bool?

        public var enableTracking: Bool?

        public var logStoreName: String?

        public var maxSplitShard: Int32?

        public var shardCount: Int32?

        public var ttl: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appendMeta != nil {
                map["AppendMeta"] = self.appendMeta!
            }
            if self.autoSplit != nil {
                map["AutoSplit"] = self.autoSplit!
            }
            if self.enableTracking != nil {
                map["EnableTracking"] = self.enableTracking!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.maxSplitShard != nil {
                map["MaxSplitShard"] = self.maxSplitShard!
            }
            if self.shardCount != nil {
                map["ShardCount"] = self.shardCount!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppendMeta") && dict["AppendMeta"] != nil {
                self.appendMeta = dict["AppendMeta"] as! Bool
            }
            if dict.keys.contains("AutoSplit") && dict["AutoSplit"] != nil {
                self.autoSplit = dict["AutoSplit"] as! Bool
            }
            if dict.keys.contains("EnableTracking") && dict["EnableTracking"] != nil {
                self.enableTracking = dict["EnableTracking"] as! Bool
            }
            if dict.keys.contains("LogStoreName") && dict["LogStoreName"] != nil {
                self.logStoreName = dict["LogStoreName"] as! String
            }
            if dict.keys.contains("MaxSplitShard") && dict["MaxSplitShard"] != nil {
                self.maxSplitShard = dict["MaxSplitShard"] as! Int32
            }
            if dict.keys.contains("ShardCount") && dict["ShardCount"] != nil {
                self.shardCount = dict["ShardCount"] as! Int32
            }
            if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
                self.ttl = dict["Ttl"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: DescribeLogStoreResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = DescribeLogStoreResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class DescribeLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogStoreResponseBody?

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
            var model = DescribeLogStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogTypeRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeLogTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logType: String?

        public var logTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.logTypeName != nil {
                map["LogTypeName"] = self.logTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogType") && dict["LogType"] != nil {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("LogTypeName") && dict["LogTypeName"] != nil {
                self.logTypeName = dict["LogTypeName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeLogTypeResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeLogTypeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeLogTypeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeLogTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogTypeResponseBody?

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
            var model = DescribeLogTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOperatorsRequest : Tea.TeaModel {
    public var regionId: String?

    public var sceneType: String?

    public override init() {
        super.init()
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
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneType") && dict["SceneType"] != nil {
            self.sceneType = dict["SceneType"] as! String
        }
    }
}

public class DescribeOperatorsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var index: Int32?

        public var operator_: String?

        public var operatorDescCn: String?

        public var operatorDescEn: String?

        public var operatorName: String?

        public var supportDataType: String?

        public var supportTag: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.operatorDescCn != nil {
                map["OperatorDescCn"] = self.operatorDescCn!
            }
            if self.operatorDescEn != nil {
                map["OperatorDescEn"] = self.operatorDescEn!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.supportDataType != nil {
                map["SupportDataType"] = self.supportDataType!
            }
            if self.supportTag != nil {
                map["SupportTag"] = self.supportTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("OperatorDescCn") && dict["OperatorDescCn"] != nil {
                self.operatorDescCn = dict["OperatorDescCn"] as! String
            }
            if dict.keys.contains("OperatorDescEn") && dict["OperatorDescEn"] != nil {
                self.operatorDescEn = dict["OperatorDescEn"] as! String
            }
            if dict.keys.contains("OperatorName") && dict["OperatorName"] != nil {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("SupportDataType") && dict["SupportDataType"] != nil {
                self.supportDataType = dict["SupportDataType"] as! String
            }
            if dict.keys.contains("SupportTag") && dict["SupportTag"] != nil {
                self.supportTag = dict["SupportTag"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeOperatorsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeOperatorsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOperatorsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeOperatorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOperatorsResponseBody?

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
            var model = DescribeOperatorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScopeUsersRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeScopeUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var domains: [String]?

        public var instanceId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeScopeUsersResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeScopeUsersResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeScopeUsersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeScopeUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScopeUsersResponseBody?

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
            var model = DescribeScopeUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStorageRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeStorageResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class DescribeStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStorageResponseBody?

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
            var model = DescribeStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWafScopeRequest : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeWafScopeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliuid: Int64?

        public var domains: [String]?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeWafScopeResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [DescribeWafScopeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeWafScopeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeWafScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWafScopeResponseBody?

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
            var model = DescribeWafScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWhiteRuleListRequest : Tea.TeaModel {
    public var alertName: String?

    public var alertType: String?

    public var currentPage: Int32?

    public var incidentUuid: String?

    public var pageSize: Int32?

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
        if self.alertName != nil {
            map["AlertName"] = self.alertName!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
            self.alertName = dict["AlertName"] as! String
        }
        if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeWhiteRuleListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class Expression : Tea.TeaModel {
                public class Conditions : Tea.TeaModel {
                    public class Left_ : Tea.TeaModel {
                        public var isVar: Bool?

                        public var modifier: String?

                        public var modifierParam: [String: Any]?

                        public var type: String?

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
                            if self.isVar != nil {
                                map["IsVar"] = self.isVar!
                            }
                            if self.modifier != nil {
                                map["Modifier"] = self.modifier!
                            }
                            if self.modifierParam != nil {
                                map["ModifierParam"] = self.modifierParam!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("IsVar") && dict["IsVar"] != nil {
                                self.isVar = dict["IsVar"] as! Bool
                            }
                            if dict.keys.contains("Modifier") && dict["Modifier"] != nil {
                                self.modifier = dict["Modifier"] as! String
                            }
                            if dict.keys.contains("ModifierParam") && dict["ModifierParam"] != nil {
                                self.modifierParam = dict["ModifierParam"] as! [String: Any]
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public class Right_ : Tea.TeaModel {
                        public var isVar: Bool?

                        public var modifier: String?

                        public var modifierParam: [String: Any]?

                        public var type: String?

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
                            if self.isVar != nil {
                                map["IsVar"] = self.isVar!
                            }
                            if self.modifier != nil {
                                map["Modifier"] = self.modifier!
                            }
                            if self.modifierParam != nil {
                                map["ModifierParam"] = self.modifierParam!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("IsVar") && dict["IsVar"] != nil {
                                self.isVar = dict["IsVar"] as! Bool
                            }
                            if dict.keys.contains("Modifier") && dict["Modifier"] != nil {
                                self.modifier = dict["Modifier"] as! String
                            }
                            if dict.keys.contains("ModifierParam") && dict["ModifierParam"] != nil {
                                self.modifierParam = dict["ModifierParam"] as! [String: Any]
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public var isNot: Bool?

                    public var itemId: Int32?

                    public var left_: DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Left_?

                    public var operator_: String?

                    public var right_: DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Right_?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.left_?.validate()
                        try self.right_?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isNot != nil {
                            map["IsNot"] = self.isNot!
                        }
                        if self.itemId != nil {
                            map["ItemId"] = self.itemId!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_?.toMap()
                        }
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.right_ != nil {
                            map["Right"] = self.right_?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IsNot") && dict["IsNot"] != nil {
                            self.isNot = dict["IsNot"] as! Bool
                        }
                        if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                            self.itemId = dict["ItemId"] as! Int32
                        }
                        if dict.keys.contains("Left") && dict["Left"] != nil {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Left_()
                            model.fromMap(dict["Left"] as! [String: Any])
                            self.left_ = model
                        }
                        if dict.keys.contains("Operator") && dict["Operator"] != nil {
                            self.operator_ = dict["Operator"] as! String
                        }
                        if dict.keys.contains("Right") && dict["Right"] != nil {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Right_()
                            model.fromMap(dict["Right"] as! [String: Any])
                            self.right_ = model
                        }
                    }
                }
                public var conditions: [DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions]?

                public var logic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditions != nil {
                        var tmp : [Any] = []
                        for k in self.conditions! {
                            tmp.append(k.toMap())
                        }
                        map["Conditions"] = tmp
                    }
                    if self.logic != nil {
                        map["Logic"] = self.logic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
                        var tmp : [DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions] = []
                        for v in dict["Conditions"] as! [Any] {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.conditions = tmp
                    }
                    if dict.keys.contains("Logic") && dict["Logic"] != nil {
                        self.logic = dict["Logic"] as! String
                    }
                }
            }
            public var alertName: String?

            public var alertNameId: String?

            public var alertType: String?

            public var alertTypeId: String?

            public var alertUuid: String?

            public var aliuid: Int64?

            public var expression: DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var status: Int32?

            public var subAliuid: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.expression?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameId != nil {
                    map["AlertNameId"] = self.alertNameId!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeId != nil {
                    map["AlertTypeId"] = self.alertTypeId!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression?.toMap()
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subAliuid != nil {
                    map["SubAliuid"] = self.subAliuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertName") && dict["AlertName"] != nil {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameId") && dict["AlertNameId"] != nil {
                    self.alertNameId = dict["AlertNameId"] as! String
                }
                if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeId") && dict["AlertTypeId"] != nil {
                    self.alertTypeId = dict["AlertTypeId"] as! String
                }
                if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("Expression") && dict["Expression"] != nil {
                    var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression()
                    model.fromMap(dict["Expression"] as! [String: Any])
                    self.expression = model
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubAliuid") && dict["SubAliuid"] != nil {
                    self.subAliuid = dict["SubAliuid"] as! Int64
                }
            }
        }
        public var pageInfo: DescribeWhiteRuleListResponseBody.Data.PageInfo?

        public var responseData: [DescribeWhiteRuleListResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = DescribeWhiteRuleListResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [DescribeWhiteRuleListResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeWhiteRuleListResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeWhiteRuleListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeWhiteRuleListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeWhiteRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWhiteRuleListResponseBody?

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
            var model = DescribeWhiteRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DoQuickFieldRequest : Tea.TeaModel {
    public var from: Int32?

    public var index: String?

    public var page: Int32?

    public var regionId: String?

    public var reverse: Bool?

    public var size: Int32?

    public var to: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("Index") && dict["Index"] != nil {
            self.index = dict["Index"] as! String
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("To") && dict["To"] != nil {
            self.to = dict["To"] as! Int32
        }
    }
}

public class DoQuickFieldResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aggQueryd: String?

        public var completeOrNot: Bool?

        public var count: Int32?

        public var hasSQL: Bool?

        public var keys: [String]?

        public var limited: Int64?

        public var logs: [Any]?

        public var PQuery: String?

        public var processedRows: Int64?

        public var queryMode: Int32?

        public var whereQuery: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggQueryd != nil {
                map["AggQueryd"] = self.aggQueryd!
            }
            if self.completeOrNot != nil {
                map["CompleteOrNot"] = self.completeOrNot!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.hasSQL != nil {
                map["HasSQL"] = self.hasSQL!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            if self.limited != nil {
                map["Limited"] = self.limited!
            }
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            if self.PQuery != nil {
                map["PQuery"] = self.PQuery!
            }
            if self.processedRows != nil {
                map["ProcessedRows"] = self.processedRows!
            }
            if self.queryMode != nil {
                map["QueryMode"] = self.queryMode!
            }
            if self.whereQuery != nil {
                map["WhereQuery"] = self.whereQuery!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AggQueryd") && dict["AggQueryd"] != nil {
                self.aggQueryd = dict["AggQueryd"] as! String
            }
            if dict.keys.contains("CompleteOrNot") && dict["CompleteOrNot"] != nil {
                self.completeOrNot = dict["CompleteOrNot"] as! Bool
            }
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("HasSQL") && dict["HasSQL"] != nil {
                self.hasSQL = dict["HasSQL"] as! Bool
            }
            if dict.keys.contains("Keys") && dict["Keys"] != nil {
                self.keys = dict["Keys"] as! [String]
            }
            if dict.keys.contains("Limited") && dict["Limited"] != nil {
                self.limited = dict["Limited"] as! Int64
            }
            if dict.keys.contains("Logs") && dict["Logs"] != nil {
                self.logs = dict["Logs"] as! [Any]
            }
            if dict.keys.contains("PQuery") && dict["PQuery"] != nil {
                self.PQuery = dict["PQuery"] as! String
            }
            if dict.keys.contains("ProcessedRows") && dict["ProcessedRows"] != nil {
                self.processedRows = dict["ProcessedRows"] as! Int64
            }
            if dict.keys.contains("QueryMode") && dict["QueryMode"] != nil {
                self.queryMode = dict["QueryMode"] as! Int32
            }
            if dict.keys.contains("WhereQuery") && dict["WhereQuery"] != nil {
                self.whereQuery = dict["WhereQuery"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DoQuickFieldResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = DoQuickFieldResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class DoQuickFieldResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DoQuickFieldResponseBody?

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
            var model = DoQuickFieldResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DoSelfDelegateRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var delegateOrNot: Int32?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.delegateOrNot != nil {
            map["DelegateOrNot"] = self.delegateOrNot!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("DelegateOrNot") && dict["DelegateOrNot"] != nil {
            self.delegateOrNot = dict["DelegateOrNot"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DoSelfDelegateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class DoSelfDelegateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DoSelfDelegateResponseBody?

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
            var model = DoSelfDelegateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCapacityRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetCapacityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var existLogStore: Bool?

        public var preservedCapacity: Int64?

        public var usedCapacity: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.existLogStore != nil {
                map["ExistLogStore"] = self.existLogStore!
            }
            if self.preservedCapacity != nil {
                map["PreservedCapacity"] = self.preservedCapacity!
            }
            if self.usedCapacity != nil {
                map["UsedCapacity"] = self.usedCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExistLogStore") && dict["ExistLogStore"] != nil {
                self.existLogStore = dict["ExistLogStore"] as! Bool
            }
            if dict.keys.contains("PreservedCapacity") && dict["PreservedCapacity"] != nil {
                self.preservedCapacity = dict["PreservedCapacity"] as! Int64
            }
            if dict.keys.contains("UsedCapacity") && dict["UsedCapacity"] != nil {
                self.usedCapacity = dict["UsedCapacity"] as! Double
            }
        }
    }
    public var code: Int32?

    public var data: GetCapacityResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = GetCapacityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class GetCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCapacityResponseBody?

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
            var model = GetCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistogramsRequest : Tea.TeaModel {
    public var from: Int32?

    public var query: String?

    public var regionId: String?

    public var to: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("To") && dict["To"] != nil {
            self.to = dict["To"] as! Int32
        }
    }
}

public class GetHistogramsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Histograms : Tea.TeaModel {
            public var completedOrNot: Bool?

            public var count: Int64?

            public var from: Int32?

            public var to: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedOrNot != nil {
                    map["CompletedOrNot"] = self.completedOrNot!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedOrNot") && dict["CompletedOrNot"] != nil {
                    self.completedOrNot = dict["CompletedOrNot"] as! Bool
                }
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("From") && dict["From"] != nil {
                    self.from = dict["From"] as! Int32
                }
                if dict.keys.contains("To") && dict["To"] != nil {
                    self.to = dict["To"] as! Int32
                }
            }
        }
        public var histograms: [GetHistogramsResponseBody.Data.Histograms]?

        public var server: String?

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
            if self.histograms != nil {
                var tmp : [Any] = []
                for k in self.histograms! {
                    tmp.append(k.toMap())
                }
                map["Histograms"] = tmp
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Histograms") && dict["Histograms"] != nil {
                var tmp : [GetHistogramsResponseBody.Data.Histograms] = []
                for v in dict["Histograms"] as! [Any] {
                    var model = GetHistogramsResponseBody.Data.Histograms()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.histograms = tmp
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: GetHistogramsResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = GetHistogramsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class GetHistogramsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistogramsResponseBody?

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
            var model = GetHistogramsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLogsRequest : Tea.TeaModel {
    public var from: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var reverseOrNot: Bool?

    public var to: Int32?

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
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverseOrNot != nil {
            map["ReverseOrNot"] = self.reverseOrNot!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReverseOrNot") && dict["ReverseOrNot"] != nil {
            self.reverseOrNot = dict["ReverseOrNot"] as! Bool
        }
        if dict.keys.contains("To") && dict["To"] != nil {
            self.to = dict["To"] as! Int32
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class GetLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var completeOrNot: Bool?

            public var cost: Int64?

            public var count: Int32?

            public var hasSql: Bool?

            public var keys: [String]?

            public var lines: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completeOrNot != nil {
                    map["CompleteOrNot"] = self.completeOrNot!
                }
                if self.cost != nil {
                    map["Cost"] = self.cost!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.hasSql != nil {
                    map["HasSql"] = self.hasSql!
                }
                if self.keys != nil {
                    map["Keys"] = self.keys!
                }
                if self.lines != nil {
                    map["Lines"] = self.lines!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompleteOrNot") && dict["CompleteOrNot"] != nil {
                    self.completeOrNot = dict["CompleteOrNot"] as! Bool
                }
                if dict.keys.contains("Cost") && dict["Cost"] != nil {
                    self.cost = dict["Cost"] as! Int64
                }
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("HasSql") && dict["HasSql"] != nil {
                    self.hasSql = dict["HasSql"] as! Bool
                }
                if dict.keys.contains("Keys") && dict["Keys"] != nil {
                    self.keys = dict["Keys"] as! [String]
                }
                if dict.keys.contains("Lines") && dict["Lines"] != nil {
                    self.lines = dict["Lines"] as! [Any]
                }
            }
        }
        public var pageInfo: GetLogsResponseBody.Data.PageInfo?

        public var responseData: GetLogsResponseBody.Data.ResponseData?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
            try self.responseData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                map["ResponseData"] = self.responseData?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = GetLogsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var model = GetLogsResponseBody.Data.ResponseData()
                model.fromMap(dict["ResponseData"] as! [String: Any])
                self.responseData = model
            }
        }
    }
    public var code: Int32?

    public var data: GetLogsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetLogsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogsResponseBody?

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
            var model = GetLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuickQueryRequest : Tea.TeaModel {
    public var regionId: String?

    public var searchName: String?

    public override init() {
        super.init()
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
        if self.searchName != nil {
            map["SearchName"] = self.searchName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchName") && dict["SearchName"] != nil {
            self.searchName = dict["SearchName"] as! String
        }
    }
}

public class GetQuickQueryResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class GetQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuickQueryResponseBody?

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
            var model = GetQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStorageRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetStorageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var canOperate: Bool?

        public var displayRegion: Bool?

        public var region: String?

        public var ttl: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canOperate != nil {
                map["CanOperate"] = self.canOperate!
            }
            if self.displayRegion != nil {
                map["DisplayRegion"] = self.displayRegion!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanOperate") && dict["CanOperate"] != nil {
                self.canOperate = dict["CanOperate"] as! Bool
            }
            if dict.keys.contains("DisplayRegion") && dict["DisplayRegion"] != nil {
                self.displayRegion = dict["DisplayRegion"] as! Bool
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
                self.ttl = dict["Ttl"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: GetStorageResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = GetStorageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class GetStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStorageResponseBody?

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
            var model = GetStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAutomateResponseConfigsRequest : Tea.TeaModel {
    public var actionType: String?

    public var autoResponseType: String?

    public var currentPage: Int32?

    public var id: Int64?

    public var pageSize: Int32?

    public var playbookUuid: String?

    public var regionId: String?

    public var ruleName: String?

    public var status: Int32?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("AutoResponseType") && dict["AutoResponseType"] != nil {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlaybookUuid") && dict["PlaybookUuid"] != nil {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
            self.subUserId = dict["SubUserId"] as! Int64
        }
    }
}

public class ListAutomateResponseConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var actionConfig: String?

            public var actionType: String?

            public var aliuid: Int64?

            public var autoResponseType: String?

            public var executionCondition: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var ruleName: String?

            public var status: Int32?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionConfig != nil {
                    map["ActionConfig"] = self.actionConfig!
                }
                if self.actionType != nil {
                    map["ActionType"] = self.actionType!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.autoResponseType != nil {
                    map["AutoResponseType"] = self.autoResponseType!
                }
                if self.executionCondition != nil {
                    map["ExecutionCondition"] = self.executionCondition!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionConfig") && dict["ActionConfig"] != nil {
                    self.actionConfig = dict["ActionConfig"] as! String
                }
                if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
                    self.actionType = dict["ActionType"] as! String
                }
                if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AutoResponseType") && dict["AutoResponseType"] != nil {
                    self.autoResponseType = dict["AutoResponseType"] as! String
                }
                if dict.keys.contains("ExecutionCondition") && dict["ExecutionCondition"] != nil {
                    self.executionCondition = dict["ExecutionCondition"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
                    self.subUserId = dict["SubUserId"] as! Int64
                }
            }
        }
        public var pageInfo: ListAutomateResponseConfigsResponseBody.Data.PageInfo?

        public var responseData: [ListAutomateResponseConfigsResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = ListAutomateResponseConfigsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [ListAutomateResponseConfigsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListAutomateResponseConfigsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListAutomateResponseConfigsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListAutomateResponseConfigsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListAutomateResponseConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutomateResponseConfigsResponseBody?

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
            var model = ListAutomateResponseConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCloudSiemCustomizeRulesRequest : Tea.TeaModel {
    public var alertType: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var id: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var ruleName: String?

    public var ruleType: String?

    public var startTime: Int64?

    public var status: Int32?

    public var threatLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
            self.threatLevel = dict["ThreatLevel"] as! [String]
        }
    }
}

public class ListCloudSiemCustomizeRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertType: String?

            public var alertTypeMds: String?

            public var aliuid: Int64?

            public var eventTransferExt: String?

            public var eventTransferSwitch: Int32?

            public var eventTransferType: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var logSource: String?

            public var logSourceMds: String?

            public var logType: String?

            public var logTypeMds: String?

            public var queryCycle: String?

            public var ruleCondition: String?

            public var ruleDesc: String?

            public var ruleGroup: String?

            public var ruleName: String?

            public var ruleThreshold: String?

            public var ruleType: String?

            public var status: Int32?

            public var threatLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeMds != nil {
                    map["AlertTypeMds"] = self.alertTypeMds!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.eventTransferExt != nil {
                    map["EventTransferExt"] = self.eventTransferExt!
                }
                if self.eventTransferSwitch != nil {
                    map["EventTransferSwitch"] = self.eventTransferSwitch!
                }
                if self.eventTransferType != nil {
                    map["EventTransferType"] = self.eventTransferType!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.logSource != nil {
                    map["LogSource"] = self.logSource!
                }
                if self.logSourceMds != nil {
                    map["LogSourceMds"] = self.logSourceMds!
                }
                if self.logType != nil {
                    map["LogType"] = self.logType!
                }
                if self.logTypeMds != nil {
                    map["LogTypeMds"] = self.logTypeMds!
                }
                if self.queryCycle != nil {
                    map["QueryCycle"] = self.queryCycle!
                }
                if self.ruleCondition != nil {
                    map["RuleCondition"] = self.ruleCondition!
                }
                if self.ruleDesc != nil {
                    map["RuleDesc"] = self.ruleDesc!
                }
                if self.ruleGroup != nil {
                    map["RuleGroup"] = self.ruleGroup!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleThreshold != nil {
                    map["RuleThreshold"] = self.ruleThreshold!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.threatLevel != nil {
                    map["ThreatLevel"] = self.threatLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeMds") && dict["AlertTypeMds"] != nil {
                    self.alertTypeMds = dict["AlertTypeMds"] as! String
                }
                if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("EventTransferExt") && dict["EventTransferExt"] != nil {
                    self.eventTransferExt = dict["EventTransferExt"] as! String
                }
                if dict.keys.contains("EventTransferSwitch") && dict["EventTransferSwitch"] != nil {
                    self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
                }
                if dict.keys.contains("EventTransferType") && dict["EventTransferType"] != nil {
                    self.eventTransferType = dict["EventTransferType"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
                    self.logSource = dict["LogSource"] as! String
                }
                if dict.keys.contains("LogSourceMds") && dict["LogSourceMds"] != nil {
                    self.logSourceMds = dict["LogSourceMds"] as! String
                }
                if dict.keys.contains("LogType") && dict["LogType"] != nil {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("LogTypeMds") && dict["LogTypeMds"] != nil {
                    self.logTypeMds = dict["LogTypeMds"] as! String
                }
                if dict.keys.contains("QueryCycle") && dict["QueryCycle"] != nil {
                    self.queryCycle = dict["QueryCycle"] as! String
                }
                if dict.keys.contains("RuleCondition") && dict["RuleCondition"] != nil {
                    self.ruleCondition = dict["RuleCondition"] as! String
                }
                if dict.keys.contains("RuleDesc") && dict["RuleDesc"] != nil {
                    self.ruleDesc = dict["RuleDesc"] as! String
                }
                if dict.keys.contains("RuleGroup") && dict["RuleGroup"] != nil {
                    self.ruleGroup = dict["RuleGroup"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleThreshold") && dict["RuleThreshold"] != nil {
                    self.ruleThreshold = dict["RuleThreshold"] as! String
                }
                if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                    self.ruleType = dict["RuleType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
                    self.threatLevel = dict["ThreatLevel"] as! String
                }
            }
        }
        public var pageInfo: ListCloudSiemCustomizeRulesResponseBody.Data.PageInfo?

        public var responseData: [ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = ListCloudSiemCustomizeRulesResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListCloudSiemCustomizeRulesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListCloudSiemCustomizeRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListCloudSiemCustomizeRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudSiemCustomizeRulesResponseBody?

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
            var model = ListCloudSiemCustomizeRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCloudSiemPredefinedRulesRequest : Tea.TeaModel {
    public var alertType: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var id: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var ruleName: String?

    public var ruleType: String?

    public var startTime: Int64?

    public var status: Int32?

    public var threatLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
            self.threatLevel = dict["ThreatLevel"] as! [String]
        }
    }
}

public class ListCloudSiemPredefinedRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertType: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var ruleDescMds: String?

            public var ruleName: String?

            public var ruleNameMds: String?

            public var source: String?

            public var status: Int32?

            public var threatLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.ruleDescMds != nil {
                    map["RuleDescMds"] = self.ruleDescMds!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleNameMds != nil {
                    map["RuleNameMds"] = self.ruleNameMds!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.threatLevel != nil {
                    map["ThreatLevel"] = self.threatLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("RuleDescMds") && dict["RuleDescMds"] != nil {
                    self.ruleDescMds = dict["RuleDescMds"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleNameMds") && dict["RuleNameMds"] != nil {
                    self.ruleNameMds = dict["RuleNameMds"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
                    self.threatLevel = dict["ThreatLevel"] as! String
                }
            }
        }
        public var pageInfo: ListCloudSiemPredefinedRulesResponseBody.Data.PageInfo?

        public var responseData: [ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = ListCloudSiemPredefinedRulesResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListCloudSiemPredefinedRulesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListCloudSiemPredefinedRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListCloudSiemPredefinedRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudSiemPredefinedRulesResponseBody?

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
            var model = ListCloudSiemPredefinedRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomizeRuleTestResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var id: Int64?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomizeRuleTestResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertDesc: String?

            public var alertDetail: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var attCk: String?

            public var eventName: String?

            public var eventType: String?

            public var level: String?

            public var logSource: String?

            public var logTime: String?

            public var logType: String?

            public var mainUserId: String?

            public var onlineStatus: String?

            public var subUserId: String?

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
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.eventName != nil {
                    map["EventName"] = self.eventName!
                }
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.logSource != nil {
                    map["LogSource"] = self.logSource!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logType != nil {
                    map["LogType"] = self.logType!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.onlineStatus != nil {
                    map["OnlineStatus"] = self.onlineStatus!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") && dict["AlertDesc"] != nil {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDetail") && dict["AlertDetail"] != nil {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertSrcProd") && dict["AlertSrcProd"] != nil {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") && dict["AlertSrcProdModule"] != nil {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AttCk") && dict["AttCk"] != nil {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("EventName") && dict["EventName"] != nil {
                    self.eventName = dict["EventName"] as! String
                }
                if dict.keys.contains("EventType") && dict["EventType"] != nil {
                    self.eventType = dict["EventType"] as! String
                }
                if dict.keys.contains("Level") && dict["Level"] != nil {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
                    self.logSource = dict["LogSource"] as! String
                }
                if dict.keys.contains("LogTime") && dict["LogTime"] != nil {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogType") && dict["LogType"] != nil {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("MainUserId") && dict["MainUserId"] != nil {
                    self.mainUserId = dict["MainUserId"] as! String
                }
                if dict.keys.contains("OnlineStatus") && dict["OnlineStatus"] != nil {
                    self.onlineStatus = dict["OnlineStatus"] as! String
                }
                if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
                    self.subUserId = dict["SubUserId"] as! String
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var pageInfo: ListCustomizeRuleTestResultResponseBody.Data.PageInfo?

        public var responseData: [ListCustomizeRuleTestResultResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = ListCustomizeRuleTestResultResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [ListCustomizeRuleTestResultResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListCustomizeRuleTestResultResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListCustomizeRuleTestResultResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListCustomizeRuleTestResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListCustomizeRuleTestResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomizeRuleTestResultResponseBody?

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
            var model = ListCustomizeRuleTestResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeliveryRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListDeliveryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProductList : Tea.TeaModel {
            public class LogList : Tea.TeaModel {
                public class ExtraParameters : Tea.TeaModel {
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
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var canOperateOrNot: Bool?

                public var extraParameters: [ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters]?

                public var logCode: String?

                public var logName: String?

                public var logNameEn: String?

                public var logNameKey: String?

                public var status: Bool?

                public var topic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.canOperateOrNot != nil {
                        map["CanOperateOrNot"] = self.canOperateOrNot!
                    }
                    if self.extraParameters != nil {
                        var tmp : [Any] = []
                        for k in self.extraParameters! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraParameters"] = tmp
                    }
                    if self.logCode != nil {
                        map["LogCode"] = self.logCode!
                    }
                    if self.logName != nil {
                        map["LogName"] = self.logName!
                    }
                    if self.logNameEn != nil {
                        map["LogNameEn"] = self.logNameEn!
                    }
                    if self.logNameKey != nil {
                        map["LogNameKey"] = self.logNameKey!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CanOperateOrNot") && dict["CanOperateOrNot"] != nil {
                        self.canOperateOrNot = dict["CanOperateOrNot"] as! Bool
                    }
                    if dict.keys.contains("ExtraParameters") && dict["ExtraParameters"] != nil {
                        var tmp : [ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters] = []
                        for v in dict["ExtraParameters"] as! [Any] {
                            var model = ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.extraParameters = tmp
                    }
                    if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
                        self.logCode = dict["LogCode"] as! String
                    }
                    if dict.keys.contains("LogName") && dict["LogName"] != nil {
                        self.logName = dict["LogName"] as! String
                    }
                    if dict.keys.contains("LogNameEn") && dict["LogNameEn"] != nil {
                        self.logNameEn = dict["LogNameEn"] as! String
                    }
                    if dict.keys.contains("LogNameKey") && dict["LogNameKey"] != nil {
                        self.logNameKey = dict["LogNameKey"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! Bool
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                }
            }
            public var logList: [ListDeliveryResponseBody.Data.ProductList.LogList]?

            public var logMap: [String: [DataProductListLogMapValue]]?

            public var productCode: String?

            public var productName: String?

            public override init() {
                super.init()
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
                if self.logMap != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.logMap! {
                        var l1 : [Any] = []
                        for k1 in v {
                            l1.append(k1.toMap())
                        }
                        tmp[k] = l1
                    }
                    map["LogMap"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogList") && dict["LogList"] != nil {
                    var tmp : [ListDeliveryResponseBody.Data.ProductList.LogList] = []
                    for v in dict["LogList"] as! [Any] {
                        var model = ListDeliveryResponseBody.Data.ProductList.LogList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.logList = tmp
                }
                if dict.keys.contains("LogMap") && dict["LogMap"] != nil {
                    var tmp : [String: [DataProductListLogMapValue]] = [:]
                    for (k, v) in dict["LogMap"] as! [String: Any] {
                        var l1 : [DataProductListLogMapValue] = []
                        for v1 in v as! [Any] {
                            var model = DataProductListLogMapValue()
                            if v1 != nil {
                                model.fromMap(v1 as! [String: Any])
                            }
                            l1.append(model)
                        }
                        tmp[k] = l1
                    }
                    self.logMap = tmp
                }
                if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                    self.productName = dict["ProductName"] as! String
                }
            }
        }
        public var dashboardUrl: String?

        public var displaySwitchOrNot: Bool?

        public var logStoreName: String?

        public var productList: [ListDeliveryResponseBody.Data.ProductList]?

        public var projectName: String?

        public var searchUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dashboardUrl != nil {
                map["DashboardUrl"] = self.dashboardUrl!
            }
            if self.displaySwitchOrNot != nil {
                map["DisplaySwitchOrNot"] = self.displaySwitchOrNot!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.productList != nil {
                var tmp : [Any] = []
                for k in self.productList! {
                    tmp.append(k.toMap())
                }
                map["ProductList"] = tmp
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.searchUrl != nil {
                map["SearchUrl"] = self.searchUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DashboardUrl") && dict["DashboardUrl"] != nil {
                self.dashboardUrl = dict["DashboardUrl"] as! String
            }
            if dict.keys.contains("DisplaySwitchOrNot") && dict["DisplaySwitchOrNot"] != nil {
                self.displaySwitchOrNot = dict["DisplaySwitchOrNot"] as! Bool
            }
            if dict.keys.contains("LogStoreName") && dict["LogStoreName"] != nil {
                self.logStoreName = dict["LogStoreName"] as! String
            }
            if dict.keys.contains("ProductList") && dict["ProductList"] != nil {
                var tmp : [ListDeliveryResponseBody.Data.ProductList] = []
                for v in dict["ProductList"] as! [Any] {
                    var model = ListDeliveryResponseBody.Data.ProductList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.productList = tmp
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("SearchUrl") && dict["SearchUrl"] != nil {
                self.searchUrl = dict["SearchUrl"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: ListDeliveryResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = ListDeliveryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class ListDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryResponseBody?

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
            var model = ListDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDisposeStrategyRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var effectiveStatus: Int32?

    public var endTime: Int64?

    public var entityIdentity: String?

    public var entityType: String?

    public var order: String?

    public var orderField: String?

    public var pageSize: Int32?

    public var playbookName: String?

    public var playbookTypes: String?

    public var playbookUuid: String?

    public var regionId: String?

    public var sophonTaskId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.effectiveStatus != nil {
            map["EffectiveStatus"] = self.effectiveStatus!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityIdentity != nil {
            map["EntityIdentity"] = self.entityIdentity!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookTypes != nil {
            map["PlaybookTypes"] = self.playbookTypes!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EffectiveStatus") && dict["EffectiveStatus"] != nil {
            self.effectiveStatus = dict["EffectiveStatus"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EntityIdentity") && dict["EntityIdentity"] != nil {
            self.entityIdentity = dict["EntityIdentity"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderField") && dict["OrderField"] != nil {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlaybookName") && dict["PlaybookName"] != nil {
            self.playbookName = dict["PlaybookName"] as! String
        }
        if dict.keys.contains("PlaybookTypes") && dict["PlaybookTypes"] != nil {
            self.playbookTypes = dict["PlaybookTypes"] as! String
        }
        if dict.keys.contains("PlaybookUuid") && dict["PlaybookUuid"] != nil {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SophonTaskId") && dict["SophonTaskId"] != nil {
            self.sophonTaskId = dict["SophonTaskId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListDisposeStrategyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertUuid: String?

            public var aliuid: Int64?

            public var effectiveStatus: Int32?

            public var entity: [Any]?

            public var entityId: Int64?

            public var entityType: String?

            public var errorMessage: String?

            public var finishTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentName: String?

            public var incidentUuid: String?

            public var playbookName: String?

            public var playbookType: String?

            public var playbookUuid: String?

            public var scope: [Any]?

            public var sophonTaskId: String?

            public var status: Int32?

            public var subAliuid: Int64?

            public var taskParam: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.effectiveStatus != nil {
                    map["EffectiveStatus"] = self.effectiveStatus!
                }
                if self.entity != nil {
                    map["Entity"] = self.entity!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentName != nil {
                    map["IncidentName"] = self.incidentName!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.playbookName != nil {
                    map["PlaybookName"] = self.playbookName!
                }
                if self.playbookType != nil {
                    map["PlaybookType"] = self.playbookType!
                }
                if self.playbookUuid != nil {
                    map["PlaybookUuid"] = self.playbookUuid!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                if self.sophonTaskId != nil {
                    map["SophonTaskId"] = self.sophonTaskId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subAliuid != nil {
                    map["SubAliuid"] = self.subAliuid!
                }
                if self.taskParam != nil {
                    map["TaskParam"] = self.taskParam!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertUuid") && dict["AlertUuid"] != nil {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("EffectiveStatus") && dict["EffectiveStatus"] != nil {
                    self.effectiveStatus = dict["EffectiveStatus"] as! Int32
                }
                if dict.keys.contains("Entity") && dict["Entity"] != nil {
                    self.entity = dict["Entity"] as! [Any]
                }
                if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                    self.entityId = dict["EntityId"] as! Int64
                }
                if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                    self.entityType = dict["EntityType"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentName") && dict["IncidentName"] != nil {
                    self.incidentName = dict["IncidentName"] as! String
                }
                if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("PlaybookName") && dict["PlaybookName"] != nil {
                    self.playbookName = dict["PlaybookName"] as! String
                }
                if dict.keys.contains("PlaybookType") && dict["PlaybookType"] != nil {
                    self.playbookType = dict["PlaybookType"] as! String
                }
                if dict.keys.contains("PlaybookUuid") && dict["PlaybookUuid"] != nil {
                    self.playbookUuid = dict["PlaybookUuid"] as! String
                }
                if dict.keys.contains("Scope") && dict["Scope"] != nil {
                    self.scope = dict["Scope"] as! [Any]
                }
                if dict.keys.contains("SophonTaskId") && dict["SophonTaskId"] != nil {
                    self.sophonTaskId = dict["SophonTaskId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubAliuid") && dict["SubAliuid"] != nil {
                    self.subAliuid = dict["SubAliuid"] as! Int64
                }
                if dict.keys.contains("TaskParam") && dict["TaskParam"] != nil {
                    self.taskParam = dict["TaskParam"] as! String
                }
            }
        }
        public var pageInfo: ListDisposeStrategyResponseBody.Data.PageInfo?

        public var responseData: [ListDisposeStrategyResponseBody.Data.ResponseData]?

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
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") && dict["PageInfo"] != nil {
                var model = ListDisposeStrategyResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") && dict["ResponseData"] != nil {
                var tmp : [ListDisposeStrategyResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListDisposeStrategyResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListDisposeStrategyResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDisposeStrategyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListDisposeStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDisposeStrategyResponseBody?

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
            var model = ListDisposeStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOperationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var adminOrNot: Bool?

        public var operationList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminOrNot != nil {
                map["AdminOrNot"] = self.adminOrNot!
            }
            if self.operationList != nil {
                map["OperationList"] = self.operationList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdminOrNot") && dict["AdminOrNot"] != nil {
                self.adminOrNot = dict["AdminOrNot"] as! Bool
            }
            if dict.keys.contains("OperationList") && dict["OperationList"] != nil {
                self.operationList = dict["OperationList"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var data: ListOperationResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = ListOperationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class ListOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationResponseBody?

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
            var model = ListOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQuickQueryRequest : Tea.TeaModel {
    public var offset: Int32?

    public var pageSize: Int32?

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
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Offset") && dict["Offset"] != nil {
            self.offset = dict["Offset"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListQuickQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuickQueryList : Tea.TeaModel {
            public var displayName: String?

            public var query: String?

            public var searchName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                if self.searchName != nil {
                    map["SearchName"] = self.searchName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Query") && dict["Query"] != nil {
                    self.query = dict["Query"] as! String
                }
                if dict.keys.contains("SearchName") && dict["SearchName"] != nil {
                    self.searchName = dict["SearchName"] as! String
                }
            }
        }
        public var count: Int32?

        public var quickQueryList: [ListQuickQueryResponseBody.Data.QuickQueryList]?

        public var total: Int32?

        public override init() {
            super.init()
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
            if self.quickQueryList != nil {
                var tmp : [Any] = []
                for k in self.quickQueryList! {
                    tmp.append(k.toMap())
                }
                map["QuickQueryList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("QuickQueryList") && dict["QuickQueryList"] != nil {
                var tmp : [ListQuickQueryResponseBody.Data.QuickQueryList] = []
                for v in dict["QuickQueryList"] as! [Any] {
                    var model = ListQuickQueryResponseBody.Data.QuickQueryList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.quickQueryList = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListQuickQueryResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = ListQuickQueryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class ListQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuickQueryResponseBody?

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
            var model = ListQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenDeliveryRequest : Tea.TeaModel {
    public var logCode: String?

    public var productCode: String?

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
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogCode") && dict["LogCode"] != nil {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenDeliveryResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class OpenDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenDeliveryResponseBody?

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
            var model = OpenDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostAutomateResponseConfigRequest : Tea.TeaModel {
    public var actionConfig: String?

    public var actionType: String?

    public var autoResponseType: String?

    public var executionCondition: String?

    public var id: Int64?

    public var regionId: String?

    public var ruleName: String?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionConfig != nil {
            map["ActionConfig"] = self.actionConfig!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.executionCondition != nil {
            map["ExecutionCondition"] = self.executionCondition!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionConfig") && dict["ActionConfig"] != nil {
            self.actionConfig = dict["ActionConfig"] as! String
        }
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("AutoResponseType") && dict["AutoResponseType"] != nil {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("ExecutionCondition") && dict["ExecutionCondition"] != nil {
            self.executionCondition = dict["ExecutionCondition"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SubUserId") && dict["SubUserId"] != nil {
            self.subUserId = dict["SubUserId"] as! Int64
        }
    }
}

public class PostAutomateResponseConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class PostAutomateResponseConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostAutomateResponseConfigResponseBody?

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
            var model = PostAutomateResponseConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostCustomizeRuleRequest : Tea.TeaModel {
    public var alertType: String?

    public var alertTypeMds: String?

    public var eventTransferExt: String?

    public var eventTransferSwitch: Int32?

    public var eventTransferType: String?

    public var id: Int64?

    public var logSource: String?

    public var logSourceMds: String?

    public var logType: String?

    public var logTypeMds: String?

    public var queryCycle: String?

    public var regionId: String?

    public var ruleCondition: String?

    public var ruleDesc: String?

    public var ruleGroup: String?

    public var ruleName: String?

    public var ruleThreshold: String?

    public var threatLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.alertTypeMds != nil {
            map["AlertTypeMds"] = self.alertTypeMds!
        }
        if self.eventTransferExt != nil {
            map["EventTransferExt"] = self.eventTransferExt!
        }
        if self.eventTransferSwitch != nil {
            map["EventTransferSwitch"] = self.eventTransferSwitch!
        }
        if self.eventTransferType != nil {
            map["EventTransferType"] = self.eventTransferType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logSourceMds != nil {
            map["LogSourceMds"] = self.logSourceMds!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.logTypeMds != nil {
            map["LogTypeMds"] = self.logTypeMds!
        }
        if self.queryCycle != nil {
            map["QueryCycle"] = self.queryCycle!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleCondition != nil {
            map["RuleCondition"] = self.ruleCondition!
        }
        if self.ruleDesc != nil {
            map["RuleDesc"] = self.ruleDesc!
        }
        if self.ruleGroup != nil {
            map["RuleGroup"] = self.ruleGroup!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleThreshold != nil {
            map["RuleThreshold"] = self.ruleThreshold!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("AlertTypeMds") && dict["AlertTypeMds"] != nil {
            self.alertTypeMds = dict["AlertTypeMds"] as! String
        }
        if dict.keys.contains("EventTransferExt") && dict["EventTransferExt"] != nil {
            self.eventTransferExt = dict["EventTransferExt"] as! String
        }
        if dict.keys.contains("EventTransferSwitch") && dict["EventTransferSwitch"] != nil {
            self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
        }
        if dict.keys.contains("EventTransferType") && dict["EventTransferType"] != nil {
            self.eventTransferType = dict["EventTransferType"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("LogSourceMds") && dict["LogSourceMds"] != nil {
            self.logSourceMds = dict["LogSourceMds"] as! String
        }
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("LogTypeMds") && dict["LogTypeMds"] != nil {
            self.logTypeMds = dict["LogTypeMds"] as! String
        }
        if dict.keys.contains("QueryCycle") && dict["QueryCycle"] != nil {
            self.queryCycle = dict["QueryCycle"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleCondition") && dict["RuleCondition"] != nil {
            self.ruleCondition = dict["RuleCondition"] as! String
        }
        if dict.keys.contains("RuleDesc") && dict["RuleDesc"] != nil {
            self.ruleDesc = dict["RuleDesc"] as! String
        }
        if dict.keys.contains("RuleGroup") && dict["RuleGroup"] != nil {
            self.ruleGroup = dict["RuleGroup"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleThreshold") && dict["RuleThreshold"] != nil {
            self.ruleThreshold = dict["RuleThreshold"] as! String
        }
        if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
            self.threatLevel = dict["ThreatLevel"] as! String
        }
    }
}

public class PostCustomizeRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertType: String?

        public var alertTypeMds: String?

        public var aliuid: Int64?

        public var eventTransferExt: String?

        public var eventTransferSwitch: Int32?

        public var eventTransferType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var logSource: String?

        public var logSourceMds: String?

        public var logType: String?

        public var logTypeMds: String?

        public var queryCycle: String?

        public var ruleCondition: String?

        public var ruleDesc: String?

        public var ruleGroup: String?

        public var ruleName: String?

        public var ruleThreshold: String?

        public var ruleType: String?

        public var status: Int32?

        public var threatLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeMds != nil {
                map["AlertTypeMds"] = self.alertTypeMds!
            }
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.eventTransferExt != nil {
                map["EventTransferExt"] = self.eventTransferExt!
            }
            if self.eventTransferSwitch != nil {
                map["EventTransferSwitch"] = self.eventTransferSwitch!
            }
            if self.eventTransferType != nil {
                map["EventTransferType"] = self.eventTransferType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.logSource != nil {
                map["LogSource"] = self.logSource!
            }
            if self.logSourceMds != nil {
                map["LogSourceMds"] = self.logSourceMds!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.logTypeMds != nil {
                map["LogTypeMds"] = self.logTypeMds!
            }
            if self.queryCycle != nil {
                map["QueryCycle"] = self.queryCycle!
            }
            if self.ruleCondition != nil {
                map["RuleCondition"] = self.ruleCondition!
            }
            if self.ruleDesc != nil {
                map["RuleDesc"] = self.ruleDesc!
            }
            if self.ruleGroup != nil {
                map["RuleGroup"] = self.ruleGroup!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleThreshold != nil {
                map["RuleThreshold"] = self.ruleThreshold!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertType") && dict["AlertType"] != nil {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeMds") && dict["AlertTypeMds"] != nil {
                self.alertTypeMds = dict["AlertTypeMds"] as! String
            }
            if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("EventTransferExt") && dict["EventTransferExt"] != nil {
                self.eventTransferExt = dict["EventTransferExt"] as! String
            }
            if dict.keys.contains("EventTransferSwitch") && dict["EventTransferSwitch"] != nil {
                self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
            }
            if dict.keys.contains("EventTransferType") && dict["EventTransferType"] != nil {
                self.eventTransferType = dict["EventTransferType"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LogSource") && dict["LogSource"] != nil {
                self.logSource = dict["LogSource"] as! String
            }
            if dict.keys.contains("LogSourceMds") && dict["LogSourceMds"] != nil {
                self.logSourceMds = dict["LogSourceMds"] as! String
            }
            if dict.keys.contains("LogType") && dict["LogType"] != nil {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("LogTypeMds") && dict["LogTypeMds"] != nil {
                self.logTypeMds = dict["LogTypeMds"] as! String
            }
            if dict.keys.contains("QueryCycle") && dict["QueryCycle"] != nil {
                self.queryCycle = dict["QueryCycle"] as! String
            }
            if dict.keys.contains("RuleCondition") && dict["RuleCondition"] != nil {
                self.ruleCondition = dict["RuleCondition"] as! String
            }
            if dict.keys.contains("RuleDesc") && dict["RuleDesc"] != nil {
                self.ruleDesc = dict["RuleDesc"] as! String
            }
            if dict.keys.contains("RuleGroup") && dict["RuleGroup"] != nil {
                self.ruleGroup = dict["RuleGroup"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleThreshold") && dict["RuleThreshold"] != nil {
                self.ruleThreshold = dict["RuleThreshold"] as! String
            }
            if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
                self.threatLevel = dict["ThreatLevel"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: PostCustomizeRuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PostCustomizeRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PostCustomizeRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostCustomizeRuleResponseBody?

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
            var model = PostCustomizeRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostCustomizeRuleTestRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var simulatedData: String?

    public var testType: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.simulatedData != nil {
            map["SimulatedData"] = self.simulatedData!
        }
        if self.testType != nil {
            map["TestType"] = self.testType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SimulatedData") && dict["SimulatedData"] != nil {
            self.simulatedData = dict["SimulatedData"] as! String
        }
        if dict.keys.contains("TestType") && dict["TestType"] != nil {
            self.testType = dict["TestType"] as! String
        }
    }
}

public class PostCustomizeRuleTestResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
            self.data = dict["Data"] as! Any
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

public class PostCustomizeRuleTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostCustomizeRuleTestResponseBody?

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
            var model = PostCustomizeRuleTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostEventDisposeAndWhiteruleListRequest : Tea.TeaModel {
    public var eventDispose: String?

    public var incidentUuid: String?

    public var receiverInfo: String?

    public var regionId: String?

    public var remark: String?

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
        if self.eventDispose != nil {
            map["EventDispose"] = self.eventDispose!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.receiverInfo != nil {
            map["ReceiverInfo"] = self.receiverInfo!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventDispose") && dict["EventDispose"] != nil {
            self.eventDispose = dict["EventDispose"] as! String
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("ReceiverInfo") && dict["ReceiverInfo"] != nil {
            self.receiverInfo = dict["ReceiverInfo"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class PostEventDisposeAndWhiteruleListResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class PostEventDisposeAndWhiteruleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostEventDisposeAndWhiteruleListResponseBody?

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
            var model = PostEventDisposeAndWhiteruleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostEventWhiteruleListRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var regionId: String?

    public var whiteruleList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.whiteruleList != nil {
            map["WhiteruleList"] = self.whiteruleList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WhiteruleList") && dict["WhiteruleList"] != nil {
            self.whiteruleList = dict["WhiteruleList"] as! String
        }
    }
}

public class PostEventWhiteruleListResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class PostEventWhiteruleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostEventWhiteruleListResponseBody?

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
            var model = PostEventWhiteruleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostFinishCustomizeRuleTestRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class PostFinishCustomizeRuleTestResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
            self.data = dict["Data"] as! Any
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

public class PostFinishCustomizeRuleTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostFinishCustomizeRuleTestResponseBody?

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
            var model = PostFinishCustomizeRuleTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PostRuleStatusChangeRequest : Tea.TeaModel {
    public var ids: String?

    public var inUse: Bool?

    public var regionId: String?

    public var ruleType: String?

    public override init() {
        super.init()
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
            map["Ids"] = self.ids!
        }
        if self.inUse != nil {
            map["InUse"] = self.inUse!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("InUse") && dict["InUse"] != nil {
            self.inUse = dict["InUse"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
    }
}

public class PostRuleStatusChangeResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
            self.data = dict["Data"] as! Any
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

public class PostRuleStatusChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostRuleStatusChangeResponseBody?

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
            var model = PostRuleStatusChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestoreCapacityRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RestoreCapacityResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class RestoreCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreCapacityResponseBody?

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
            var model = RestoreCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveQuickQueryRequest : Tea.TeaModel {
    public var displayName: String?

    public var query: String?

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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SaveQuickQueryResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class SaveQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveQuickQueryResponseBody?

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
            var model = SaveQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetStorageRequest : Tea.TeaModel {
    public var region: String?

    public var regionId: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int32
        }
    }
}

public class SetStorageResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class SetStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetStorageResponseBody?

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
            var model = SetStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ShowQuickAnalysisRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ShowQuickAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var indexList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.indexList != nil {
                map["IndexList"] = self.indexList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IndexList") && dict["IndexList"] != nil {
                self.indexList = dict["IndexList"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var data: ShowQuickAnalysisResponseBody.Data?

    public var dyCode: String?

    public var dyMessage: String?

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
        if self.dyCode != nil {
            map["DyCode"] = self.dyCode!
        }
        if self.dyMessage != nil {
            map["DyMessage"] = self.dyMessage!
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
            var model = ShowQuickAnalysisResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DyCode") && dict["DyCode"] != nil {
            self.dyCode = dict["DyCode"] as! String
        }
        if dict.keys.contains("DyMessage") && dict["DyMessage"] != nil {
            self.dyMessage = dict["DyMessage"] as! String
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

public class ShowQuickAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ShowQuickAnalysisResponseBody?

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
            var model = ShowQuickAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAutomateResponseConfigStatusRequest : Tea.TeaModel {
    public var ids: String?

    public var inUse: Bool?

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
            map["Ids"] = self.ids!
        }
        if self.inUse != nil {
            map["InUse"] = self.inUse!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("InUse") && dict["InUse"] != nil {
            self.inUse = dict["InUse"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAutomateResponseConfigStatusResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UpdateAutomateResponseConfigStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAutomateResponseConfigStatusResponseBody?

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
            var model = UpdateAutomateResponseConfigStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWhiteRuleListRequest : Tea.TeaModel {
    public var expression: String?

    public var incidentUuid: String?

    public var regionId: String?

    public var whiteRuleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.whiteRuleId != nil {
            map["WhiteRuleId"] = self.whiteRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Expression") && dict["Expression"] != nil {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("IncidentUuid") && dict["IncidentUuid"] != nil {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WhiteRuleId") && dict["WhiteRuleId"] != nil {
            self.whiteRuleId = dict["WhiteRuleId"] as! Int64
        }
    }
}

public class UpdateWhiteRuleListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
            self.data = dict["Data"] as! Any
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

public class UpdateWhiteRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWhiteRuleListResponseBody?

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
            var model = UpdateWhiteRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
