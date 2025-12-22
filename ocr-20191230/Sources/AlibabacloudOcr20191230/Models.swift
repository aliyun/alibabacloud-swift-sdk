import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import DarabonbaNumber
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetAsyncJobResultRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetAsyncJobResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var result: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: GetAsyncJobResultResponseBody.Data?

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
            var model = GetAsyncJobResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAsyncJobResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncJobResultResponseBody?

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
            var model = GetAsyncJobResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeBankCardRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeBankCardAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeBankCardResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bankName: String?

        public var cardNumber: String?

        public var cardType: String?

        public var validDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bankName != nil {
                map["BankName"] = self.bankName!
            }
            if self.cardNumber != nil {
                map["CardNumber"] = self.cardNumber!
            }
            if self.cardType != nil {
                map["CardType"] = self.cardType!
            }
            if self.validDate != nil {
                map["ValidDate"] = self.validDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BankName"] as? String {
                self.bankName = value
            }
            if let value = dict["CardNumber"] as? String {
                self.cardNumber = value
            }
            if let value = dict["CardType"] as? String {
                self.cardType = value
            }
            if let value = dict["ValidDate"] as? String {
                self.validDate = value
            }
        }
    }
    public var data: RecognizeBankCardResponseBody.Data?

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
            var model = RecognizeBankCardResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeBankCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBankCardResponseBody?

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
            var model = RecognizeBankCardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeBusinessLicenseRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeBusinessLicenseAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeBusinessLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Emblem : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["Left"] as? Int32 {
                    self.left_ = value
                }
                if let value = dict["Top"] as? Int32 {
                    self.top = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class QRCode : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["Left"] as? Int32 {
                    self.left_ = value
                }
                if let value = dict["Top"] as? Int32 {
                    self.top = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class Stamp : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["Left"] as? Int32 {
                    self.left_ = value
                }
                if let value = dict["Top"] as? Int32 {
                    self.top = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class Title : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["Left"] as? Int32 {
                    self.left_ = value
                }
                if let value = dict["Top"] as? Int32 {
                    self.top = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public var address: String?

        public var angle: Double?

        public var business: String?

        public var capital: String?

        public var emblem: RecognizeBusinessLicenseResponseBody.Data.Emblem?

        public var establishDate: String?

        public var legalPerson: String?

        public var name: String?

        public var QRCode: RecognizeBusinessLicenseResponseBody.Data.QRCode?

        public var registerNumber: String?

        public var stamp: RecognizeBusinessLicenseResponseBody.Data.Stamp?

        public var title: RecognizeBusinessLicenseResponseBody.Data.Title?

        public var type: String?

        public var validPeriod: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.emblem?.validate()
            try self.QRCode?.validate()
            try self.stamp?.validate()
            try self.title?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.business != nil {
                map["Business"] = self.business!
            }
            if self.capital != nil {
                map["Capital"] = self.capital!
            }
            if self.emblem != nil {
                map["Emblem"] = self.emblem?.toMap()
            }
            if self.establishDate != nil {
                map["EstablishDate"] = self.establishDate!
            }
            if self.legalPerson != nil {
                map["LegalPerson"] = self.legalPerson!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.QRCode != nil {
                map["QRCode"] = self.QRCode?.toMap()
            }
            if self.registerNumber != nil {
                map["RegisterNumber"] = self.registerNumber!
            }
            if self.stamp != nil {
                map["Stamp"] = self.stamp?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.validPeriod != nil {
                map["ValidPeriod"] = self.validPeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Angle"] as? Double {
                self.angle = value
            }
            if let value = dict["Business"] as? String {
                self.business = value
            }
            if let value = dict["Capital"] as? String {
                self.capital = value
            }
            if let value = dict["Emblem"] as? [String: Any?] {
                var model = RecognizeBusinessLicenseResponseBody.Data.Emblem()
                model.fromMap(value)
                self.emblem = model
            }
            if let value = dict["EstablishDate"] as? String {
                self.establishDate = value
            }
            if let value = dict["LegalPerson"] as? String {
                self.legalPerson = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["QRCode"] as? [String: Any?] {
                var model = RecognizeBusinessLicenseResponseBody.Data.QRCode()
                model.fromMap(value)
                self.QRCode = model
            }
            if let value = dict["RegisterNumber"] as? String {
                self.registerNumber = value
            }
            if let value = dict["Stamp"] as? [String: Any?] {
                var model = RecognizeBusinessLicenseResponseBody.Data.Stamp()
                model.fromMap(value)
                self.stamp = model
            }
            if let value = dict["Title"] as? [String: Any?] {
                var model = RecognizeBusinessLicenseResponseBody.Data.Title()
                model.fromMap(value)
                self.title = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["ValidPeriod"] as? String {
                self.validPeriod = value
            }
        }
    }
    public var data: RecognizeBusinessLicenseResponseBody.Data?

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
            var model = RecognizeBusinessLicenseResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeBusinessLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeBusinessLicenseResponseBody?

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
            var model = RecognizeBusinessLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeCharacterRequest : Tea.TeaModel {
    public var imageURL: String?

    public var minHeight: Int32?

    public var outputProbability: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.minHeight != nil {
            map["MinHeight"] = self.minHeight!
        }
        if self.outputProbability != nil {
            map["OutputProbability"] = self.outputProbability!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["MinHeight"] as? Int32 {
            self.minHeight = value
        }
        if let value = dict["OutputProbability"] as? Bool {
            self.outputProbability = value
        }
    }
}

public class RecognizeCharacterAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var minHeight: Int32?

    public var outputProbability: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.minHeight != nil {
            map["MinHeight"] = self.minHeight!
        }
        if self.outputProbability != nil {
            map["OutputProbability"] = self.outputProbability!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["MinHeight"] as? Int32 {
            self.minHeight = value
        }
        if let value = dict["OutputProbability"] as? Bool {
            self.outputProbability = value
        }
    }
}

public class RecognizeCharacterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public class TextRectangles : Tea.TeaModel {
                public class Pos : Tea.TeaModel {
                    public var x: Int32?

                    public var y: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int32 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int32 {
                            self.y = value
                        }
                    }
                }
                public var angle: Int32?

                public var height: Int32?

                public var left_: Int32?

                public var pos: [RecognizeCharacterResponseBody.Data.Results.TextRectangles.Pos]?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.angle != nil {
                        map["Angle"] = self.angle!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.pos != nil {
                        var tmp : [Any] = []
                        for k in self.pos! {
                            tmp.append(k.toMap())
                        }
                        map["Pos"] = tmp
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Angle"] as? Int32 {
                        self.angle = value
                    }
                    if let value = dict["Height"] as? Int32 {
                        self.height = value
                    }
                    if let value = dict["Left"] as? Int32 {
                        self.left_ = value
                    }
                    if let value = dict["Pos"] as? [Any?] {
                        var tmp : [RecognizeCharacterResponseBody.Data.Results.TextRectangles.Pos] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizeCharacterResponseBody.Data.Results.TextRectangles.Pos()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.pos = tmp
                    }
                    if let value = dict["Top"] as? Int32 {
                        self.top = value
                    }
                    if let value = dict["Width"] as? Int32 {
                        self.width = value
                    }
                }
            }
            public var probability: Double?

            public var text: String?

            public var textRectangles: RecognizeCharacterResponseBody.Data.Results.TextRectangles?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.textRectangles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.probability != nil {
                    map["Probability"] = self.probability!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.textRectangles != nil {
                    map["TextRectangles"] = self.textRectangles?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Probability"] as? Double {
                    self.probability = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["TextRectangles"] as? [String: Any?] {
                    var model = RecognizeCharacterResponseBody.Data.Results.TextRectangles()
                    model.fromMap(value)
                    self.textRectangles = model
                }
            }
        }
        public var results: [RecognizeCharacterResponseBody.Data.Results]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Results"] as? [Any?] {
                var tmp : [RecognizeCharacterResponseBody.Data.Results] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeCharacterResponseBody.Data.Results()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.results = tmp
            }
        }
    }
    public var data: RecognizeCharacterResponseBody.Data?

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
            var model = RecognizeCharacterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeCharacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeCharacterResponseBody?

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
            var model = RecognizeCharacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeDriverLicenseRequest : Tea.TeaModel {
    public var imageURL: String?

    public var side: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Side"] as? String {
            self.side = value
        }
    }
}

public class RecognizeDriverLicenseAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var side: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Side"] as? String {
            self.side = value
        }
    }
}

public class RecognizeDriverLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BackResult : Tea.TeaModel {
            public var archiveNumber: String?

            public var cardNumber: String?

            public var name: String?

            public var record: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.archiveNumber != nil {
                    map["ArchiveNumber"] = self.archiveNumber!
                }
                if self.cardNumber != nil {
                    map["CardNumber"] = self.cardNumber!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.record != nil {
                    map["Record"] = self.record!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArchiveNumber"] as? String {
                    self.archiveNumber = value
                }
                if let value = dict["CardNumber"] as? String {
                    self.cardNumber = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Record"] as? String {
                    self.record = value
                }
            }
        }
        public class FaceResult : Tea.TeaModel {
            public var address: String?

            public var birthDate: String?

            public var endDate: String?

            public var gender: String?

            public var issueDate: String?

            public var issueUnit: String?

            public var licenseNumber: String?

            public var name: String?

            public var nationality: String?

            public var startDate: String?

            public var vehicleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.birthDate != nil {
                    map["BirthDate"] = self.birthDate!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.gender != nil {
                    map["Gender"] = self.gender!
                }
                if self.issueDate != nil {
                    map["IssueDate"] = self.issueDate!
                }
                if self.issueUnit != nil {
                    map["IssueUnit"] = self.issueUnit!
                }
                if self.licenseNumber != nil {
                    map["LicenseNumber"] = self.licenseNumber!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nationality != nil {
                    map["Nationality"] = self.nationality!
                }
                if self.startDate != nil {
                    map["StartDate"] = self.startDate!
                }
                if self.vehicleType != nil {
                    map["VehicleType"] = self.vehicleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["BirthDate"] as? String {
                    self.birthDate = value
                }
                if let value = dict["EndDate"] as? String {
                    self.endDate = value
                }
                if let value = dict["Gender"] as? String {
                    self.gender = value
                }
                if let value = dict["IssueDate"] as? String {
                    self.issueDate = value
                }
                if let value = dict["IssueUnit"] as? String {
                    self.issueUnit = value
                }
                if let value = dict["LicenseNumber"] as? String {
                    self.licenseNumber = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Nationality"] as? String {
                    self.nationality = value
                }
                if let value = dict["StartDate"] as? String {
                    self.startDate = value
                }
                if let value = dict["VehicleType"] as? String {
                    self.vehicleType = value
                }
            }
        }
        public var backResult: RecognizeDriverLicenseResponseBody.Data.BackResult?

        public var faceResult: RecognizeDriverLicenseResponseBody.Data.FaceResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backResult?.validate()
            try self.faceResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backResult != nil {
                map["BackResult"] = self.backResult?.toMap()
            }
            if self.faceResult != nil {
                map["FaceResult"] = self.faceResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackResult"] as? [String: Any?] {
                var model = RecognizeDriverLicenseResponseBody.Data.BackResult()
                model.fromMap(value)
                self.backResult = model
            }
            if let value = dict["FaceResult"] as? [String: Any?] {
                var model = RecognizeDriverLicenseResponseBody.Data.FaceResult()
                model.fromMap(value)
                self.faceResult = model
            }
        }
    }
    public var data: RecognizeDriverLicenseResponseBody.Data?

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
            var model = RecognizeDriverLicenseResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeDriverLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeDriverLicenseResponseBody?

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
            var model = RecognizeDriverLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeDrivingLicenseRequest : Tea.TeaModel {
    public var imageURL: String?

    public var side: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Side"] as? String {
            self.side = value
        }
    }
}

public class RecognizeDrivingLicenseAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var side: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Side"] as? String {
            self.side = value
        }
    }
}

public class RecognizeDrivingLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BackResult : Tea.TeaModel {
            public var approvedLoad: String?

            public var approvedPassengerCapacity: String?

            public var energyType: String?

            public var fileNumber: String?

            public var grossMass: String?

            public var inspectionRecord: String?

            public var overallDimension: String?

            public var plateNumber: String?

            public var tractionMass: String?

            public var unladenMass: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.approvedLoad != nil {
                    map["ApprovedLoad"] = self.approvedLoad!
                }
                if self.approvedPassengerCapacity != nil {
                    map["ApprovedPassengerCapacity"] = self.approvedPassengerCapacity!
                }
                if self.energyType != nil {
                    map["EnergyType"] = self.energyType!
                }
                if self.fileNumber != nil {
                    map["FileNumber"] = self.fileNumber!
                }
                if self.grossMass != nil {
                    map["GrossMass"] = self.grossMass!
                }
                if self.inspectionRecord != nil {
                    map["InspectionRecord"] = self.inspectionRecord!
                }
                if self.overallDimension != nil {
                    map["OverallDimension"] = self.overallDimension!
                }
                if self.plateNumber != nil {
                    map["PlateNumber"] = self.plateNumber!
                }
                if self.tractionMass != nil {
                    map["TractionMass"] = self.tractionMass!
                }
                if self.unladenMass != nil {
                    map["UnladenMass"] = self.unladenMass!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApprovedLoad"] as? String {
                    self.approvedLoad = value
                }
                if let value = dict["ApprovedPassengerCapacity"] as? String {
                    self.approvedPassengerCapacity = value
                }
                if let value = dict["EnergyType"] as? String {
                    self.energyType = value
                }
                if let value = dict["FileNumber"] as? String {
                    self.fileNumber = value
                }
                if let value = dict["GrossMass"] as? String {
                    self.grossMass = value
                }
                if let value = dict["InspectionRecord"] as? String {
                    self.inspectionRecord = value
                }
                if let value = dict["OverallDimension"] as? String {
                    self.overallDimension = value
                }
                if let value = dict["PlateNumber"] as? String {
                    self.plateNumber = value
                }
                if let value = dict["TractionMass"] as? String {
                    self.tractionMass = value
                }
                if let value = dict["UnladenMass"] as? String {
                    self.unladenMass = value
                }
            }
        }
        public class FaceResult : Tea.TeaModel {
            public var address: String?

            public var engineNumber: String?

            public var issueDate: String?

            public var model: String?

            public var owner: String?

            public var plateNumber: String?

            public var registerDate: String?

            public var useCharacter: String?

            public var vehicleType: String?

            public var vin: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.engineNumber != nil {
                    map["EngineNumber"] = self.engineNumber!
                }
                if self.issueDate != nil {
                    map["IssueDate"] = self.issueDate!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.plateNumber != nil {
                    map["PlateNumber"] = self.plateNumber!
                }
                if self.registerDate != nil {
                    map["RegisterDate"] = self.registerDate!
                }
                if self.useCharacter != nil {
                    map["UseCharacter"] = self.useCharacter!
                }
                if self.vehicleType != nil {
                    map["VehicleType"] = self.vehicleType!
                }
                if self.vin != nil {
                    map["Vin"] = self.vin!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["EngineNumber"] as? String {
                    self.engineNumber = value
                }
                if let value = dict["IssueDate"] as? String {
                    self.issueDate = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
                if let value = dict["PlateNumber"] as? String {
                    self.plateNumber = value
                }
                if let value = dict["RegisterDate"] as? String {
                    self.registerDate = value
                }
                if let value = dict["UseCharacter"] as? String {
                    self.useCharacter = value
                }
                if let value = dict["VehicleType"] as? String {
                    self.vehicleType = value
                }
                if let value = dict["Vin"] as? String {
                    self.vin = value
                }
            }
        }
        public var backResult: RecognizeDrivingLicenseResponseBody.Data.BackResult?

        public var faceResult: RecognizeDrivingLicenseResponseBody.Data.FaceResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backResult?.validate()
            try self.faceResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backResult != nil {
                map["BackResult"] = self.backResult?.toMap()
            }
            if self.faceResult != nil {
                map["FaceResult"] = self.faceResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackResult"] as? [String: Any?] {
                var model = RecognizeDrivingLicenseResponseBody.Data.BackResult()
                model.fromMap(value)
                self.backResult = model
            }
            if let value = dict["FaceResult"] as? [String: Any?] {
                var model = RecognizeDrivingLicenseResponseBody.Data.FaceResult()
                model.fromMap(value)
                self.faceResult = model
            }
        }
    }
    public var data: RecognizeDrivingLicenseResponseBody.Data?

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
            var model = RecognizeDrivingLicenseResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeDrivingLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeDrivingLicenseResponseBody?

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
            var model = RecognizeDrivingLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeIdentityCardRequest : Tea.TeaModel {
    public var imageURL: String?

    public var side: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Side"] as? String {
            self.side = value
        }
    }
}

public class RecognizeIdentityCardAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var side: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.side != nil {
            map["Side"] = self.side!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Side"] as? String {
            self.side = value
        }
    }
}

public class RecognizeIdentityCardResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BackResult : Tea.TeaModel {
            public var endDate: String?

            public var issue: String?

            public var startDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.issue != nil {
                    map["Issue"] = self.issue!
                }
                if self.startDate != nil {
                    map["StartDate"] = self.startDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndDate"] as? String {
                    self.endDate = value
                }
                if let value = dict["Issue"] as? String {
                    self.issue = value
                }
                if let value = dict["StartDate"] as? String {
                    self.startDate = value
                }
            }
        }
        public class FrontResult : Tea.TeaModel {
            public class CardAreas : Tea.TeaModel {
                public var x: Double?

                public var y: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Double {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Double {
                        self.y = value
                    }
                }
            }
            public class FaceRectVertices : Tea.TeaModel {
                public var x: Double?

                public var y: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Double {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Double {
                        self.y = value
                    }
                }
            }
            public class FaceRectangle : Tea.TeaModel {
                public class Center : Tea.TeaModel {
                    public var x: Double?

                    public var y: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["X"] as? Double {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Double {
                            self.y = value
                        }
                    }
                }
                public class Size : Tea.TeaModel {
                    public var height: Double?

                    public var width: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Double {
                            self.height = value
                        }
                        if let value = dict["Width"] as? Double {
                            self.width = value
                        }
                    }
                }
                public var angle: Double?

                public var center: RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectangle.Center?

                public var size: RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectangle.Size?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.center?.validate()
                    try self.size?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.angle != nil {
                        map["Angle"] = self.angle!
                    }
                    if self.center != nil {
                        map["Center"] = self.center?.toMap()
                    }
                    if self.size != nil {
                        map["Size"] = self.size?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Angle"] as? Double {
                        self.angle = value
                    }
                    if let value = dict["Center"] as? [String: Any?] {
                        var model = RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectangle.Center()
                        model.fromMap(value)
                        self.center = model
                    }
                    if let value = dict["Size"] as? [String: Any?] {
                        var model = RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectangle.Size()
                        model.fromMap(value)
                        self.size = model
                    }
                }
            }
            public var address: String?

            public var birthDate: String?

            public var cardAreas: [RecognizeIdentityCardResponseBody.Data.FrontResult.CardAreas]?

            public var faceRectVertices: [RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectVertices]?

            public var faceRectangle: RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectangle?

            public var gender: String?

            public var IDNumber: String?

            public var name: String?

            public var nationality: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceRectangle?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.birthDate != nil {
                    map["BirthDate"] = self.birthDate!
                }
                if self.cardAreas != nil {
                    var tmp : [Any] = []
                    for k in self.cardAreas! {
                        tmp.append(k.toMap())
                    }
                    map["CardAreas"] = tmp
                }
                if self.faceRectVertices != nil {
                    var tmp : [Any] = []
                    for k in self.faceRectVertices! {
                        tmp.append(k.toMap())
                    }
                    map["FaceRectVertices"] = tmp
                }
                if self.faceRectangle != nil {
                    map["FaceRectangle"] = self.faceRectangle?.toMap()
                }
                if self.gender != nil {
                    map["Gender"] = self.gender!
                }
                if self.IDNumber != nil {
                    map["IDNumber"] = self.IDNumber!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nationality != nil {
                    map["Nationality"] = self.nationality!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["BirthDate"] as? String {
                    self.birthDate = value
                }
                if let value = dict["CardAreas"] as? [Any?] {
                    var tmp : [RecognizeIdentityCardResponseBody.Data.FrontResult.CardAreas] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeIdentityCardResponseBody.Data.FrontResult.CardAreas()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.cardAreas = tmp
                }
                if let value = dict["FaceRectVertices"] as? [Any?] {
                    var tmp : [RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectVertices] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectVertices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.faceRectVertices = tmp
                }
                if let value = dict["FaceRectangle"] as? [String: Any?] {
                    var model = RecognizeIdentityCardResponseBody.Data.FrontResult.FaceRectangle()
                    model.fromMap(value)
                    self.faceRectangle = model
                }
                if let value = dict["Gender"] as? String {
                    self.gender = value
                }
                if let value = dict["IDNumber"] as? String {
                    self.IDNumber = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Nationality"] as? String {
                    self.nationality = value
                }
            }
        }
        public var backResult: RecognizeIdentityCardResponseBody.Data.BackResult?

        public var frontResult: RecognizeIdentityCardResponseBody.Data.FrontResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backResult?.validate()
            try self.frontResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backResult != nil {
                map["BackResult"] = self.backResult?.toMap()
            }
            if self.frontResult != nil {
                map["FrontResult"] = self.frontResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackResult"] as? [String: Any?] {
                var model = RecognizeIdentityCardResponseBody.Data.BackResult()
                model.fromMap(value)
                self.backResult = model
            }
            if let value = dict["FrontResult"] as? [String: Any?] {
                var model = RecognizeIdentityCardResponseBody.Data.FrontResult()
                model.fromMap(value)
                self.frontResult = model
            }
        }
    }
    public var data: RecognizeIdentityCardResponseBody.Data?

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
            var model = RecognizeIdentityCardResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeIdentityCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeIdentityCardResponseBody?

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
            var model = RecognizeIdentityCardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeLicensePlateRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeLicensePlateAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeLicensePlateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Plates : Tea.TeaModel {
            public class Positions : Tea.TeaModel {
                public var x: Int64?

                public var y: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public class Roi : Tea.TeaModel {
                public var h: Int32?

                public var w: Int32?

                public var x: Int32?

                public var y: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.h != nil {
                        map["H"] = self.h!
                    }
                    if self.w != nil {
                        map["W"] = self.w!
                    }
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["H"] as? Int32 {
                        self.h = value
                    }
                    if let value = dict["W"] as? Int32 {
                        self.w = value
                    }
                    if let value = dict["X"] as? Int32 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int32 {
                        self.y = value
                    }
                }
            }
            public var confidence: Double?

            public var plateNumber: String?

            public var plateType: String?

            public var plateTypeConfidence: Double?

            public var positions: [RecognizeLicensePlateResponseBody.Data.Plates.Positions]?

            public var roi: RecognizeLicensePlateResponseBody.Data.Plates.Roi?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.roi?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.plateNumber != nil {
                    map["PlateNumber"] = self.plateNumber!
                }
                if self.plateType != nil {
                    map["PlateType"] = self.plateType!
                }
                if self.plateTypeConfidence != nil {
                    map["PlateTypeConfidence"] = self.plateTypeConfidence!
                }
                if self.positions != nil {
                    var tmp : [Any] = []
                    for k in self.positions! {
                        tmp.append(k.toMap())
                    }
                    map["Positions"] = tmp
                }
                if self.roi != nil {
                    map["Roi"] = self.roi?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["PlateNumber"] as? String {
                    self.plateNumber = value
                }
                if let value = dict["PlateType"] as? String {
                    self.plateType = value
                }
                if let value = dict["PlateTypeConfidence"] as? Double {
                    self.plateTypeConfidence = value
                }
                if let value = dict["Positions"] as? [Any?] {
                    var tmp : [RecognizeLicensePlateResponseBody.Data.Plates.Positions] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeLicensePlateResponseBody.Data.Plates.Positions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.positions = tmp
                }
                if let value = dict["Roi"] as? [String: Any?] {
                    var model = RecognizeLicensePlateResponseBody.Data.Plates.Roi()
                    model.fromMap(value)
                    self.roi = model
                }
            }
        }
        public var plates: [RecognizeLicensePlateResponseBody.Data.Plates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.plates != nil {
                var tmp : [Any] = []
                for k in self.plates! {
                    tmp.append(k.toMap())
                }
                map["Plates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Plates"] as? [Any?] {
                var tmp : [RecognizeLicensePlateResponseBody.Data.Plates] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeLicensePlateResponseBody.Data.Plates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.plates = tmp
            }
        }
    }
    public var data: RecognizeLicensePlateResponseBody.Data?

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
            var model = RecognizeLicensePlateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeLicensePlateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeLicensePlateResponseBody?

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
            var model = RecognizeLicensePlateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizePdfRequest : Tea.TeaModel {
    public var fileURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileURL != nil {
            map["FileURL"] = self.fileURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileURL"] as? String {
            self.fileURL = value
        }
    }
}

public class RecognizePdfAdvanceRequest : Tea.TeaModel {
    public var fileURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileURLObject != nil {
            map["FileURL"] = self.fileURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileURL"] as? InputStream {
            self.fileURLObject = value
        }
    }
}

public class RecognizePdfResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WordsInfo : Tea.TeaModel {
            public class Positions : Tea.TeaModel {
                public var x: Int64?

                public var y: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public var angle: Int64?

            public var height: Int64?

            public var positions: [RecognizePdfResponseBody.Data.WordsInfo.Positions]?

            public var width: Int64?

            public var word: String?

            public var x: Int64?

            public var y: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.angle != nil {
                    map["Angle"] = self.angle!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.positions != nil {
                    var tmp : [Any] = []
                    for k in self.positions! {
                        tmp.append(k.toMap())
                    }
                    map["Positions"] = tmp
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Angle"] as? Int64 {
                    self.angle = value
                }
                if let value = dict["Height"] as? Int64 {
                    self.height = value
                }
                if let value = dict["Positions"] as? [Any?] {
                    var tmp : [RecognizePdfResponseBody.Data.WordsInfo.Positions] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizePdfResponseBody.Data.WordsInfo.Positions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.positions = tmp
                }
                if let value = dict["Width"] as? Int64 {
                    self.width = value
                }
                if let value = dict["Word"] as? String {
                    self.word = value
                }
                if let value = dict["X"] as? Int64 {
                    self.x = value
                }
                if let value = dict["Y"] as? Int64 {
                    self.y = value
                }
            }
        }
        public var angle: Int64?

        public var height: Int64?

        public var orgHeight: Int64?

        public var orgWidth: Int64?

        public var pageIndex: Int64?

        public var width: Int64?

        public var wordsInfo: [RecognizePdfResponseBody.Data.WordsInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.orgHeight != nil {
                map["OrgHeight"] = self.orgHeight!
            }
            if self.orgWidth != nil {
                map["OrgWidth"] = self.orgWidth!
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.wordsInfo != nil {
                var tmp : [Any] = []
                for k in self.wordsInfo! {
                    tmp.append(k.toMap())
                }
                map["WordsInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Angle"] as? Int64 {
                self.angle = value
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["OrgHeight"] as? Int64 {
                self.orgHeight = value
            }
            if let value = dict["OrgWidth"] as? Int64 {
                self.orgWidth = value
            }
            if let value = dict["PageIndex"] as? Int64 {
                self.pageIndex = value
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
            if let value = dict["WordsInfo"] as? [Any?] {
                var tmp : [RecognizePdfResponseBody.Data.WordsInfo] = []
                for v in value {
                    if v != nil {
                        var model = RecognizePdfResponseBody.Data.WordsInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordsInfo = tmp
            }
        }
    }
    public var data: RecognizePdfResponseBody.Data?

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
            var model = RecognizePdfResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizePdfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizePdfResponseBody?

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
            var model = RecognizePdfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeQrCodeRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var tasks: [RecognizeQrCodeRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [RecognizeQrCodeRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = RecognizeQrCodeRequest.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class RecognizeQrCodeAdvanceRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var imageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
        }
    }
    public var tasks: [RecognizeQrCodeAdvanceRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [RecognizeQrCodeAdvanceRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = RecognizeQrCodeAdvanceRequest.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class RecognizeQrCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public var label: String?

                public var qrCodesData: [String]?

                public var rate: Double?

                public var suggestion: String?

                public override init() {
                    super.init()
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
                    if self.qrCodesData != nil {
                        map["QrCodesData"] = self.qrCodesData!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.suggestion != nil {
                        map["Suggestion"] = self.suggestion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["QrCodesData"] as? [String] {
                        self.qrCodesData = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                    if let value = dict["Suggestion"] as? String {
                        self.suggestion = value
                    }
                }
            }
            public var imageURL: String?

            public var results: [RecognizeQrCodeResponseBody.Data.Elements.Results]?

            public var taskId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.results != nil {
                    var tmp : [Any] = []
                    for k in self.results! {
                        tmp.append(k.toMap())
                    }
                    map["Results"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [RecognizeQrCodeResponseBody.Data.Elements.Results] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeQrCodeResponseBody.Data.Elements.Results()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.results = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var elements: [RecognizeQrCodeResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [RecognizeQrCodeResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeQrCodeResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: RecognizeQrCodeResponseBody.Data?

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
            var model = RecognizeQrCodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeQrCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeQrCodeResponseBody?

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
            var model = RecognizeQrCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeQuotaInvoiceRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeQuotaInvoiceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeQuotaInvoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var invoiceAmount: String?

            public var invoiceCode: String?

            public var invoiceDetails: String?

            public var invoiceNo: String?

            public var sumAmount: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.invoiceAmount != nil {
                    map["InvoiceAmount"] = self.invoiceAmount!
                }
                if self.invoiceCode != nil {
                    map["InvoiceCode"] = self.invoiceCode!
                }
                if self.invoiceDetails != nil {
                    map["InvoiceDetails"] = self.invoiceDetails!
                }
                if self.invoiceNo != nil {
                    map["InvoiceNo"] = self.invoiceNo!
                }
                if self.sumAmount != nil {
                    map["SumAmount"] = self.sumAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InvoiceAmount"] as? String {
                    self.invoiceAmount = value
                }
                if let value = dict["InvoiceCode"] as? String {
                    self.invoiceCode = value
                }
                if let value = dict["InvoiceDetails"] as? String {
                    self.invoiceDetails = value
                }
                if let value = dict["InvoiceNo"] as? String {
                    self.invoiceNo = value
                }
                if let value = dict["SumAmount"] as? String {
                    self.sumAmount = value
                }
            }
        }
        public class KeyValueInfos : Tea.TeaModel {
            public class ValuePositions : Tea.TeaModel {
                public var x: Int64?

                public var y: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public var key: String?

            public var value: String?

            public var valuePositions: [RecognizeQuotaInvoiceResponseBody.Data.KeyValueInfos.ValuePositions]?

            public var valueScore: Double?

            public override init() {
                super.init()
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
                if self.valuePositions != nil {
                    var tmp : [Any] = []
                    for k in self.valuePositions! {
                        tmp.append(k.toMap())
                    }
                    map["ValuePositions"] = tmp
                }
                if self.valueScore != nil {
                    map["ValueScore"] = self.valueScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValuePositions"] as? [Any?] {
                    var tmp : [RecognizeQuotaInvoiceResponseBody.Data.KeyValueInfos.ValuePositions] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeQuotaInvoiceResponseBody.Data.KeyValueInfos.ValuePositions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.valuePositions = tmp
                }
                if let value = dict["ValueScore"] as? Double {
                    self.valueScore = value
                }
            }
        }
        public var angle: Int64?

        public var content: RecognizeQuotaInvoiceResponseBody.Data.Content?

        public var height: Int64?

        public var keyValueInfos: [RecognizeQuotaInvoiceResponseBody.Data.KeyValueInfos]?

        public var orgHeight: Int64?

        public var orgWidth: Int64?

        public var width: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.content != nil {
                map["Content"] = self.content?.toMap()
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.keyValueInfos != nil {
                var tmp : [Any] = []
                for k in self.keyValueInfos! {
                    tmp.append(k.toMap())
                }
                map["KeyValueInfos"] = tmp
            }
            if self.orgHeight != nil {
                map["OrgHeight"] = self.orgHeight!
            }
            if self.orgWidth != nil {
                map["OrgWidth"] = self.orgWidth!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Angle"] as? Int64 {
                self.angle = value
            }
            if let value = dict["Content"] as? [String: Any?] {
                var model = RecognizeQuotaInvoiceResponseBody.Data.Content()
                model.fromMap(value)
                self.content = model
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["KeyValueInfos"] as? [Any?] {
                var tmp : [RecognizeQuotaInvoiceResponseBody.Data.KeyValueInfos] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeQuotaInvoiceResponseBody.Data.KeyValueInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.keyValueInfos = tmp
            }
            if let value = dict["OrgHeight"] as? Int64 {
                self.orgHeight = value
            }
            if let value = dict["OrgWidth"] as? Int64 {
                self.orgWidth = value
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
        }
    }
    public var data: RecognizeQuotaInvoiceResponseBody.Data?

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
            var model = RecognizeQuotaInvoiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeQuotaInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeQuotaInvoiceResponseBody?

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
            var model = RecognizeQuotaInvoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeTableRequest : Tea.TeaModel {
    public var assureDirection: Bool?

    public var hasLine: Bool?

    public var imageURL: String?

    public var outputFormat: String?

    public var skipDetection: Bool?

    public var useFinanceModel: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assureDirection != nil {
            map["AssureDirection"] = self.assureDirection!
        }
        if self.hasLine != nil {
            map["HasLine"] = self.hasLine!
        }
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.skipDetection != nil {
            map["SkipDetection"] = self.skipDetection!
        }
        if self.useFinanceModel != nil {
            map["UseFinanceModel"] = self.useFinanceModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssureDirection"] as? Bool {
            self.assureDirection = value
        }
        if let value = dict["HasLine"] as? Bool {
            self.hasLine = value
        }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["SkipDetection"] as? Bool {
            self.skipDetection = value
        }
        if let value = dict["UseFinanceModel"] as? Bool {
            self.useFinanceModel = value
        }
    }
}

public class RecognizeTableAdvanceRequest : Tea.TeaModel {
    public var assureDirection: Bool?

    public var hasLine: Bool?

    public var imageURLObject: InputStream?

    public var outputFormat: String?

    public var skipDetection: Bool?

    public var useFinanceModel: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assureDirection != nil {
            map["AssureDirection"] = self.assureDirection!
        }
        if self.hasLine != nil {
            map["HasLine"] = self.hasLine!
        }
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.skipDetection != nil {
            map["SkipDetection"] = self.skipDetection!
        }
        if self.useFinanceModel != nil {
            map["UseFinanceModel"] = self.useFinanceModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssureDirection"] as? Bool {
            self.assureDirection = value
        }
        if let value = dict["HasLine"] as? Bool {
            self.hasLine = value
        }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["SkipDetection"] as? Bool {
            self.skipDetection = value
        }
        if let value = dict["UseFinanceModel"] as? Bool {
            self.useFinanceModel = value
        }
    }
}

public class RecognizeTableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public class TableRows : Tea.TeaModel {
                public class TableColumns : Tea.TeaModel {
                    public var endColumn: Int32?

                    public var endRow: Int32?

                    public var height: Int32?

                    public var startColumn: Int32?

                    public var startRow: Int32?

                    public var texts: [String]?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endColumn != nil {
                            map["EndColumn"] = self.endColumn!
                        }
                        if self.endRow != nil {
                            map["EndRow"] = self.endRow!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.startColumn != nil {
                            map["StartColumn"] = self.startColumn!
                        }
                        if self.startRow != nil {
                            map["StartRow"] = self.startRow!
                        }
                        if self.texts != nil {
                            map["Texts"] = self.texts!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["EndColumn"] as? Int32 {
                            self.endColumn = value
                        }
                        if let value = dict["EndRow"] as? Int32 {
                            self.endRow = value
                        }
                        if let value = dict["Height"] as? Int32 {
                            self.height = value
                        }
                        if let value = dict["StartColumn"] as? Int32 {
                            self.startColumn = value
                        }
                        if let value = dict["StartRow"] as? Int32 {
                            self.startRow = value
                        }
                        if let value = dict["Texts"] as? [String] {
                            self.texts = value
                        }
                        if let value = dict["Width"] as? Int32 {
                            self.width = value
                        }
                    }
                }
                public var tableColumns: [RecognizeTableResponseBody.Data.Tables.TableRows.TableColumns]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tableColumns != nil {
                        var tmp : [Any] = []
                        for k in self.tableColumns! {
                            tmp.append(k.toMap())
                        }
                        map["TableColumns"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TableColumns"] as? [Any?] {
                        var tmp : [RecognizeTableResponseBody.Data.Tables.TableRows.TableColumns] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizeTableResponseBody.Data.Tables.TableRows.TableColumns()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tableColumns = tmp
                    }
                }
            }
            public var head: [String]?

            public var tableRows: [RecognizeTableResponseBody.Data.Tables.TableRows]?

            public var tail: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.head != nil {
                    map["Head"] = self.head!
                }
                if self.tableRows != nil {
                    var tmp : [Any] = []
                    for k in self.tableRows! {
                        tmp.append(k.toMap())
                    }
                    map["TableRows"] = tmp
                }
                if self.tail != nil {
                    map["Tail"] = self.tail!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Head"] as? [String] {
                    self.head = value
                }
                if let value = dict["TableRows"] as? [Any?] {
                    var tmp : [RecognizeTableResponseBody.Data.Tables.TableRows] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeTableResponseBody.Data.Tables.TableRows()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tableRows = tmp
                }
                if let value = dict["Tail"] as? [String] {
                    self.tail = value
                }
            }
        }
        public var fileContent: String?

        public var tables: [RecognizeTableResponseBody.Data.Tables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileContent != nil {
                map["FileContent"] = self.fileContent!
            }
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileContent"] as? String {
                self.fileContent = value
            }
            if let value = dict["Tables"] as? [Any?] {
                var tmp : [RecognizeTableResponseBody.Data.Tables] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeTableResponseBody.Data.Tables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tables = tmp
            }
        }
    }
    public var data: RecognizeTableResponseBody.Data?

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
            var model = RecognizeTableResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTableResponseBody?

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
            var model = RecognizeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeTaxiInvoiceRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeTaxiInvoiceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeTaxiInvoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Invoices : Tea.TeaModel {
            public class InvoiceRoi : Tea.TeaModel {
                public var h: Double?

                public var w: Double?

                public var x: Double?

                public var y: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.h != nil {
                        map["H"] = self.h!
                    }
                    if self.w != nil {
                        map["W"] = self.w!
                    }
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["H"] as? Double {
                        self.h = value
                    }
                    if let value = dict["W"] as? Double {
                        self.w = value
                    }
                    if let value = dict["X"] as? Double {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Double {
                        self.y = value
                    }
                }
            }
            public class Items : Tea.TeaModel {
                public class ItemRoi : Tea.TeaModel {
                    public class Center : Tea.TeaModel {
                        public var x: Double?

                        public var y: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["X"] = self.x!
                            }
                            if self.y != nil {
                                map["Y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["X"] as? Double {
                                self.x = value
                            }
                            if let value = dict["Y"] as? Double {
                                self.y = value
                            }
                        }
                    }
                    public class Size : Tea.TeaModel {
                        public var h: Double?

                        public var w: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.h != nil {
                                map["H"] = self.h!
                            }
                            if self.w != nil {
                                map["W"] = self.w!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["H"] as? Double {
                                self.h = value
                            }
                            if let value = dict["W"] as? Double {
                                self.w = value
                            }
                        }
                    }
                    public var angle: Double?

                    public var center: RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items.ItemRoi.Center?

                    public var size: RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items.ItemRoi.Size?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.center?.validate()
                        try self.size?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.angle != nil {
                            map["Angle"] = self.angle!
                        }
                        if self.center != nil {
                            map["Center"] = self.center?.toMap()
                        }
                        if self.size != nil {
                            map["Size"] = self.size?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Angle"] as? Double {
                            self.angle = value
                        }
                        if let value = dict["Center"] as? [String: Any?] {
                            var model = RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items.ItemRoi.Center()
                            model.fromMap(value)
                            self.center = model
                        }
                        if let value = dict["Size"] as? [String: Any?] {
                            var model = RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items.ItemRoi.Size()
                            model.fromMap(value)
                            self.size = model
                        }
                    }
                }
                public var itemRoi: RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items.ItemRoi?

                public var text: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.itemRoi?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.itemRoi != nil {
                        map["ItemRoi"] = self.itemRoi?.toMap()
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ItemRoi"] as? [String: Any?] {
                        var model = RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items.ItemRoi()
                        model.fromMap(value)
                        self.itemRoi = model
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                }
            }
            public var invoiceRoi: RecognizeTaxiInvoiceResponseBody.Data.Invoices.InvoiceRoi?

            public var items: [RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items]?

            public var rotateType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.invoiceRoi?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.invoiceRoi != nil {
                    map["InvoiceRoi"] = self.invoiceRoi?.toMap()
                }
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["Items"] = tmp
                }
                if self.rotateType != nil {
                    map["RotateType"] = self.rotateType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InvoiceRoi"] as? [String: Any?] {
                    var model = RecognizeTaxiInvoiceResponseBody.Data.Invoices.InvoiceRoi()
                    model.fromMap(value)
                    self.invoiceRoi = model
                }
                if let value = dict["Items"] as? [Any?] {
                    var tmp : [RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeTaxiInvoiceResponseBody.Data.Invoices.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
                if let value = dict["RotateType"] as? Int32 {
                    self.rotateType = value
                }
            }
        }
        public var invoices: [RecognizeTaxiInvoiceResponseBody.Data.Invoices]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.invoices != nil {
                var tmp : [Any] = []
                for k in self.invoices! {
                    tmp.append(k.toMap())
                }
                map["Invoices"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Invoices"] as? [Any?] {
                var tmp : [RecognizeTaxiInvoiceResponseBody.Data.Invoices] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeTaxiInvoiceResponseBody.Data.Invoices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.invoices = tmp
            }
        }
    }
    public var data: RecognizeTaxiInvoiceResponseBody.Data?

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
            var model = RecognizeTaxiInvoiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeTaxiInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTaxiInvoiceResponseBody?

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
            var model = RecognizeTaxiInvoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeTicketInvoiceRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeTicketInvoiceAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeTicketInvoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public class Content : Tea.TeaModel {
                public var antiFakeCode: String?

                public var invoiceCode: String?

                public var invoiceDate: String?

                public var invoiceNumber: String?

                public var payeeName: String?

                public var payeeRegisterNo: String?

                public var payerName: String?

                public var payerRegisterNo: String?

                public var sumAmount: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.antiFakeCode != nil {
                        map["AntiFakeCode"] = self.antiFakeCode!
                    }
                    if self.invoiceCode != nil {
                        map["InvoiceCode"] = self.invoiceCode!
                    }
                    if self.invoiceDate != nil {
                        map["InvoiceDate"] = self.invoiceDate!
                    }
                    if self.invoiceNumber != nil {
                        map["InvoiceNumber"] = self.invoiceNumber!
                    }
                    if self.payeeName != nil {
                        map["PayeeName"] = self.payeeName!
                    }
                    if self.payeeRegisterNo != nil {
                        map["PayeeRegisterNo"] = self.payeeRegisterNo!
                    }
                    if self.payerName != nil {
                        map["PayerName"] = self.payerName!
                    }
                    if self.payerRegisterNo != nil {
                        map["PayerRegisterNo"] = self.payerRegisterNo!
                    }
                    if self.sumAmount != nil {
                        map["SumAmount"] = self.sumAmount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AntiFakeCode"] as? String {
                        self.antiFakeCode = value
                    }
                    if let value = dict["InvoiceCode"] as? String {
                        self.invoiceCode = value
                    }
                    if let value = dict["InvoiceDate"] as? String {
                        self.invoiceDate = value
                    }
                    if let value = dict["InvoiceNumber"] as? String {
                        self.invoiceNumber = value
                    }
                    if let value = dict["PayeeName"] as? String {
                        self.payeeName = value
                    }
                    if let value = dict["PayeeRegisterNo"] as? String {
                        self.payeeRegisterNo = value
                    }
                    if let value = dict["PayerName"] as? String {
                        self.payerName = value
                    }
                    if let value = dict["PayerRegisterNo"] as? String {
                        self.payerRegisterNo = value
                    }
                    if let value = dict["SumAmount"] as? String {
                        self.sumAmount = value
                    }
                }
            }
            public class KeyValueInfos : Tea.TeaModel {
                public class ValuePositions : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["X"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public var key: String?

                public var value: String?

                public var valuePositions: [RecognizeTicketInvoiceResponseBody.Data.Results.KeyValueInfos.ValuePositions]?

                public var valueScore: Double?

                public override init() {
                    super.init()
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
                    if self.valuePositions != nil {
                        var tmp : [Any] = []
                        for k in self.valuePositions! {
                            tmp.append(k.toMap())
                        }
                        map["ValuePositions"] = tmp
                    }
                    if self.valueScore != nil {
                        map["ValueScore"] = self.valueScore!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                    if let value = dict["ValuePositions"] as? [Any?] {
                        var tmp : [RecognizeTicketInvoiceResponseBody.Data.Results.KeyValueInfos.ValuePositions] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizeTicketInvoiceResponseBody.Data.Results.KeyValueInfos.ValuePositions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.valuePositions = tmp
                    }
                    if let value = dict["ValueScore"] as? Double {
                        self.valueScore = value
                    }
                }
            }
            public class SliceRectangle : Tea.TeaModel {
                public var x: Int64?

                public var y: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public var content: RecognizeTicketInvoiceResponseBody.Data.Results.Content?

            public var index: Int64?

            public var keyValueInfos: [RecognizeTicketInvoiceResponseBody.Data.Results.KeyValueInfos]?

            public var sliceRectangle: [RecognizeTicketInvoiceResponseBody.Data.Results.SliceRectangle]?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.content?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content?.toMap()
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.keyValueInfos != nil {
                    var tmp : [Any] = []
                    for k in self.keyValueInfos! {
                        tmp.append(k.toMap())
                    }
                    map["KeyValueInfos"] = tmp
                }
                if self.sliceRectangle != nil {
                    var tmp : [Any] = []
                    for k in self.sliceRectangle! {
                        tmp.append(k.toMap())
                    }
                    map["SliceRectangle"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? [String: Any?] {
                    var model = RecognizeTicketInvoiceResponseBody.Data.Results.Content()
                    model.fromMap(value)
                    self.content = model
                }
                if let value = dict["Index"] as? Int64 {
                    self.index = value
                }
                if let value = dict["KeyValueInfos"] as? [Any?] {
                    var tmp : [RecognizeTicketInvoiceResponseBody.Data.Results.KeyValueInfos] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeTicketInvoiceResponseBody.Data.Results.KeyValueInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.keyValueInfos = tmp
                }
                if let value = dict["SliceRectangle"] as? [Any?] {
                    var tmp : [RecognizeTicketInvoiceResponseBody.Data.Results.SliceRectangle] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeTicketInvoiceResponseBody.Data.Results.SliceRectangle()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sliceRectangle = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var count: Int64?

        public var height: Int64?

        public var orgHeight: Int64?

        public var orgWidth: Int64?

        public var results: [RecognizeTicketInvoiceResponseBody.Data.Results]?

        public var width: Int64?

        public override init() {
            super.init()
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
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.orgHeight != nil {
                map["OrgHeight"] = self.orgHeight!
            }
            if self.orgWidth != nil {
                map["OrgWidth"] = self.orgWidth!
            }
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["OrgHeight"] as? Int64 {
                self.orgHeight = value
            }
            if let value = dict["OrgWidth"] as? Int64 {
                self.orgWidth = value
            }
            if let value = dict["Results"] as? [Any?] {
                var tmp : [RecognizeTicketInvoiceResponseBody.Data.Results] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeTicketInvoiceResponseBody.Data.Results()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.results = tmp
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
        }
    }
    public var data: RecognizeTicketInvoiceResponseBody.Data?

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
            var model = RecognizeTicketInvoiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeTicketInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTicketInvoiceResponseBody?

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
            var model = RecognizeTicketInvoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeTrainTicketRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeTrainTicketAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeTrainTicketResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var date: String?

        public var departureStation: String?

        public var destination: String?

        public var level: String?

        public var name: String?

        public var number: String?

        public var price: Double?

        public var seat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.departureStation != nil {
                map["DepartureStation"] = self.departureStation!
            }
            if self.destination != nil {
                map["Destination"] = self.destination!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.seat != nil {
                map["Seat"] = self.seat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["DepartureStation"] as? String {
                self.departureStation = value
            }
            if let value = dict["Destination"] as? String {
                self.destination = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["Seat"] as? String {
                self.seat = value
            }
        }
    }
    public var data: RecognizeTrainTicketResponseBody.Data?

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
            var model = RecognizeTrainTicketResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeTrainTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeTrainTicketResponseBody?

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
            var model = RecognizeTrainTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeVATInvoiceRequest : Tea.TeaModel {
    public var fileType: String?

    public var fileURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileURL != nil {
            map["FileURL"] = self.fileURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileURL"] as? String {
            self.fileURL = value
        }
    }
}

public class RecognizeVATInvoiceAdvanceRequest : Tea.TeaModel {
    public var fileType: String?

    public var fileURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileURLObject != nil {
            map["FileURL"] = self.fileURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileURL"] as? InputStream {
            self.fileURLObject = value
        }
    }
}

public class RecognizeVATInvoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Box : Tea.TeaModel {
            public var checkers: [Double]?

            public var clerks: [Double]?

            public var invoiceAmounts: [Double]?

            public var invoiceCodes: [Double]?

            public var invoiceDates: [Double]?

            public var invoiceFakeCodes: [Double]?

            public var invoiceNoes: [Double]?

            public var itemNames: [Int32]?

            public var payeeAddresses: [Double]?

            public var payeeBankNames: [Double]?

            public var payeeNames: [Double]?

            public var payeeRegisterNoes: [Double]?

            public var payees: [Double]?

            public var payerAddresses: [Double]?

            public var payerBankNames: [Double]?

            public var payerNames: [Double]?

            public var payerRegisterNoes: [Double]?

            public var sumAmounts: [Double]?

            public var taxAmounts: [Double]?

            public var withoutTaxAmounts: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkers != nil {
                    map["Checkers"] = self.checkers!
                }
                if self.clerks != nil {
                    map["Clerks"] = self.clerks!
                }
                if self.invoiceAmounts != nil {
                    map["InvoiceAmounts"] = self.invoiceAmounts!
                }
                if self.invoiceCodes != nil {
                    map["InvoiceCodes"] = self.invoiceCodes!
                }
                if self.invoiceDates != nil {
                    map["InvoiceDates"] = self.invoiceDates!
                }
                if self.invoiceFakeCodes != nil {
                    map["InvoiceFakeCodes"] = self.invoiceFakeCodes!
                }
                if self.invoiceNoes != nil {
                    map["InvoiceNoes"] = self.invoiceNoes!
                }
                if self.itemNames != nil {
                    map["ItemNames"] = self.itemNames!
                }
                if self.payeeAddresses != nil {
                    map["PayeeAddresses"] = self.payeeAddresses!
                }
                if self.payeeBankNames != nil {
                    map["PayeeBankNames"] = self.payeeBankNames!
                }
                if self.payeeNames != nil {
                    map["PayeeNames"] = self.payeeNames!
                }
                if self.payeeRegisterNoes != nil {
                    map["PayeeRegisterNoes"] = self.payeeRegisterNoes!
                }
                if self.payees != nil {
                    map["Payees"] = self.payees!
                }
                if self.payerAddresses != nil {
                    map["PayerAddresses"] = self.payerAddresses!
                }
                if self.payerBankNames != nil {
                    map["PayerBankNames"] = self.payerBankNames!
                }
                if self.payerNames != nil {
                    map["PayerNames"] = self.payerNames!
                }
                if self.payerRegisterNoes != nil {
                    map["PayerRegisterNoes"] = self.payerRegisterNoes!
                }
                if self.sumAmounts != nil {
                    map["SumAmounts"] = self.sumAmounts!
                }
                if self.taxAmounts != nil {
                    map["TaxAmounts"] = self.taxAmounts!
                }
                if self.withoutTaxAmounts != nil {
                    map["WithoutTaxAmounts"] = self.withoutTaxAmounts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Checkers"] as? [Double] {
                    self.checkers = value
                }
                if let value = dict["Clerks"] as? [Double] {
                    self.clerks = value
                }
                if let value = dict["InvoiceAmounts"] as? [Double] {
                    self.invoiceAmounts = value
                }
                if let value = dict["InvoiceCodes"] as? [Double] {
                    self.invoiceCodes = value
                }
                if let value = dict["InvoiceDates"] as? [Double] {
                    self.invoiceDates = value
                }
                if let value = dict["InvoiceFakeCodes"] as? [Double] {
                    self.invoiceFakeCodes = value
                }
                if let value = dict["InvoiceNoes"] as? [Double] {
                    self.invoiceNoes = value
                }
                if let value = dict["ItemNames"] as? [Int32] {
                    self.itemNames = value
                }
                if let value = dict["PayeeAddresses"] as? [Double] {
                    self.payeeAddresses = value
                }
                if let value = dict["PayeeBankNames"] as? [Double] {
                    self.payeeBankNames = value
                }
                if let value = dict["PayeeNames"] as? [Double] {
                    self.payeeNames = value
                }
                if let value = dict["PayeeRegisterNoes"] as? [Double] {
                    self.payeeRegisterNoes = value
                }
                if let value = dict["Payees"] as? [Double] {
                    self.payees = value
                }
                if let value = dict["PayerAddresses"] as? [Double] {
                    self.payerAddresses = value
                }
                if let value = dict["PayerBankNames"] as? [Double] {
                    self.payerBankNames = value
                }
                if let value = dict["PayerNames"] as? [Double] {
                    self.payerNames = value
                }
                if let value = dict["PayerRegisterNoes"] as? [Double] {
                    self.payerRegisterNoes = value
                }
                if let value = dict["SumAmounts"] as? [Double] {
                    self.sumAmounts = value
                }
                if let value = dict["TaxAmounts"] as? [Double] {
                    self.taxAmounts = value
                }
                if let value = dict["WithoutTaxAmounts"] as? [Double] {
                    self.withoutTaxAmounts = value
                }
            }
        }
        public class Content : Tea.TeaModel {
            public var antiFakeCode: String?

            public var checker: String?

            public var clerk: String?

            public var invoiceAmount: String?

            public var invoiceCode: String?

            public var invoiceDate: String?

            public var invoiceNo: String?

            public var itemName: [String]?

            public var payee: String?

            public var payeeAddress: String?

            public var payeeBankName: String?

            public var payeeName: String?

            public var payeeRegisterNo: String?

            public var payerAddress: String?

            public var payerBankName: String?

            public var payerName: String?

            public var payerRegisterNo: String?

            public var sumAmount: String?

            public var taxAmount: String?

            public var withoutTaxAmount: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.antiFakeCode != nil {
                    map["AntiFakeCode"] = self.antiFakeCode!
                }
                if self.checker != nil {
                    map["Checker"] = self.checker!
                }
                if self.clerk != nil {
                    map["Clerk"] = self.clerk!
                }
                if self.invoiceAmount != nil {
                    map["InvoiceAmount"] = self.invoiceAmount!
                }
                if self.invoiceCode != nil {
                    map["InvoiceCode"] = self.invoiceCode!
                }
                if self.invoiceDate != nil {
                    map["InvoiceDate"] = self.invoiceDate!
                }
                if self.invoiceNo != nil {
                    map["InvoiceNo"] = self.invoiceNo!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.payee != nil {
                    map["Payee"] = self.payee!
                }
                if self.payeeAddress != nil {
                    map["PayeeAddress"] = self.payeeAddress!
                }
                if self.payeeBankName != nil {
                    map["PayeeBankName"] = self.payeeBankName!
                }
                if self.payeeName != nil {
                    map["PayeeName"] = self.payeeName!
                }
                if self.payeeRegisterNo != nil {
                    map["PayeeRegisterNo"] = self.payeeRegisterNo!
                }
                if self.payerAddress != nil {
                    map["PayerAddress"] = self.payerAddress!
                }
                if self.payerBankName != nil {
                    map["PayerBankName"] = self.payerBankName!
                }
                if self.payerName != nil {
                    map["PayerName"] = self.payerName!
                }
                if self.payerRegisterNo != nil {
                    map["PayerRegisterNo"] = self.payerRegisterNo!
                }
                if self.sumAmount != nil {
                    map["SumAmount"] = self.sumAmount!
                }
                if self.taxAmount != nil {
                    map["TaxAmount"] = self.taxAmount!
                }
                if self.withoutTaxAmount != nil {
                    map["WithoutTaxAmount"] = self.withoutTaxAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AntiFakeCode"] as? String {
                    self.antiFakeCode = value
                }
                if let value = dict["Checker"] as? String {
                    self.checker = value
                }
                if let value = dict["Clerk"] as? String {
                    self.clerk = value
                }
                if let value = dict["InvoiceAmount"] as? String {
                    self.invoiceAmount = value
                }
                if let value = dict["InvoiceCode"] as? String {
                    self.invoiceCode = value
                }
                if let value = dict["InvoiceDate"] as? String {
                    self.invoiceDate = value
                }
                if let value = dict["InvoiceNo"] as? String {
                    self.invoiceNo = value
                }
                if let value = dict["ItemName"] as? [String] {
                    self.itemName = value
                }
                if let value = dict["Payee"] as? String {
                    self.payee = value
                }
                if let value = dict["PayeeAddress"] as? String {
                    self.payeeAddress = value
                }
                if let value = dict["PayeeBankName"] as? String {
                    self.payeeBankName = value
                }
                if let value = dict["PayeeName"] as? String {
                    self.payeeName = value
                }
                if let value = dict["PayeeRegisterNo"] as? String {
                    self.payeeRegisterNo = value
                }
                if let value = dict["PayerAddress"] as? String {
                    self.payerAddress = value
                }
                if let value = dict["PayerBankName"] as? String {
                    self.payerBankName = value
                }
                if let value = dict["PayerName"] as? String {
                    self.payerName = value
                }
                if let value = dict["PayerRegisterNo"] as? String {
                    self.payerRegisterNo = value
                }
                if let value = dict["SumAmount"] as? String {
                    self.sumAmount = value
                }
                if let value = dict["TaxAmount"] as? String {
                    self.taxAmount = value
                }
                if let value = dict["WithoutTaxAmount"] as? String {
                    self.withoutTaxAmount = value
                }
            }
        }
        public var box: RecognizeVATInvoiceResponseBody.Data.Box?

        public var content: RecognizeVATInvoiceResponseBody.Data.Content?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.box?.validate()
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.box != nil {
                map["Box"] = self.box?.toMap()
            }
            if self.content != nil {
                map["Content"] = self.content?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Box"] as? [String: Any?] {
                var model = RecognizeVATInvoiceResponseBody.Data.Box()
                model.fromMap(value)
                self.box = model
            }
            if let value = dict["Content"] as? [String: Any?] {
                var model = RecognizeVATInvoiceResponseBody.Data.Content()
                model.fromMap(value)
                self.content = model
            }
        }
    }
    public var data: RecognizeVATInvoiceResponseBody.Data?

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
            var model = RecognizeVATInvoiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeVATInvoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVATInvoiceResponseBody?

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
            var model = RecognizeVATInvoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeVINCodeRequest : Tea.TeaModel {
    public var imageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RecognizeVINCodeAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RecognizeVINCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var vinCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vinCode != nil {
                map["VinCode"] = self.vinCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VinCode"] as? String {
                self.vinCode = value
            }
        }
    }
    public var data: RecognizeVINCodeResponseBody.Data?

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
            var model = RecognizeVINCodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeVINCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVINCodeResponseBody?

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
            var model = RecognizeVINCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecognizeVideoCharacterRequest : Tea.TeaModel {
    public var videoURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoURL != nil {
            map["VideoURL"] = self.videoURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoURL"] as? String {
            self.videoURL = value
        }
    }
}

public class RecognizeVideoCharacterAdvanceRequest : Tea.TeaModel {
    public var videoURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
    }
}

public class RecognizeVideoCharacterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Frames : Tea.TeaModel {
            public class Elements : Tea.TeaModel {
                public class TextRectangles : Tea.TeaModel {
                    public var angle: Int64?

                    public var height: Int64?

                    public var left_: Int64?

                    public var top: Int64?

                    public var width: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.angle != nil {
                            map["Angle"] = self.angle!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_!
                        }
                        if self.top != nil {
                            map["Top"] = self.top!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Angle"] as? Int64 {
                            self.angle = value
                        }
                        if let value = dict["Height"] as? Int64 {
                            self.height = value
                        }
                        if let value = dict["Left"] as? Int64 {
                            self.left_ = value
                        }
                        if let value = dict["Top"] as? Int64 {
                            self.top = value
                        }
                        if let value = dict["Width"] as? Int64 {
                            self.width = value
                        }
                    }
                }
                public var score: Double?

                public var text: String?

                public var textRectangles: [RecognizeVideoCharacterResponseBody.Data.Frames.Elements.TextRectangles]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.textRectangles != nil {
                        var tmp : [Any] = []
                        for k in self.textRectangles! {
                            tmp.append(k.toMap())
                        }
                        map["TextRectangles"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["TextRectangles"] as? [Any?] {
                        var tmp : [RecognizeVideoCharacterResponseBody.Data.Frames.Elements.TextRectangles] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizeVideoCharacterResponseBody.Data.Frames.Elements.TextRectangles()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.textRectangles = tmp
                    }
                }
            }
            public var elements: [RecognizeVideoCharacterResponseBody.Data.Frames.Elements]?

            public var timestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.elements != nil {
                    var tmp : [Any] = []
                    for k in self.elements! {
                        tmp.append(k.toMap())
                    }
                    map["Elements"] = tmp
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Elements"] as? [Any?] {
                    var tmp : [RecognizeVideoCharacterResponseBody.Data.Frames.Elements] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeVideoCharacterResponseBody.Data.Frames.Elements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.elements = tmp
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
            }
        }
        public var frames: [RecognizeVideoCharacterResponseBody.Data.Frames]?

        public var height: Int64?

        public var inputFile: String?

        public var width: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.frames != nil {
                var tmp : [Any] = []
                for k in self.frames! {
                    tmp.append(k.toMap())
                }
                map["Frames"] = tmp
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.inputFile != nil {
                map["InputFile"] = self.inputFile!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Frames"] as? [Any?] {
                var tmp : [RecognizeVideoCharacterResponseBody.Data.Frames] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeVideoCharacterResponseBody.Data.Frames()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.frames = tmp
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["InputFile"] as? String {
                self.inputFile = value
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
        }
    }
    public var data: RecognizeVideoCharacterResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RecognizeVideoCharacterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecognizeVideoCharacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVideoCharacterResponseBody?

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
            var model = RecognizeVideoCharacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
