import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCustomerLabelRequest : Tea.TeaModel {
    public var endtime: String?

    public var labelSeries: String?

    public var labelTypes: [String]?

    public var organization: String?

    public var PK: Int64?

    public var startTime: String?

    public var token: String?

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
        if self.endtime != nil {
            map["Endtime"] = self.endtime!
        }
        if self.labelSeries != nil {
            map["LabelSeries"] = self.labelSeries!
        }
        if self.labelTypes != nil {
            map["LabelTypes"] = self.labelTypes!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endtime"] as? String {
            self.endtime = value
        }
        if let value = dict["LabelSeries"] as? String {
            self.labelSeries = value
        }
        if let value = dict["LabelTypes"] as? [String] {
            self.labelTypes = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class AddCustomerLabelResponseBody : Tea.TeaModel {
    public var code: String?

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

public class AddCustomerLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomerLabelResponseBody?

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
            var model = AddCustomerLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchFetchAccountLabelRequest : Tea.TeaModel {
    public var instant: Bool?

    public var labelSeriesList: [String]?

    public var organization: String?

    public var pk: Int64?

    public var token: String?

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
        if self.instant != nil {
            map["Instant"] = self.instant!
        }
        if self.labelSeriesList != nil {
            map["LabelSeriesList"] = self.labelSeriesList!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instant"] as? Bool {
            self.instant = value
        }
        if let value = dict["LabelSeriesList"] as? [String] {
            self.labelSeriesList = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["Pk"] as? Int64 {
            self.pk = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class BatchFetchAccountLabelShrinkRequest : Tea.TeaModel {
    public var instant: Bool?

    public var labelSeriesListShrink: String?

    public var organization: String?

    public var pk: Int64?

    public var token: String?

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
        if self.instant != nil {
            map["Instant"] = self.instant!
        }
        if self.labelSeriesListShrink != nil {
            map["LabelSeriesList"] = self.labelSeriesListShrink!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instant"] as? Bool {
            self.instant = value
        }
        if let value = dict["LabelSeriesList"] as? String {
            self.labelSeriesListShrink = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["Pk"] as? Int64 {
            self.pk = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class BatchFetchAccountLabelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var creator: String?

        public var endTime: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var kp: Int64?

        public var label: String?

        public var labelSeries: String?

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
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.kp != nil {
                map["Kp"] = self.kp!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.labelSeries != nil {
                map["LabelSeries"] = self.labelSeries!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Kp"] as? Int64 {
                self.kp = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["LabelSeries"] as? String {
                self.labelSeries = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var data: [BatchFetchAccountLabelResponseBody.Data]?

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
        if self.count != nil {
            map["Count"] = self.count!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [BatchFetchAccountLabelResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = BatchFetchAccountLabelResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class BatchFetchAccountLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchFetchAccountLabelResponseBody?

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
            var model = BatchFetchAccountLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomerLabelRequest : Tea.TeaModel {
    public var labelSeries: String?

    public var labelTypes: [String]?

    public var organization: String?

    public var PK: Int64?

    public var token: String?

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
        if self.labelSeries != nil {
            map["LabelSeries"] = self.labelSeries!
        }
        if self.labelTypes != nil {
            map["LabelTypes"] = self.labelTypes!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelSeries"] as? String {
            self.labelSeries = value
        }
        if let value = dict["LabelTypes"] as? [String] {
            self.labelTypes = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class DeleteCustomerLabelResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteCustomerLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomerLabelResponseBody?

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
            var model = DeleteCustomerLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCustomerLabelRequest : Tea.TeaModel {
    public var instant: Bool?

    public var labelSeries: String?

    public var PK: Int64?

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
        if self.instant != nil {
            map["Instant"] = self.instant!
        }
        if self.labelSeries != nil {
            map["LabelSeries"] = self.labelSeries!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instant"] as? Bool {
            self.instant = value
        }
        if let value = dict["LabelSeries"] as? String {
            self.labelSeries = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class QueryCustomerLabelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomerLabel : Tea.TeaModel {
            public var creator: String?

            public var endTimeStr: String?

            public var gmtCreatedStr: String?

            public var gmtModifiedStr: String?

            public var id: String?

            public var label: String?

            public var labelSeries: String?

            public var startTimeStr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.endTimeStr != nil {
                    map["EndTimeStr"] = self.endTimeStr!
                }
                if self.gmtCreatedStr != nil {
                    map["GmtCreatedStr"] = self.gmtCreatedStr!
                }
                if self.gmtModifiedStr != nil {
                    map["GmtModifiedStr"] = self.gmtModifiedStr!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.labelSeries != nil {
                    map["LabelSeries"] = self.labelSeries!
                }
                if self.startTimeStr != nil {
                    map["StartTimeStr"] = self.startTimeStr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["EndTimeStr"] as? String {
                    self.endTimeStr = value
                }
                if let value = dict["GmtCreatedStr"] as? String {
                    self.gmtCreatedStr = value
                }
                if let value = dict["GmtModifiedStr"] as? String {
                    self.gmtModifiedStr = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["LabelSeries"] as? String {
                    self.labelSeries = value
                }
                if let value = dict["StartTimeStr"] as? String {
                    self.startTimeStr = value
                }
            }
        }
        public var customerLabel: [QueryCustomerLabelResponseBody.Data.CustomerLabel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerLabel != nil {
                var tmp : [Any] = []
                for k in self.customerLabel! {
                    tmp.append(k.toMap())
                }
                map["CustomerLabel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerLabel"] as? [Any?] {
                var tmp : [QueryCustomerLabelResponseBody.Data.CustomerLabel] = []
                for v in value {
                    if v != nil {
                        var model = QueryCustomerLabelResponseBody.Data.CustomerLabel()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customerLabel = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryCustomerLabelResponseBody.Data?

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
            var model = QueryCustomerLabelResponseBody.Data()
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

public class QueryCustomerLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomerLabelResponseBody?

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
            var model = QueryCustomerLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCustomerLabelByConfigGroupRequest : Tea.TeaModel {
    public var groupType: String?

    public var PK: Int64?

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
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupType"] as? String {
            self.groupType = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class QueryCustomerLabelByConfigGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var label: String?

        public var labelSeries: String?

        public override init() {
            super.init()
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
                map["Label"] = self.label!
            }
            if self.labelSeries != nil {
                map["LabelSeries"] = self.labelSeries!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["LabelSeries"] as? String {
                self.labelSeries = value
            }
        }
    }
    public var code: String?

    public var data: [QueryCustomerLabelByConfigGroupResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryCustomerLabelByConfigGroupResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryCustomerLabelByConfigGroupResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QueryCustomerLabelByConfigGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomerLabelByConfigGroupResponseBody?

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
            var model = QueryCustomerLabelByConfigGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
