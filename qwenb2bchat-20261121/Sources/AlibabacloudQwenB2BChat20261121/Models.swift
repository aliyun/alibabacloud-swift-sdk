import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChatHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accept: String?

    public var xDashScopeSSE: String?

    public var xGWAccess: String?

    public var xGWNonce: String?

    public var xGWProtocol: String?

    public var xGWSignature: String?

    public var xGWTimestamp: String?

    public var xRequestId: String?

    public override init() {
        super.init()
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
        if self.accept != nil {
            map["Accept"] = self.accept!
        }
        if self.xDashScopeSSE != nil {
            map["X-DashScope-SSE"] = self.xDashScopeSSE!
        }
        if self.xGWAccess != nil {
            map["X-GW-Access"] = self.xGWAccess!
        }
        if self.xGWNonce != nil {
            map["X-GW-Nonce"] = self.xGWNonce!
        }
        if self.xGWProtocol != nil {
            map["X-GW-Protocol"] = self.xGWProtocol!
        }
        if self.xGWSignature != nil {
            map["X-GW-Signature"] = self.xGWSignature!
        }
        if self.xGWTimestamp != nil {
            map["X-GW-Timestamp"] = self.xGWTimestamp!
        }
        if self.xRequestId != nil {
            map["X-Request-Id"] = self.xRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Accept"] as? String {
            self.accept = value
        }
        if let value = dict["X-DashScope-SSE"] as? String {
            self.xDashScopeSSE = value
        }
        if let value = dict["X-GW-Access"] as? String {
            self.xGWAccess = value
        }
        if let value = dict["X-GW-Nonce"] as? String {
            self.xGWNonce = value
        }
        if let value = dict["X-GW-Protocol"] as? String {
            self.xGWProtocol = value
        }
        if let value = dict["X-GW-Signature"] as? String {
            self.xGWSignature = value
        }
        if let value = dict["X-GW-Timestamp"] as? String {
            self.xGWTimestamp = value
        }
        if let value = dict["X-Request-Id"] as? String {
            self.xRequestId = value
        }
    }
}

public class ChatRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ChatResponseBody : Tea.TeaModel {
    public class AudioFrames : Tea.TeaModel {
        public var code: String?

        public var data: String?

        public var last: Bool?

        public var message: String?

        public var requestId: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.data != nil {
                map["data"] = self.data!
            }
            if self.last != nil {
                map["last"] = self.last!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["data"] as? String {
                self.data = value
            }
            if let value = dict["last"] as? Bool {
                self.last = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Communication : Tea.TeaModel {
        public var requestId: String?

        public var responseId: Int64?

        public var sessionId: String?

        public override init() {
            super.init()
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
                map["requestId"] = self.requestId!
            }
            if self.responseId != nil {
                map["responseId"] = self.responseId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["responseId"] as? Int64 {
                self.responseId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class ExtraInfo : Tea.TeaModel {
            public class InputResources : Tea.TeaModel {
                public var contentIndex: Int32?

                public var fileName: String?

                public var resourceId: String?

                public var type: String?

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
                    if self.contentIndex != nil {
                        map["contentIndex"] = self.contentIndex!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.resourceId != nil {
                        map["resourceId"] = self.resourceId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["contentIndex"] as? Int32 {
                        self.contentIndex = value
                    }
                    if let value = dict["fileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["resourceId"] as? String {
                        self.resourceId = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public var inputResources: [ChatResponseBody.Data.ExtraInfo.InputResources]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputResources != nil {
                    var tmp : [Any] = []
                    for k in self.inputResources! {
                        tmp.append(k.toMap())
                    }
                    map["inputResources"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputResources"] as? [Any?] {
                    var tmp : [ChatResponseBody.Data.ExtraInfo.InputResources] = []
                    for v in value {
                        if v != nil {
                            var model = ChatResponseBody.Data.ExtraInfo.InputResources()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.inputResources = tmp
                }
            }
        }
        public class Messages : Tea.TeaModel {
            public class MetaData : Tea.TeaModel {
                public class MultiLoad : Tea.TeaModel {
                    public var content: Any?

                    public var sourceSeq: String?

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
                        if self.content != nil {
                            map["content"] = self.content!
                        }
                        if self.sourceSeq != nil {
                            map["sourceSeq"] = self.sourceSeq!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["content"] as? Any {
                            self.content = value
                        }
                        if let value = dict["sourceSeq"] as? String {
                            self.sourceSeq = value
                        }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var barTitle: String?

                public var content: Any?

                public var multiLoad: [ChatResponseBody.Data.Messages.MetaData.MultiLoad]?

                public var sourceSeq: String?

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
                    if self.barTitle != nil {
                        map["barTitle"] = self.barTitle!
                    }
                    if self.content != nil {
                        map["content"] = self.content!
                    }
                    if self.multiLoad != nil {
                        var tmp : [Any] = []
                        for k in self.multiLoad! {
                            tmp.append(k.toMap())
                        }
                        map["multiLoad"] = tmp
                    }
                    if self.sourceSeq != nil {
                        map["sourceSeq"] = self.sourceSeq!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["barTitle"] as? String {
                        self.barTitle = value
                    }
                    if let value = dict["content"] as? Any {
                        self.content = value
                    }
                    if let value = dict["multiLoad"] as? [Any?] {
                        var tmp : [ChatResponseBody.Data.Messages.MetaData.MultiLoad] = []
                        for v in value {
                            if v != nil {
                                var model = ChatResponseBody.Data.Messages.MetaData.MultiLoad()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.multiLoad = tmp
                    }
                    if let value = dict["sourceSeq"] as? String {
                        self.sourceSeq = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var content: Any?

            public var metaData: ChatResponseBody.Data.Messages.MetaData?

            public var mimeType: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metaData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.metaData != nil {
                    map["metaData"] = self.metaData?.toMap()
                }
                if self.mimeType != nil {
                    map["mimeType"] = self.mimeType!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? Any {
                    self.content = value
                }
                if let value = dict["metaData"] as? [String: Any?] {
                    var model = ChatResponseBody.Data.Messages.MetaData()
                    model.fromMap(value)
                    self.metaData = model
                }
                if let value = dict["mimeType"] as? String {
                    self.mimeType = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var debug: Any?

        public var extraInfo: ChatResponseBody.Data.ExtraInfo?

        public var messages: [ChatResponseBody.Data.Messages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extraInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.debug != nil {
                map["debug"] = self.debug!
            }
            if self.extraInfo != nil {
                map["extraInfo"] = self.extraInfo?.toMap()
            }
            if self.messages != nil {
                var tmp : [Any] = []
                for k in self.messages! {
                    tmp.append(k.toMap())
                }
                map["messages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["debug"] as? Any {
                self.debug = value
            }
            if let value = dict["extraInfo"] as? [String: Any?] {
                var model = ChatResponseBody.Data.ExtraInfo()
                model.fromMap(value)
                self.extraInfo = model
            }
            if let value = dict["messages"] as? [Any?] {
                var tmp : [ChatResponseBody.Data.Messages] = []
                for v in value {
                    if v != nil {
                        var model = ChatResponseBody.Data.Messages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.messages = tmp
            }
        }
    }
    public class Error : Tea.TeaModel {
        public var code: Any?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? Any {
                self.code = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
        }
    }
    public var audioFrames: [ChatResponseBody.AudioFrames]?

    public var communication: ChatResponseBody.Communication?

    public var data: ChatResponseBody.Data?

    public var error: ChatResponseBody.Error?

    public var errorCode: Any?

    public var errorMsg: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.communication?.validate()
        try self.data?.validate()
        try self.error?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioFrames != nil {
            var tmp : [Any] = []
            for k in self.audioFrames! {
                tmp.append(k.toMap())
            }
            map["audioFrames"] = tmp
        }
        if self.communication != nil {
            map["communication"] = self.communication?.toMap()
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.error != nil {
            map["error"] = self.error?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["audioFrames"] as? [Any?] {
            var tmp : [ChatResponseBody.AudioFrames] = []
            for v in value {
                if v != nil {
                    var model = ChatResponseBody.AudioFrames()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.audioFrames = tmp
        }
        if let value = dict["communication"] as? [String: Any?] {
            var model = ChatResponseBody.Communication()
            model.fromMap(value)
            self.communication = model
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ChatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["error"] as? [String: Any?] {
            var model = ChatResponseBody.Error()
            model.fromMap(value)
            self.error = model
        }
        if let value = dict["errorCode"] as? Any {
            self.errorCode = value
        }
        if let value = dict["errorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatResponseBody?

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
            var model = ChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenServiceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xGWAccess: String?

    public var xGWNonce: String?

    public var xGWSignature: String?

    public var xGWTimestamp: String?

    public var xRequestId: String?

    public override init() {
        super.init()
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
        if self.xGWAccess != nil {
            map["X-GW-Access"] = self.xGWAccess!
        }
        if self.xGWNonce != nil {
            map["X-GW-Nonce"] = self.xGWNonce!
        }
        if self.xGWSignature != nil {
            map["X-GW-Signature"] = self.xGWSignature!
        }
        if self.xGWTimestamp != nil {
            map["X-GW-Timestamp"] = self.xGWTimestamp!
        }
        if self.xRequestId != nil {
            map["X-Request-Id"] = self.xRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-GW-Access"] as? String {
            self.xGWAccess = value
        }
        if let value = dict["X-GW-Nonce"] as? String {
            self.xGWNonce = value
        }
        if let value = dict["X-GW-Signature"] as? String {
            self.xGWSignature = value
        }
        if let value = dict["X-GW-Timestamp"] as? String {
            self.xGWTimestamp = value
        }
        if let value = dict["X-Request-Id"] as? String {
            self.xRequestId = value
        }
    }
}

public class OpenServiceRequest : Tea.TeaModel {
    public class Communication : Tea.TeaModel {
        public class UserInfo : Tea.TeaModel {
            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["user_id"] as? String {
                    self.userId = value
                }
            }
        }
        public var userInfo: OpenServiceRequest.Communication.UserInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userInfo != nil {
                map["user_info"] = self.userInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["user_info"] as? [String: Any?] {
                var model = OpenServiceRequest.Communication.UserInfo()
                model.fromMap(value)
                self.userInfo = model
            }
        }
    }
    public var communication: OpenServiceRequest.Communication?

    public var openBenefits: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.communication?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.communication != nil {
            map["communication"] = self.communication?.toMap()
        }
        if self.openBenefits != nil {
            map["openBenefits"] = self.openBenefits!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["communication"] as? [String: Any?] {
            var model = OpenServiceRequest.Communication()
            model.fromMap(value)
            self.communication = model
        }
        if let value = dict["openBenefits"] as? Bool {
            self.openBenefits = value
        }
    }
}

public class OpenServiceResponseBody : Tea.TeaModel {
    public class Error : Tea.TeaModel {
        public var code: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.requestId != nil {
                map["request_id"] = self.requestId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["request_id"] as? String {
                self.requestId = value
            }
        }
    }
    public var error: OpenServiceResponseBody.Error?

    public var orderId: String?

    public var spInstanceId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.error?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.error != nil {
            map["error"] = self.error?.toMap()
        }
        if self.orderId != nil {
            map["orderId"] = self.orderId!
        }
        if self.spInstanceId != nil {
            map["spInstanceId"] = self.spInstanceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["error"] as? [String: Any?] {
            var model = OpenServiceResponseBody.Error()
            model.fromMap(value)
            self.error = model
        }
        if let value = dict["orderId"] as? String {
            self.orderId = value
        }
        if let value = dict["spInstanceId"] as? String {
            self.spInstanceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class OpenServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenServiceResponseBody?

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
            var model = OpenServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StreamVoiceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xGWAccess: String?

    public var xGWNonce: String?

    public var xGWProtocol: String?

    public var xGWSignature: String?

    public var xGWTimestamp: String?

    public var xRequestId: String?

    public override init() {
        super.init()
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
        if self.xGWAccess != nil {
            map["X-GW-Access"] = self.xGWAccess!
        }
        if self.xGWNonce != nil {
            map["X-GW-Nonce"] = self.xGWNonce!
        }
        if self.xGWProtocol != nil {
            map["X-GW-Protocol"] = self.xGWProtocol!
        }
        if self.xGWSignature != nil {
            map["X-GW-Signature"] = self.xGWSignature!
        }
        if self.xGWTimestamp != nil {
            map["X-GW-Timestamp"] = self.xGWTimestamp!
        }
        if self.xRequestId != nil {
            map["X-Request-Id"] = self.xRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-GW-Access"] as? String {
            self.xGWAccess = value
        }
        if let value = dict["X-GW-Nonce"] as? String {
            self.xGWNonce = value
        }
        if let value = dict["X-GW-Protocol"] as? String {
            self.xGWProtocol = value
        }
        if let value = dict["X-GW-Signature"] as? String {
            self.xGWSignature = value
        }
        if let value = dict["X-GW-Timestamp"] as? String {
            self.xGWTimestamp = value
        }
        if let value = dict["X-Request-Id"] as? String {
            self.xRequestId = value
        }
    }
}

public class StreamVoiceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class StreamVoiceResponseBody : Tea.TeaModel {
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

public class StreamVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StreamVoiceResponseBody?

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
            var model = StreamVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
