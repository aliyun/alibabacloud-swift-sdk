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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaseThreshold") {
                self.baseThreshold = dict["BaseThreshold"] as! Int32
            }
            if dict.keys.contains("DdosbgpInstanceId") {
                self.ddosbgpInstanceId = dict["DdosbgpInstanceId"] as! String
            }
            if dict.keys.contains("ElasticThreshold") {
                self.elasticThreshold = dict["ElasticThreshold"] as! Int32
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DdosbgpInfo") {
            var model = DescribeBgpPackByIpResponseBody.DdosbgpInfo()
            model.fromMap(dict["DdosbgpInfo"] as! [String: Any])
            self.ddosbgpInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBgpPackByIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BegTime") {
            self.begTime = dict["BegTime"] as! Int64
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetIp") {
            self.internetIp = dict["InternetIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CapUrl") {
            var model = DescribeCapResponseBody.CapUrl()
            model.fromMap(dict["CapUrl"] as! [String: Any])
            self.capUrl = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackholeCount") {
                self.blackholeCount = dict["BlackholeCount"] as! Int32
            }
            if dict.keys.contains("DefenseCount") {
                self.defenseCount = dict["DefenseCount"] as! Int32
            }
            if dict.keys.contains("InstacenCount") {
                self.instacenCount = dict["InstacenCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosCount") {
            var model = DescribeDdosCountResponseBody.DdosCount()
            model.fromMap(dict["DdosCount"] as! [String: Any])
            self.ddosCount = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDdosCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackholeTime") {
                self.blackholeTime = dict["BlackholeTime"] as! Int32
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Int32
            }
            if dict.keys.contains("ScoreLevel") {
                self.scoreLevel = dict["ScoreLevel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosCredit") {
            var model = DescribeDdosCreditResponseBody.DdosCredit()
            model.fromMap(dict["DdosCredit"] as! [String: Any])
            self.ddosCredit = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDdosCreditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetIp") {
            self.internetIp = dict["InternetIp"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DdosStatus") {
                    self.ddosStatus = dict["DdosStatus"] as! String
                }
                if dict.keys.contains("DdosType") {
                    self.ddosType = dict["DdosType"] as! String
                }
                if dict.keys.contains("DelayTime") {
                    self.delayTime = dict["DelayTime"] as! Int64
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("UnBlackholeTime") {
                    self.unBlackholeTime = dict["UnBlackholeTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DdosEvent") {
                var tmp : [DescribeDdosEventListResponseBody.DdosEventList.DdosEvent] = []
                for v in dict["DdosEvent"] as! [Any] {
                    var model = DescribeDdosEventListResponseBody.DdosEventList.DdosEvent()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosEventList") {
            var model = DescribeDdosEventListResponseBody.DdosEventList()
            model.fromMap(dict["DdosEventList"] as! [String: Any])
            self.ddosEventList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDdosEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("DdosType") {
            self.ddosType = dict["DdosType"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! Int32
                }
                if dict.keys.contains("DdosType") {
                    self.ddosType = dict["DdosType"] as! String
                }
                if dict.keys.contains("ElasticBps") {
                    self.elasticBps = dict["ElasticBps"] as! Int32
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InternetIp") {
                    self.internetIp = dict["InternetIp"] as! String
                }
                if dict.keys.contains("IsAuto") {
                    self.isAuto = dict["IsAuto"] as! Bool
                }
                if dict.keys.contains("MaxBps") {
                    self.maxBps = dict["MaxBps"] as! Int32
                }
                if dict.keys.contains("MaxPps") {
                    self.maxPps = dict["MaxPps"] as! Int32
                }
                if dict.keys.contains("Pps") {
                    self.pps = dict["Pps"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Threshold") {
                var tmp : [DescribeDdosThresholdResponseBody.Thresholds.Threshold] = []
                for v in dict["Threshold"] as! [Any] {
                    var model = DescribeDdosThresholdResponseBody.Thresholds.Threshold()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Thresholds") {
            var model = DescribeDdosThresholdResponseBody.Thresholds()
            model.fromMap(dict["Thresholds"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDdosThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("DdosStatus") {
            self.ddosStatus = dict["DdosStatus"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceIp") {
            self.instanceIp = dict["InstanceIp"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlackholeThreshold") {
                    self.blackholeThreshold = dict["BlackholeThreshold"] as! Int32
                }
                if dict.keys.contains("DefenseBpsThreshold") {
                    self.defenseBpsThreshold = dict["DefenseBpsThreshold"] as! Int32
                }
                if dict.keys.contains("DefensePpsThreshold") {
                    self.defensePpsThreshold = dict["DefensePpsThreshold"] as! Int32
                }
                if dict.keys.contains("ElasticThreshold") {
                    self.elasticThreshold = dict["ElasticThreshold"] as! Int32
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceIp") {
                    self.instanceIp = dict["InstanceIp"] as! String
                }
                if dict.keys.contains("InstanceName") {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("InstanceStatus") {
                    self.instanceStatus = dict["InstanceStatus"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("IpVersion") {
                    self.ipVersion = dict["IpVersion"] as! String
                }
                if dict.keys.contains("IsBgppack") {
                    self.isBgppack = dict["IsBgppack"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instance") {
                var tmp : [DescribeInstanceResponseBody.InstanceList.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = DescribeInstanceResponseBody.InstanceList.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceList") {
            var model = DescribeInstanceResponseBody.InstanceList()
            model.fromMap(dict["InstanceList"] as! [String: Any])
            self.instanceList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("DdosStatus") {
            self.ddosStatus = dict["DdosStatus"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceIp") {
            self.instanceIp = dict["InstanceIp"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlackholeThreshold") {
                    self.blackholeThreshold = dict["BlackholeThreshold"] as! Int32
                }
                if dict.keys.contains("DefenseBpsThreshold") {
                    self.defenseBpsThreshold = dict["DefenseBpsThreshold"] as! Int32
                }
                if dict.keys.contains("DefensePpsThreshold") {
                    self.defensePpsThreshold = dict["DefensePpsThreshold"] as! Int32
                }
                if dict.keys.contains("ElasticThreshold") {
                    self.elasticThreshold = dict["ElasticThreshold"] as! Int32
                }
                if dict.keys.contains("InstanceIp") {
                    self.instanceIp = dict["InstanceIp"] as! String
                }
                if dict.keys.contains("IpStatus") {
                    self.ipStatus = dict["IpStatus"] as! String
                }
                if dict.keys.contains("IpVersion") {
                    self.ipVersion = dict["IpVersion"] as! String
                }
                if dict.keys.contains("IsBgppack") {
                    self.isBgppack = dict["IsBgppack"] as! Bool
                }
                if dict.keys.contains("IsFullProtection") {
                    self.isFullProtection = dict["IsFullProtection"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceStatus") {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("IpAddressConfig") {
                var tmp : [DescribeInstanceIpAddressResponseBody.InstanceList.IpAddressConfig] = []
                for v in dict["IpAddressConfig"] as! [Any] {
                    var model = DescribeInstanceIpAddressResponseBody.InstanceList.IpAddressConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceList") {
            var tmp : [DescribeInstanceIpAddressResponseBody.InstanceList] = []
            for v in dict["InstanceList"] as! [Any] {
                var model = DescribeInstanceIpAddressResponseBody.InstanceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceIpAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("DdosType") {
            self.ddosType = dict["DdosType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetIp") {
            self.internetIp = dict["InternetIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bps") {
                self.bps = dict["Bps"] as! Int32
            }
            if dict.keys.contains("DdosType") {
                self.ddosType = dict["DdosType"] as! String
            }
            if dict.keys.contains("ElasticBps") {
                self.elasticBps = dict["ElasticBps"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("IsAuto") {
                self.isAuto = dict["IsAuto"] as! Bool
            }
            if dict.keys.contains("MaxBps") {
                self.maxBps = dict["MaxBps"] as! Int32
            }
            if dict.keys.contains("MaxPps") {
                self.maxPps = dict["MaxPps"] as! Int32
            }
            if dict.keys.contains("Pps") {
                self.pps = dict["Pps"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Threshold") {
            var model = DescribeIpDdosThresholdResponseBody.Threshold()
            model.fromMap(dict["Threshold"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeIpDdosThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetIp") {
            self.internetIp = dict["InternetIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instance") {
            var model = DescribeIpLocationServiceResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeIpLocationServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionEnName") {
                    self.regionEnName = dict["RegionEnName"] as! String
                }
                if dict.keys.contains("RegionName") {
                    self.regionName = dict["RegionName"] as! String
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("RegionNoAlias") {
                    self.regionNoAlias = dict["RegionNoAlias"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bps") {
            self.bps = dict["Bps"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetIp") {
            self.internetIp = dict["InternetIp"] as! String
        }
        if dict.keys.contains("IsAuto") {
            self.isAuto = dict["IsAuto"] as! Bool
        }
        if dict.keys.contains("Pps") {
            self.pps = dict["Pps"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDefenseThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bps") {
            self.bps = dict["Bps"] as! Int32
        }
        if dict.keys.contains("DdosRegionId") {
            self.ddosRegionId = dict["DdosRegionId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetIp") {
            self.internetIp = dict["InternetIp"] as! String
        }
        if dict.keys.contains("IsAuto") {
            self.isAuto = dict["IsAuto"] as! Bool
        }
        if dict.keys.contains("Pps") {
            self.pps = dict["Pps"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyIpDefenseThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
