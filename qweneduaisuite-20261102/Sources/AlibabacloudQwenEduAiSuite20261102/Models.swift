import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateQwenEduApiRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class ActivateQwenEduApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failMessage: String?

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
            if self.failMessage != nil {
                map["failMessage"] = self.failMessage!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["failMessage"] as? String {
                self.failMessage = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: ActivateQwenEduApiResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ActivateQwenEduApiResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ActivateQwenEduApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateQwenEduApiResponseBody?

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
            var model = ActivateQwenEduApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEduHomeworkCorrectSubmitRequest : Tea.TeaModel {
    public var dewarp: Bool?

    public var imageBase64: String?

    public var imageUrl: String?

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
        if self.dewarp != nil {
            map["dewarp"] = self.dewarp!
        }
        if self.imageBase64 != nil {
            map["imageBase64"] = self.imageBase64!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dewarp"] as? Bool {
            self.dewarp = value
        }
        if let value = dict["imageBase64"] as? String {
            self.imageBase64 = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEduHomeworkCorrectSubmitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuestionResults : Tea.TeaModel {
            public class AnswerResults : Tea.TeaModel {
                public class AnswerPoints : Tea.TeaModel {
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
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public class CheckPoint : Tea.TeaModel {
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
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public var answerPoints: [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults.AnswerPoints]?

                public var checkPoint: CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults.CheckPoint?

                public var checkResult: String?

                public var standardAnswer: String?

                public var userAnswer: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.checkPoint?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerPoints != nil {
                        var tmp : [Any] = []
                        for k in self.answerPoints! {
                            tmp.append(k.toMap())
                        }
                        map["answerPoints"] = tmp
                    }
                    if self.checkPoint != nil {
                        map["checkPoint"] = self.checkPoint?.toMap()
                    }
                    if self.checkResult != nil {
                        map["checkResult"] = self.checkResult!
                    }
                    if self.standardAnswer != nil {
                        map["standardAnswer"] = self.standardAnswer!
                    }
                    if self.userAnswer != nil {
                        map["userAnswer"] = self.userAnswer!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["answerPoints"] as? [Any?] {
                        var tmp : [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults.AnswerPoints] = []
                        for v in value {
                            if v != nil {
                                var model = CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults.AnswerPoints()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.answerPoints = tmp
                    }
                    if let value = dict["checkPoint"] as? [String: Any?] {
                        var model = CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults.CheckPoint()
                        model.fromMap(value)
                        self.checkPoint = model
                    }
                    if let value = dict["checkResult"] as? String {
                        self.checkResult = value
                    }
                    if let value = dict["standardAnswer"] as? String {
                        self.standardAnswer = value
                    }
                    if let value = dict["userAnswer"] as? String {
                        self.userAnswer = value
                    }
                }
            }
            public class QuestionPoints : Tea.TeaModel {
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
                        map["x"] = self.x!
                    }
                    if self.y != nil {
                        map["y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["x"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public var answerResults: [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults]?

            public var finish: Bool?

            public var questionContent: String?

            public var questionId: String?

            public var questionPoints: [[CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.QuestionPoints]]?

            public var questionType: String?

            public var solution: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerResults != nil {
                    var tmp : [Any] = []
                    for k in self.answerResults! {
                        tmp.append(k.toMap())
                    }
                    map["answerResults"] = tmp
                }
                if self.finish != nil {
                    map["finish"] = self.finish!
                }
                if self.questionContent != nil {
                    map["questionContent"] = self.questionContent!
                }
                if self.questionId != nil {
                    map["questionId"] = self.questionId!
                }
                if self.questionPoints != nil {
                    var tmp : [Any] = []
                    for k in self.questionPoints! {
                        var l1 : [Any] = []
                        for k1 in k {
                            l1.append(k1.toMap())
                        }
                        tmp.append(l1)
                    }
                    map["questionPoints"] = tmp
                }
                if self.questionType != nil {
                    map["questionType"] = self.questionType!
                }
                if self.solution != nil {
                    map["solution"] = self.solution!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerResults"] as? [Any?] {
                    var tmp : [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults] = []
                    for v in value {
                        if v != nil {
                            var model = CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.AnswerResults()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.answerResults = tmp
                }
                if let value = dict["finish"] as? Bool {
                    self.finish = value
                }
                if let value = dict["questionContent"] as? String {
                    self.questionContent = value
                }
                if let value = dict["questionId"] as? String {
                    self.questionId = value
                }
                if let value = dict["questionPoints"] as? [Any?] {
                    var tmp : [[CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.QuestionPoints]] = []
                    for v in value {
                        if v != nil {
                            var l1 : [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.QuestionPoints] = []
                            for v1 in v as! [Any?] {
                                if v1 != nil {
                                    var model = CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults.QuestionPoints()
                                    if v1 != nil {
                                        model.fromMap(v1 as? [String: Any?])
                                    }
                                    l1.append(model)
                                }
                            }
                            tmp.append(l1)
                        }
                    }
                    self.questionPoints = tmp
                }
                if let value = dict["questionType"] as? String {
                    self.questionType = value
                }
                if let value = dict["solution"] as? String {
                    self.solution = value
                }
            }
        }
        public var angle: Int64?

        public var dewarpUrl: String?

        public var questionResults: [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults]?

        public var status: String?

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
            if self.angle != nil {
                map["angle"] = self.angle!
            }
            if self.dewarpUrl != nil {
                map["dewarpUrl"] = self.dewarpUrl!
            }
            if self.questionResults != nil {
                var tmp : [Any] = []
                for k in self.questionResults! {
                    tmp.append(k.toMap())
                }
                map["questionResults"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["angle"] as? Int64 {
                self.angle = value
            }
            if let value = dict["dewarpUrl"] as? String {
                self.dewarpUrl = value
            }
            if let value = dict["questionResults"] as? [Any?] {
                var tmp : [CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults] = []
                for v in value {
                    if v != nil {
                        var model = CreateEduHomeworkCorrectSubmitResponseBody.Data.QuestionResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.questionResults = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: CreateEduHomeworkCorrectSubmitResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateEduHomeworkCorrectSubmitResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEduHomeworkCorrectSubmitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEduHomeworkCorrectSubmitResponseBody?

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
            var model = CreateEduHomeworkCorrectSubmitResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEduProblemSolveRequest : Tea.TeaModel {
    public class Query : Tea.TeaModel {
        public class Image : Tea.TeaModel {
            public var base64: String?

            public var format: String?

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
                if self.base64 != nil {
                    map["base64"] = self.base64!
                }
                if self.format != nil {
                    map["format"] = self.format!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["base64"] as? String {
                    self.base64 = value
                }
                if let value = dict["format"] as? String {
                    self.format = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var image: CreateEduProblemSolveRequest.Query.Image?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.image?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.image != nil {
                map["image"] = self.image?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["image"] as? [String: Any?] {
                var model = CreateEduProblemSolveRequest.Query.Image()
                model.fromMap(value)
                self.image = model
            }
        }
    }
    public var query: CreateEduProblemSolveRequest.Query?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.query?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.query != nil {
            map["query"] = self.query?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["query"] as? [String: Any?] {
            var model = CreateEduProblemSolveRequest.Query()
            model.fromMap(value)
            self.query = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEduProblemSolveShrinkRequest : Tea.TeaModel {
    public var queryShrink: String?

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
        if self.queryShrink != nil {
            map["query"] = self.queryShrink!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEduProblemSolveResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Thinking : Tea.TeaModel {
            public var content: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var content: String?

        public var imageUrl: String?

        public var questionId: String?

        public var status: String?

        public var thinking: CreateEduProblemSolveResponseBody.Items.Thinking?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.thinking?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.questionId != nil {
                map["questionId"] = self.questionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.thinking != nil {
                map["thinking"] = self.thinking?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["imageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["questionId"] as? String {
                self.questionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["thinking"] as? [String: Any?] {
                var model = CreateEduProblemSolveResponseBody.Items.Thinking()
                model.fromMap(value)
                self.thinking = model
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var completionTokens: Int32?

        public var promptTokens: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completionTokens != nil {
                map["completionTokens"] = self.completionTokens!
            }
            if self.promptTokens != nil {
                map["promptTokens"] = self.promptTokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["completionTokens"] as? Int32 {
                self.completionTokens = value
            }
            if let value = dict["promptTokens"] as? Int32 {
                self.promptTokens = value
            }
        }
    }
    public var code: String?

    public var finished: Bool?

    public var items: [CreateEduProblemSolveResponseBody.Items]?

    public var message: String?

    public var requestId: String?

    public var resultType: String?

    public var retryable: Bool?

    public var usage: CreateEduProblemSolveResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.finished != nil {
            map["finished"] = self.finished!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resultType != nil {
            map["resultType"] = self.resultType!
        }
        if self.retryable != nil {
            map["retryable"] = self.retryable!
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["finished"] as? Bool {
            self.finished = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [CreateEduProblemSolveResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = CreateEduProblemSolveResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resultType"] as? String {
            self.resultType = value
        }
        if let value = dict["retryable"] as? Bool {
            self.retryable = value
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = CreateEduProblemSolveResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class CreateEduProblemSolveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEduProblemSolveResponseBody?

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
            var model = CreateEduProblemSolveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEduHomeworkCorrectionResultRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetEduHomeworkCorrectionResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuestionResults : Tea.TeaModel {
            public class AnswerResults : Tea.TeaModel {
                public class AnswerPoints : Tea.TeaModel {
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
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public class CheckPoint : Tea.TeaModel {
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
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public var answerPoints: [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults.AnswerPoints]?

                public var checkPoint: GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults.CheckPoint?

                public var checkResult: String?

                public var standardAnswer: String?

                public var userAnswer: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.checkPoint?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerPoints != nil {
                        var tmp : [Any] = []
                        for k in self.answerPoints! {
                            tmp.append(k.toMap())
                        }
                        map["answerPoints"] = tmp
                    }
                    if self.checkPoint != nil {
                        map["checkPoint"] = self.checkPoint?.toMap()
                    }
                    if self.checkResult != nil {
                        map["checkResult"] = self.checkResult!
                    }
                    if self.standardAnswer != nil {
                        map["standardAnswer"] = self.standardAnswer!
                    }
                    if self.userAnswer != nil {
                        map["userAnswer"] = self.userAnswer!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["answerPoints"] as? [Any?] {
                        var tmp : [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults.AnswerPoints] = []
                        for v in value {
                            if v != nil {
                                var model = GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults.AnswerPoints()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.answerPoints = tmp
                    }
                    if let value = dict["checkPoint"] as? [String: Any?] {
                        var model = GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults.CheckPoint()
                        model.fromMap(value)
                        self.checkPoint = model
                    }
                    if let value = dict["checkResult"] as? String {
                        self.checkResult = value
                    }
                    if let value = dict["standardAnswer"] as? String {
                        self.standardAnswer = value
                    }
                    if let value = dict["userAnswer"] as? String {
                        self.userAnswer = value
                    }
                }
            }
            public class QuestionPoints : Tea.TeaModel {
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
                        map["x"] = self.x!
                    }
                    if self.y != nil {
                        map["y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["x"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public var answerResults: [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults]?

            public var finish: Bool?

            public var questionContent: String?

            public var questionId: String?

            public var questionPoints: [[GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.QuestionPoints]]?

            public var questionType: String?

            public var solution: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerResults != nil {
                    var tmp : [Any] = []
                    for k in self.answerResults! {
                        tmp.append(k.toMap())
                    }
                    map["answerResults"] = tmp
                }
                if self.finish != nil {
                    map["finish"] = self.finish!
                }
                if self.questionContent != nil {
                    map["questionContent"] = self.questionContent!
                }
                if self.questionId != nil {
                    map["questionId"] = self.questionId!
                }
                if self.questionPoints != nil {
                    var tmp : [Any] = []
                    for k in self.questionPoints! {
                        var l1 : [Any] = []
                        for k1 in k {
                            l1.append(k1.toMap())
                        }
                        tmp.append(l1)
                    }
                    map["questionPoints"] = tmp
                }
                if self.questionType != nil {
                    map["questionType"] = self.questionType!
                }
                if self.solution != nil {
                    map["solution"] = self.solution!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerResults"] as? [Any?] {
                    var tmp : [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults] = []
                    for v in value {
                        if v != nil {
                            var model = GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.AnswerResults()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.answerResults = tmp
                }
                if let value = dict["finish"] as? Bool {
                    self.finish = value
                }
                if let value = dict["questionContent"] as? String {
                    self.questionContent = value
                }
                if let value = dict["questionId"] as? String {
                    self.questionId = value
                }
                if let value = dict["questionPoints"] as? [Any?] {
                    var tmp : [[GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.QuestionPoints]] = []
                    for v in value {
                        if v != nil {
                            var l1 : [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.QuestionPoints] = []
                            for v1 in v as! [Any?] {
                                if v1 != nil {
                                    var model = GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults.QuestionPoints()
                                    if v1 != nil {
                                        model.fromMap(v1 as? [String: Any?])
                                    }
                                    l1.append(model)
                                }
                            }
                            tmp.append(l1)
                        }
                    }
                    self.questionPoints = tmp
                }
                if let value = dict["questionType"] as? String {
                    self.questionType = value
                }
                if let value = dict["solution"] as? String {
                    self.solution = value
                }
            }
        }
        public var angle: Int64?

        public var dewarpUrl: String?

        public var questionResults: [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults]?

        public var status: String?

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
            if self.angle != nil {
                map["angle"] = self.angle!
            }
            if self.dewarpUrl != nil {
                map["dewarpUrl"] = self.dewarpUrl!
            }
            if self.questionResults != nil {
                var tmp : [Any] = []
                for k in self.questionResults! {
                    tmp.append(k.toMap())
                }
                map["questionResults"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["angle"] as? Int64 {
                self.angle = value
            }
            if let value = dict["dewarpUrl"] as? String {
                self.dewarpUrl = value
            }
            if let value = dict["questionResults"] as? [Any?] {
                var tmp : [GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults] = []
                for v in value {
                    if v != nil {
                        var model = GetEduHomeworkCorrectionResultResponseBody.Data.QuestionResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.questionResults = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: GetEduHomeworkCorrectionResultResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetEduHomeworkCorrectionResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetEduHomeworkCorrectionResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEduHomeworkCorrectionResultResponseBody?

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
            var model = GetEduHomeworkCorrectionResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQwenEduApiActivationStatusRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetQwenEduApiActivationStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failCode: String?

        public var failMessage: String?

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
            if self.failCode != nil {
                map["failCode"] = self.failCode!
            }
            if self.failMessage != nil {
                map["failMessage"] = self.failMessage!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["failCode"] as? String {
                self.failCode = value
            }
            if let value = dict["failMessage"] as? String {
                self.failMessage = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetQwenEduApiActivationStatusResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetQwenEduApiActivationStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetQwenEduApiActivationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQwenEduApiActivationStatusResponseBody?

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
            var model = GetQwenEduApiActivationStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
