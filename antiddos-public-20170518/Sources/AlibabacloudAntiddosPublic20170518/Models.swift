import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeBgpPackByIpRequest : Tea.TeaModel {
    public var ddosRegionId: String?

    public var ip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
    }
}

public class DescribeBgpPackByIpResponseBody : Tea.TeaModel {
    public class DdosbgpInfo : Tea.TeaModel {
        public var baseThreshold: Int32?

        public var ddosbgpInstanceId: String?

        public var elasticThreshold: Int32?

        public var expireTime: Int64?

        public var ip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baseThreshold != nil {
                map["BaseThreshold"] = self.baseThreshold!
            }
            if self.ddosbgpInstanceId != nil {
                map["DdosbgpInstanceId"] = self.ddosbgpInstanceId!
            }
            if self.elasticThreshold != nil {
                map["ElasticThreshold"] = self.elasticThreshold!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BaseThreshold"] as? Int32 {
                self.baseThreshold = value
            }
            if let value = dict["DdosbgpInstanceId"] as? String {
                self.ddosbgpInstanceId = value
            }
            if let value = dict["ElasticThreshold"] as? Int32 {
                self.elasticThreshold = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
        }
    }
    public var code: Int32?

    public var ddosbgpInfo: DescribeBgpPackByIpResponseBody.DdosbgpInfo?

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
        try self.ddosbgpInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.ddosbgpInfo != nil {
            map["DdosbgpInfo"] = self.ddosbgpInfo?.toMap()
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["DdosbgpInfo"] as? [String: Any?] {
            var model = DescribeBgpPackByIpResponseBody.DdosbgpInfo()
            model.fromMap(value)
            self.ddosbgpInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBgpPackByIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBgpPackByIpResponseBody?

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
            var model = DescribeBgpPackByIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCapRequest : Tea.TeaModel {
    public var begTime: Int64?

    public var ddosRegionId: String?

    public var instanceId: String?

    public var instanceType: String?

    public var internetIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begTime != nil {
            map["BegTime"] = self.begTime!
        }
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetIp != nil {
            map["InternetIp"] = self.internetIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BegTime"] as? Int64 {
            self.begTime = value
        }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InternetIp"] as? String {
            self.internetIp = value
        }
    }
}

public class DescribeCapResponseBody : Tea.TeaModel {
    public class CapUrl : Tea.TeaModel {
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var capUrl: DescribeCapResponseBody.CapUrl?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.capUrl?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capUrl != nil {
            map["CapUrl"] = self.capUrl?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CapUrl"] as? [String: Any?] {
            var model = DescribeCapResponseBody.CapUrl()
            model.fromMap(value)
            self.capUrl = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCapResponseBody?

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
            var model = DescribeCapResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDdosCountRequest : Tea.TeaModel {
    public var ddosRegionId: String?

    public var instanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
    }
}

public class DescribeDdosCountResponseBody : Tea.TeaModel {
    public class DdosCount : Tea.TeaModel {
        public var blackholeCount: Int32?

        public var defenseCount: Int32?

        public var instacenCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackholeCount != nil {
                map["BlackholeCount"] = self.blackholeCount!
            }
            if self.defenseCount != nil {
                map["DefenseCount"] = self.defenseCount!
            }
            if self.instacenCount != nil {
                map["InstacenCount"] = self.instacenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackholeCount"] as? Int32 {
                self.blackholeCount = value
            }
            if let value = dict["DefenseCount"] as? Int32 {
                self.defenseCount = value
            }
            if let value = dict["InstacenCount"] as? Int32 {
                self.instacenCount = value
            }
        }
    }
    public var ddosCount: DescribeDdosCountResponseBody.DdosCount?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ddosCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosCount != nil {
            map["DdosCount"] = self.ddosCount?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DdosCount"] as? [String: Any?] {
            var model = DescribeDdosCountResponseBody.DdosCount()
            model.fromMap(value)
            self.ddosCount = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDdosCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDdosCountResponseBody?

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
            var model = DescribeDdosCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDdosCreditRequest : Tea.TeaModel {
    public var ddosRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
    }
}

public class DescribeDdosCreditResponseBody : Tea.TeaModel {
    public class DdosCredit : Tea.TeaModel {
        public var blackholeTime: Int32?

        public var score: Int32?

        public var scoreLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackholeTime != nil {
                map["BlackholeTime"] = self.blackholeTime!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.scoreLevel != nil {
                map["ScoreLevel"] = self.scoreLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackholeTime"] as? Int32 {
                self.blackholeTime = value
            }
            if let value = dict["Score"] as? Int32 {
                self.score = value
            }
            if let value = dict["ScoreLevel"] as? String {
                self.scoreLevel = value
            }
        }
    }
    public var ddosCredit: DescribeDdosCreditResponseBody.DdosCredit?

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
        try self.ddosCredit?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosCredit != nil {
            map["DdosCredit"] = self.ddosCredit?.toMap()
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
        if let value = dict["DdosCredit"] as? [String: Any?] {
            var model = DescribeDdosCreditResponseBody.DdosCredit()
            model.fromMap(value)
            self.ddosCredit = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDdosCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDdosCreditResponseBody?

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
            var model = DescribeDdosCreditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDdosEventListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var ddosRegionId: String?

    public var instanceId: String?

    public var instanceType: String?

    public var internetIp: String?

    public var pageSize: Int32?

    public var queryDays: Int32?

    public override init() {
        super.init()
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
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetIp != nil {
            map["InternetIp"] = self.internetIp!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDays != nil {
            map["QueryDays"] = self.queryDays!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InternetIp"] as? String {
            self.internetIp = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryDays"] as? Int32 {
            self.queryDays = value
        }
    }
}

public class DescribeDdosEventListResponseBody : Tea.TeaModel {
    public class DdosEventList : Tea.TeaModel {
        public class DdosEvent : Tea.TeaModel {
            public var ddosStatus: String?

            public var ddosType: String?

            public var delayTime: Int64?

            public var endTime: Int64?

            public var startTime: Int64?

            public var unBlackholeTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ddosStatus != nil {
                    map["DdosStatus"] = self.ddosStatus!
                }
                if self.ddosType != nil {
                    map["DdosType"] = self.ddosType!
                }
                if self.delayTime != nil {
                    map["DelayTime"] = self.delayTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.unBlackholeTime != nil {
                    map["UnBlackholeTime"] = self.unBlackholeTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DdosStatus"] as? String {
                    self.ddosStatus = value
                }
                if let value = dict["DdosType"] as? String {
                    self.ddosType = value
                }
                if let value = dict["DelayTime"] as? Int64 {
                    self.delayTime = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["UnBlackholeTime"] as? Int64 {
                    self.unBlackholeTime = value
                }
            }
        }
        public var ddosEvent: [DescribeDdosEventListResponseBody.DdosEventList.DdosEvent]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ddosEvent != nil {
                var tmp : [Any] = []
                for k in self.ddosEvent! {
                    tmp.append(k.toMap())
                }
                map["DdosEvent"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DdosEvent"] as? [Any?] {
                var tmp : [DescribeDdosEventListResponseBody.DdosEventList.DdosEvent] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDdosEventListResponseBody.DdosEventList.DdosEvent()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ddosEvent = tmp
            }
        }
    }
    public var ddosEventList: DescribeDdosEventListResponseBody.DdosEventList?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ddosEventList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosEventList != nil {
            map["DdosEventList"] = self.ddosEventList?.toMap()
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
        if let value = dict["DdosEventList"] as? [String: Any?] {
            var model = DescribeDdosEventListResponseBody.DdosEventList()
            model.fromMap(value)
            self.ddosEventList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeDdosEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDdosEventListResponseBody?

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
            var model = DescribeDdosEventListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDdosThresholdRequest : Tea.TeaModel {
    public var ddosRegionId: String?

    public var ddosType: String?

    public var instanceIds: [String]?

    public var instanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.ddosType != nil {
            map["DdosType"] = self.ddosType!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["DdosType"] as? String {
            self.ddosType = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
    }
}

public class DescribeDdosThresholdResponseBody : Tea.TeaModel {
    public class Thresholds : Tea.TeaModel {
        public class Threshold : Tea.TeaModel {
            public var bps: Int32?

            public var ddosType: String?

            public var elasticBps: Int32?

            public var instanceId: String?

            public var internetIp: String?

            public var isAuto: Bool?

            public var maxBps: Int32?

            public var maxPps: Int32?

            public var pps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.ddosType != nil {
                    map["DdosType"] = self.ddosType!
                }
                if self.elasticBps != nil {
                    map["ElasticBps"] = self.elasticBps!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.internetIp != nil {
                    map["InternetIp"] = self.internetIp!
                }
                if self.isAuto != nil {
                    map["IsAuto"] = self.isAuto!
                }
                if self.maxBps != nil {
                    map["MaxBps"] = self.maxBps!
                }
                if self.maxPps != nil {
                    map["MaxPps"] = self.maxPps!
                }
                if self.pps != nil {
                    map["Pps"] = self.pps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bps"] as? Int32 {
                    self.bps = value
                }
                if let value = dict["DdosType"] as? String {
                    self.ddosType = value
                }
                if let value = dict["ElasticBps"] as? Int32 {
                    self.elasticBps = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InternetIp"] as? String {
                    self.internetIp = value
                }
                if let value = dict["IsAuto"] as? Bool {
                    self.isAuto = value
                }
                if let value = dict["MaxBps"] as? Int32 {
                    self.maxBps = value
                }
                if let value = dict["MaxPps"] as? Int32 {
                    self.maxPps = value
                }
                if let value = dict["Pps"] as? Int32 {
                    self.pps = value
                }
            }
        }
        public var threshold: [DescribeDdosThresholdResponseBody.Thresholds.Threshold]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.threshold != nil {
                var tmp : [Any] = []
                for k in self.threshold! {
                    tmp.append(k.toMap())
                }
                map["Threshold"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Threshold"] as? [Any?] {
                var tmp : [DescribeDdosThresholdResponseBody.Thresholds.Threshold] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDdosThresholdResponseBody.Thresholds.Threshold()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.threshold = tmp
            }
        }
    }
    public var requestId: String?

    public var thresholds: DescribeDdosThresholdResponseBody.Thresholds?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.thresholds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.thresholds != nil {
            map["Thresholds"] = self.thresholds?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Thresholds"] as? [String: Any?] {
            var model = DescribeDdosThresholdResponseBody.Thresholds()
            model.fromMap(value)
            self.thresholds = model
        }
    }
}

public class DescribeDdosThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDdosThresholdResponseBody?

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
            var model = DescribeDdosThresholdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var ddosRegionId: String?

    public var ddosStatus: String?

    public var instanceId: String?

    public var instanceIp: String?

    public var instanceName: String?

    public var instanceType: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.ddosStatus != nil {
            map["DdosStatus"] = self.ddosStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceIp != nil {
            map["InstanceIp"] = self.instanceIp!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["DdosStatus"] as? String {
            self.ddosStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceIp"] as? String {
            self.instanceIp = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
            public var blackholeThreshold: Int32?

            public var defenseBpsThreshold: Int32?

            public var defensePpsThreshold: Int32?

            public var elasticThreshold: Int32?

            public var instanceId: String?

            public var instanceIp: String?

            public var instanceName: String?

            public var instanceStatus: String?

            public var instanceType: String?

            public var ipVersion: String?

            public var isBgppack: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blackholeThreshold != nil {
                    map["BlackholeThreshold"] = self.blackholeThreshold!
                }
                if self.defenseBpsThreshold != nil {
                    map["DefenseBpsThreshold"] = self.defenseBpsThreshold!
                }
                if self.defensePpsThreshold != nil {
                    map["DefensePpsThreshold"] = self.defensePpsThreshold!
                }
                if self.elasticThreshold != nil {
                    map["ElasticThreshold"] = self.elasticThreshold!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceIp != nil {
                    map["InstanceIp"] = self.instanceIp!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceStatus != nil {
                    map["InstanceStatus"] = self.instanceStatus!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.ipVersion != nil {
                    map["IpVersion"] = self.ipVersion!
                }
                if self.isBgppack != nil {
                    map["IsBgppack"] = self.isBgppack!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlackholeThreshold"] as? Int32 {
                    self.blackholeThreshold = value
                }
                if let value = dict["DefenseBpsThreshold"] as? Int32 {
                    self.defenseBpsThreshold = value
                }
                if let value = dict["DefensePpsThreshold"] as? Int32 {
                    self.defensePpsThreshold = value
                }
                if let value = dict["ElasticThreshold"] as? Int32 {
                    self.elasticThreshold = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceIp"] as? String {
                    self.instanceIp = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["InstanceStatus"] as? String {
                    self.instanceStatus = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["IpVersion"] as? String {
                    self.ipVersion = value
                }
                if let value = dict["IsBgppack"] as? Bool {
                    self.isBgppack = value
                }
            }
        }
        public var instance: [DescribeInstanceResponseBody.InstanceList.Instance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                var tmp : [Any] = []
                for k in self.instance! {
                    tmp.append(k.toMap())
                }
                map["Instance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instance"] as? [Any?] {
                var tmp : [DescribeInstanceResponseBody.InstanceList.Instance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceResponseBody.InstanceList.Instance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instance = tmp
            }
        }
    }
    public var instanceList: DescribeInstanceResponseBody.InstanceList?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList?.toMap()
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
        if let value = dict["InstanceList"] as? [String: Any?] {
            var model = DescribeInstanceResponseBody.InstanceList()
            model.fromMap(value)
            self.instanceList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

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
            var model = DescribeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceIpAddressRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var ddosRegionId: String?

    public var ddosStatus: String?

    public var instanceId: String?

    public var instanceIp: String?

    public var instanceName: String?

    public var instanceType: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.ddosStatus != nil {
            map["DdosStatus"] = self.ddosStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceIp != nil {
            map["InstanceIp"] = self.instanceIp!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["DdosStatus"] as? String {
            self.ddosStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceIp"] as? String {
            self.instanceIp = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeInstanceIpAddressResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class IpAddressConfig : Tea.TeaModel {
            public var blackholeThreshold: Int32?

            public var defenseBpsThreshold: Int32?

            public var defensePpsThreshold: Int32?

            public var elasticThreshold: Int32?

            public var instanceIp: String?

            public var ipStatus: String?

            public var ipVersion: String?

            public var isBgppack: Bool?

            public var isFullProtection: Int32?

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
                if self.blackholeThreshold != nil {
                    map["BlackholeThreshold"] = self.blackholeThreshold!
                }
                if self.defenseBpsThreshold != nil {
                    map["DefenseBpsThreshold"] = self.defenseBpsThreshold!
                }
                if self.defensePpsThreshold != nil {
                    map["DefensePpsThreshold"] = self.defensePpsThreshold!
                }
                if self.elasticThreshold != nil {
                    map["ElasticThreshold"] = self.elasticThreshold!
                }
                if self.instanceIp != nil {
                    map["InstanceIp"] = self.instanceIp!
                }
                if self.ipStatus != nil {
                    map["IpStatus"] = self.ipStatus!
                }
                if self.ipVersion != nil {
                    map["IpVersion"] = self.ipVersion!
                }
                if self.isBgppack != nil {
                    map["IsBgppack"] = self.isBgppack!
                }
                if self.isFullProtection != nil {
                    map["IsFullProtection"] = self.isFullProtection!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlackholeThreshold"] as? Int32 {
                    self.blackholeThreshold = value
                }
                if let value = dict["DefenseBpsThreshold"] as? Int32 {
                    self.defenseBpsThreshold = value
                }
                if let value = dict["DefensePpsThreshold"] as? Int32 {
                    self.defensePpsThreshold = value
                }
                if let value = dict["ElasticThreshold"] as? Int32 {
                    self.elasticThreshold = value
                }
                if let value = dict["InstanceIp"] as? String {
                    self.instanceIp = value
                }
                if let value = dict["IpStatus"] as? String {
                    self.ipStatus = value
                }
                if let value = dict["IpVersion"] as? String {
                    self.ipVersion = value
                }
                if let value = dict["IsBgppack"] as? Bool {
                    self.isBgppack = value
                }
                if let value = dict["IsFullProtection"] as? Int32 {
                    self.isFullProtection = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public var instanceId: String?

        public var instanceName: String?

        public var instanceStatus: String?

        public var instanceType: String?

        public var ipAddressConfig: [DescribeInstanceIpAddressResponseBody.InstanceList.IpAddressConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ipAddressConfig != nil {
                var tmp : [Any] = []
                for k in self.ipAddressConfig! {
                    tmp.append(k.toMap())
                }
                map["IpAddressConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["IpAddressConfig"] as? [Any?] {
                var tmp : [DescribeInstanceIpAddressResponseBody.InstanceList.IpAddressConfig] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceIpAddressResponseBody.InstanceList.IpAddressConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipAddressConfig = tmp
            }
        }
    }
    public var instanceList: [DescribeInstanceIpAddressResponseBody.InstanceList]?

    public var requestId: String?

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
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["InstanceList"] = tmp
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
        if let value = dict["InstanceList"] as? [Any?] {
            var tmp : [DescribeInstanceIpAddressResponseBody.InstanceList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceIpAddressResponseBody.InstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeInstanceIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceIpAddressResponseBody?

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
            var model = DescribeInstanceIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIpDdosThresholdRequest : Tea.TeaModel {
    public var ddosRegionId: String?

    public var ddosType: String?

    public var instanceId: String?

    public var instanceType: String?

    public var internetIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.ddosType != nil {
            map["DdosType"] = self.ddosType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetIp != nil {
            map["InternetIp"] = self.internetIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["DdosType"] as? String {
            self.ddosType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InternetIp"] as? String {
            self.internetIp = value
        }
    }
}

public class DescribeIpDdosThresholdResponseBody : Tea.TeaModel {
    public class Threshold : Tea.TeaModel {
        public var bps: Int32?

        public var ddosType: String?

        public var elasticBps: Int32?

        public var instanceId: String?

        public var internetIp: String?

        public var isAuto: Bool?

        public var maxBps: Int32?

        public var maxPps: Int32?

        public var pps: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bps != nil {
                map["Bps"] = self.bps!
            }
            if self.ddosType != nil {
                map["DdosType"] = self.ddosType!
            }
            if self.elasticBps != nil {
                map["ElasticBps"] = self.elasticBps!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.isAuto != nil {
                map["IsAuto"] = self.isAuto!
            }
            if self.maxBps != nil {
                map["MaxBps"] = self.maxBps!
            }
            if self.maxPps != nil {
                map["MaxPps"] = self.maxPps!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bps"] as? Int32 {
                self.bps = value
            }
            if let value = dict["DdosType"] as? String {
                self.ddosType = value
            }
            if let value = dict["ElasticBps"] as? Int32 {
                self.elasticBps = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IsAuto"] as? Bool {
                self.isAuto = value
            }
            if let value = dict["MaxBps"] as? Int32 {
                self.maxBps = value
            }
            if let value = dict["MaxPps"] as? Int32 {
                self.maxPps = value
            }
            if let value = dict["Pps"] as? Int32 {
                self.pps = value
            }
        }
    }
    public var requestId: String?

    public var threshold: DescribeIpDdosThresholdResponseBody.Threshold?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.threshold?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Threshold"] as? [String: Any?] {
            var model = DescribeIpDdosThresholdResponseBody.Threshold()
            model.fromMap(value)
            self.threshold = model
        }
    }
}

public class DescribeIpDdosThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpDdosThresholdResponseBody?

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
            var model = DescribeIpDdosThresholdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIpLocationServiceRequest : Tea.TeaModel {
    public var internetIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.internetIp != nil {
            map["InternetIp"] = self.internetIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InternetIp"] as? String {
            self.internetIp = value
        }
    }
}

public class DescribeIpLocationServiceResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var instanceId: String?

        public var instanceName: String?

        public var instanceType: String?

        public var internetIp: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var instance: DescribeIpLocationServiceResponseBody.Instance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instance"] as? [String: Any?] {
            var model = DescribeIpLocationServiceResponseBody.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeIpLocationServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpLocationServiceResponseBody?

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
            var model = DescribeIpLocationServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var regionEnName: String?

            public var regionName: String?

            public var regionNo: String?

            public var regionNoAlias: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionEnName != nil {
                    map["RegionEnName"] = self.regionEnName!
                }
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.regionNoAlias != nil {
                    map["RegionNoAlias"] = self.regionNoAlias!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionEnName"] as? String {
                    self.regionEnName = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
                if let value = dict["RegionNo"] as? String {
                    self.regionNo = value
                }
                if let value = dict["RegionNoAlias"] as? String {
                    self.regionNoAlias = value
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDefenseThresholdRequest : Tea.TeaModel {
    public var bps: Int32?

    public var clientToken: String?

    public var ddosRegionId: String?

    public var instanceId: String?

    public var instanceType: String?

    public var internetIp: String?

    public var isAuto: Bool?

    public var pps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bps != nil {
            map["Bps"] = self.bps!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetIp != nil {
            map["InternetIp"] = self.internetIp!
        }
        if self.isAuto != nil {
            map["IsAuto"] = self.isAuto!
        }
        if self.pps != nil {
            map["Pps"] = self.pps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bps"] as? Int32 {
            self.bps = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InternetIp"] as? String {
            self.internetIp = value
        }
        if let value = dict["IsAuto"] as? Bool {
            self.isAuto = value
        }
        if let value = dict["Pps"] as? Int32 {
            self.pps = value
        }
    }
}

public class ModifyDefenseThresholdResponseBody : Tea.TeaModel {
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

public class ModifyDefenseThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseThresholdResponseBody?

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
            var model = ModifyDefenseThresholdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyIpDefenseThresholdRequest : Tea.TeaModel {
    public var bps: Int32?

    public var ddosRegionId: String?

    public var instanceId: String?

    public var instanceType: String?

    public var internetIp: String?

    public var isAuto: Bool?

    public var pps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bps != nil {
            map["Bps"] = self.bps!
        }
        if self.ddosRegionId != nil {
            map["DdosRegionId"] = self.ddosRegionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetIp != nil {
            map["InternetIp"] = self.internetIp!
        }
        if self.isAuto != nil {
            map["IsAuto"] = self.isAuto!
        }
        if self.pps != nil {
            map["Pps"] = self.pps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bps"] as? Int32 {
            self.bps = value
        }
        if let value = dict["DdosRegionId"] as? String {
            self.ddosRegionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InternetIp"] as? String {
            self.internetIp = value
        }
        if let value = dict["IsAuto"] as? Bool {
            self.isAuto = value
        }
        if let value = dict["Pps"] as? Int32 {
            self.pps = value
        }
    }
}

public class ModifyIpDefenseThresholdResponseBody : Tea.TeaModel {
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

public class ModifyIpDefenseThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIpDefenseThresholdResponseBody?

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
            var model = ModifyIpDefenseThresholdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
