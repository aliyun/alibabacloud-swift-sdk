import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyArInvoiceWithSourceRequest : Tea.TeaModel {
    public class Address : Tea.TeaModel {
        public class Customer : Tea.TeaModel {
            public var appCode: String?

            public var customerId: String?

            public var customerSite: String?

            public var customerSystem: String?

            public var encryptProps: [String: String]?

            public var language: String?

            public var sign: String?

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
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.customerId != nil {
                    map["CustomerId"] = self.customerId!
                }
                if self.customerSite != nil {
                    map["CustomerSite"] = self.customerSite!
                }
                if self.customerSystem != nil {
                    map["CustomerSystem"] = self.customerSystem!
                }
                if self.encryptProps != nil {
                    map["EncryptProps"] = self.encryptProps!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                    self.appCode = dict["AppCode"] as! String
                }
                if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                    self.customerId = dict["CustomerId"] as! String
                }
                if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                    self.customerSite = dict["CustomerSite"] as! String
                }
                if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                    self.customerSystem = dict["CustomerSystem"] as! String
                }
                if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                    self.encryptProps = dict["EncryptProps"] as! [String: String]
                }
                if dict.keys.contains("Language") && dict["Language"] != nil {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("Sign") && dict["Sign"] != nil {
                    self.sign = dict["Sign"] as! String
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var addressId: String?

        public var appCode: String?

        public var city: String?

        public var country: String?

        public var creator: String?

        public var customer: ApplyArInvoiceWithSourceRequest.Address.Customer?

        public var detailedAddress: String?

        public var district: String?

        public var encryptProps: [String: String]?

        public var fixedNumber: String?

        public var fullAddress: String?

        public var isDefault: Bool?

        public var isEffective: Bool?

        public var language: String?

        public var mobileNumber: String?

        public var province: String?

        public var recipientName: String?

        public var relatedId: String?

        public var relatedSystem: String?

        public var sign: String?

        public var street: String?

        public var uuid: String?

        public var zipCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customer?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressId != nil {
                map["AddressId"] = self.addressId!
            }
            if self.appCode != nil {
                map["AppCode"] = self.appCode!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.customer != nil {
                map["Customer"] = self.customer?.toMap()
            }
            if self.detailedAddress != nil {
                map["DetailedAddress"] = self.detailedAddress!
            }
            if self.district != nil {
                map["District"] = self.district!
            }
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.fixedNumber != nil {
                map["FixedNumber"] = self.fixedNumber!
            }
            if self.fullAddress != nil {
                map["FullAddress"] = self.fullAddress!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.isEffective != nil {
                map["IsEffective"] = self.isEffective!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.mobileNumber != nil {
                map["MobileNumber"] = self.mobileNumber!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.recipientName != nil {
                map["RecipientName"] = self.recipientName!
            }
            if self.relatedId != nil {
                map["RelatedId"] = self.relatedId!
            }
            if self.relatedSystem != nil {
                map["RelatedSystem"] = self.relatedSystem!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            if self.street != nil {
                map["Street"] = self.street!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.zipCode != nil {
                map["ZipCode"] = self.zipCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressId") && dict["AddressId"] != nil {
                self.addressId = dict["AddressId"] as! String
            }
            if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                self.appCode = dict["AppCode"] as! String
            }
            if dict.keys.contains("City") && dict["City"] != nil {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Creator") && dict["Creator"] != nil {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Customer") && dict["Customer"] != nil {
                var model = ApplyArInvoiceWithSourceRequest.Address.Customer()
                model.fromMap(dict["Customer"] as! [String: Any])
                self.customer = model
            }
            if dict.keys.contains("DetailedAddress") && dict["DetailedAddress"] != nil {
                self.detailedAddress = dict["DetailedAddress"] as! String
            }
            if dict.keys.contains("District") && dict["District"] != nil {
                self.district = dict["District"] as! String
            }
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("FixedNumber") && dict["FixedNumber"] != nil {
                self.fixedNumber = dict["FixedNumber"] as! String
            }
            if dict.keys.contains("FullAddress") && dict["FullAddress"] != nil {
                self.fullAddress = dict["FullAddress"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("IsEffective") && dict["IsEffective"] != nil {
                self.isEffective = dict["IsEffective"] as! Bool
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("MobileNumber") && dict["MobileNumber"] != nil {
                self.mobileNumber = dict["MobileNumber"] as! String
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("RecipientName") && dict["RecipientName"] != nil {
                self.recipientName = dict["RecipientName"] as! String
            }
            if dict.keys.contains("RelatedId") && dict["RelatedId"] != nil {
                self.relatedId = dict["RelatedId"] as! String
            }
            if dict.keys.contains("RelatedSystem") && dict["RelatedSystem"] != nil {
                self.relatedSystem = dict["RelatedSystem"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
            if dict.keys.contains("Street") && dict["Street"] != nil {
                self.street = dict["Street"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
            if dict.keys.contains("ZipCode") && dict["ZipCode"] != nil {
                self.zipCode = dict["ZipCode"] as! String
            }
        }
    }
    public class Customer : Tea.TeaModel {
        public var appCode: String?

        public var customerId: String?

        public var customerSite: String?

        public var customerSystem: String?

        public var encryptProps: [String: String]?

        public var language: String?

        public var sign: String?

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
            if self.appCode != nil {
                map["AppCode"] = self.appCode!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.customerSite != nil {
                map["CustomerSite"] = self.customerSite!
            }
            if self.customerSystem != nil {
                map["CustomerSystem"] = self.customerSystem!
            }
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                self.appCode = dict["AppCode"] as! String
            }
            if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                self.customerSite = dict["CustomerSite"] as! String
            }
            if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                self.customerSystem = dict["CustomerSystem"] as! String
            }
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public class SourceList : Tea.TeaModel {
        public class Customer : Tea.TeaModel {
            public var appCode: String?

            public var customerId: String?

            public var customerSite: String?

            public var customerSystem: String?

            public var encryptProps: [String: String]?

            public var language: String?

            public var sign: String?

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
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.customerId != nil {
                    map["CustomerId"] = self.customerId!
                }
                if self.customerSite != nil {
                    map["CustomerSite"] = self.customerSite!
                }
                if self.customerSystem != nil {
                    map["CustomerSystem"] = self.customerSystem!
                }
                if self.encryptProps != nil {
                    map["EncryptProps"] = self.encryptProps!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                    self.appCode = dict["AppCode"] as! String
                }
                if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                    self.customerId = dict["CustomerId"] as! String
                }
                if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                    self.customerSite = dict["CustomerSite"] as! String
                }
                if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                    self.customerSystem = dict["CustomerSystem"] as! String
                }
                if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                    self.encryptProps = dict["EncryptProps"] as! [String: String]
                }
                if dict.keys.contains("Language") && dict["Language"] != nil {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("Sign") && dict["Sign"] != nil {
                    self.sign = dict["Sign"] as! String
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var amount: Double?

        public var appCode: String?

        public var billAmount: Double?

        public var billDomain: String?

        public var billNo: String?

        public var billType: String?

        public var blueSourceId: Int64?

        public var canMerge: Bool?

        public var cargoName: String?

        public var category: String?

        public var companyName: String?

        public var currencyCode: String?

        public var customer: ApplyArInvoiceWithSourceRequest.SourceList.Customer?

        public var discountAmount: Double?

        public var discountTaxAmount: Double?

        public var encryptProps: [String: String]?

        public var excludingTaxAmount: Double?

        public var excludingTaxDiscountAmount: Double?

        public var excludingTaxRedAmount: Double?

        public var excludingTaxRemainAmount: Double?

        public var gmtBill: String?

        public var gmtBillEnd: String?

        public var gmtBillStart: String?

        public var gmtBuild: String?

        public var isApply: String?

        public var language: String?

        public var majorBillNo: String?

        public var model: String?

        public var ouCode: String?

        public var parentCategory: String?

        public var productDomain: String?

        public var productId: String?

        public var productName: String?

        public var quantity: Double?

        public var quantityUnit: String?

        public var redAmount: Double?

        public var relatedId: String?

        public var remainAmount: Double?

        public var revenueType: String?

        public var serviceName: String?

        public var sign: String?

        public var siteId: String?

        public var sourceId: Int64?

        public var taxAmount: Double?

        public var taxRate: Double?

        public var unitPrice: Double?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customer?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.appCode != nil {
                map["AppCode"] = self.appCode!
            }
            if self.billAmount != nil {
                map["BillAmount"] = self.billAmount!
            }
            if self.billDomain != nil {
                map["BillDomain"] = self.billDomain!
            }
            if self.billNo != nil {
                map["BillNo"] = self.billNo!
            }
            if self.billType != nil {
                map["BillType"] = self.billType!
            }
            if self.blueSourceId != nil {
                map["BlueSourceId"] = self.blueSourceId!
            }
            if self.canMerge != nil {
                map["CanMerge"] = self.canMerge!
            }
            if self.cargoName != nil {
                map["CargoName"] = self.cargoName!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.currencyCode != nil {
                map["CurrencyCode"] = self.currencyCode!
            }
            if self.customer != nil {
                map["Customer"] = self.customer?.toMap()
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.discountTaxAmount != nil {
                map["DiscountTaxAmount"] = self.discountTaxAmount!
            }
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.excludingTaxAmount != nil {
                map["ExcludingTaxAmount"] = self.excludingTaxAmount!
            }
            if self.excludingTaxDiscountAmount != nil {
                map["ExcludingTaxDiscountAmount"] = self.excludingTaxDiscountAmount!
            }
            if self.excludingTaxRedAmount != nil {
                map["ExcludingTaxRedAmount"] = self.excludingTaxRedAmount!
            }
            if self.excludingTaxRemainAmount != nil {
                map["ExcludingTaxRemainAmount"] = self.excludingTaxRemainAmount!
            }
            if self.gmtBill != nil {
                map["GmtBill"] = self.gmtBill!
            }
            if self.gmtBillEnd != nil {
                map["GmtBillEnd"] = self.gmtBillEnd!
            }
            if self.gmtBillStart != nil {
                map["GmtBillStart"] = self.gmtBillStart!
            }
            if self.gmtBuild != nil {
                map["GmtBuild"] = self.gmtBuild!
            }
            if self.isApply != nil {
                map["IsApply"] = self.isApply!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.majorBillNo != nil {
                map["MajorBillNo"] = self.majorBillNo!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.ouCode != nil {
                map["OuCode"] = self.ouCode!
            }
            if self.parentCategory != nil {
                map["ParentCategory"] = self.parentCategory!
            }
            if self.productDomain != nil {
                map["ProductDomain"] = self.productDomain!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.quantityUnit != nil {
                map["QuantityUnit"] = self.quantityUnit!
            }
            if self.redAmount != nil {
                map["RedAmount"] = self.redAmount!
            }
            if self.relatedId != nil {
                map["RelatedId"] = self.relatedId!
            }
            if self.remainAmount != nil {
                map["RemainAmount"] = self.remainAmount!
            }
            if self.revenueType != nil {
                map["RevenueType"] = self.revenueType!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.taxAmount != nil {
                map["TaxAmount"] = self.taxAmount!
            }
            if self.taxRate != nil {
                map["TaxRate"] = self.taxRate!
            }
            if self.unitPrice != nil {
                map["UnitPrice"] = self.unitPrice!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Double
            }
            if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                self.appCode = dict["AppCode"] as! String
            }
            if dict.keys.contains("BillAmount") && dict["BillAmount"] != nil {
                self.billAmount = dict["BillAmount"] as! Double
            }
            if dict.keys.contains("BillDomain") && dict["BillDomain"] != nil {
                self.billDomain = dict["BillDomain"] as! String
            }
            if dict.keys.contains("BillNo") && dict["BillNo"] != nil {
                self.billNo = dict["BillNo"] as! String
            }
            if dict.keys.contains("BillType") && dict["BillType"] != nil {
                self.billType = dict["BillType"] as! String
            }
            if dict.keys.contains("BlueSourceId") && dict["BlueSourceId"] != nil {
                self.blueSourceId = dict["BlueSourceId"] as! Int64
            }
            if dict.keys.contains("CanMerge") && dict["CanMerge"] != nil {
                self.canMerge = dict["CanMerge"] as! Bool
            }
            if dict.keys.contains("CargoName") && dict["CargoName"] != nil {
                self.cargoName = dict["CargoName"] as! String
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("CurrencyCode") && dict["CurrencyCode"] != nil {
                self.currencyCode = dict["CurrencyCode"] as! String
            }
            if dict.keys.contains("Customer") && dict["Customer"] != nil {
                var model = ApplyArInvoiceWithSourceRequest.SourceList.Customer()
                model.fromMap(dict["Customer"] as! [String: Any])
                self.customer = model
            }
            if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                self.discountAmount = dict["DiscountAmount"] as! Double
            }
            if dict.keys.contains("DiscountTaxAmount") && dict["DiscountTaxAmount"] != nil {
                self.discountTaxAmount = dict["DiscountTaxAmount"] as! Double
            }
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("ExcludingTaxAmount") && dict["ExcludingTaxAmount"] != nil {
                self.excludingTaxAmount = dict["ExcludingTaxAmount"] as! Double
            }
            if dict.keys.contains("ExcludingTaxDiscountAmount") && dict["ExcludingTaxDiscountAmount"] != nil {
                self.excludingTaxDiscountAmount = dict["ExcludingTaxDiscountAmount"] as! Double
            }
            if dict.keys.contains("ExcludingTaxRedAmount") && dict["ExcludingTaxRedAmount"] != nil {
                self.excludingTaxRedAmount = dict["ExcludingTaxRedAmount"] as! Double
            }
            if dict.keys.contains("ExcludingTaxRemainAmount") && dict["ExcludingTaxRemainAmount"] != nil {
                self.excludingTaxRemainAmount = dict["ExcludingTaxRemainAmount"] as! Double
            }
            if dict.keys.contains("GmtBill") && dict["GmtBill"] != nil {
                self.gmtBill = dict["GmtBill"] as! String
            }
            if dict.keys.contains("GmtBillEnd") && dict["GmtBillEnd"] != nil {
                self.gmtBillEnd = dict["GmtBillEnd"] as! String
            }
            if dict.keys.contains("GmtBillStart") && dict["GmtBillStart"] != nil {
                self.gmtBillStart = dict["GmtBillStart"] as! String
            }
            if dict.keys.contains("GmtBuild") && dict["GmtBuild"] != nil {
                self.gmtBuild = dict["GmtBuild"] as! String
            }
            if dict.keys.contains("IsApply") && dict["IsApply"] != nil {
                self.isApply = dict["IsApply"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("MajorBillNo") && dict["MajorBillNo"] != nil {
                self.majorBillNo = dict["MajorBillNo"] as! String
            }
            if dict.keys.contains("Model") && dict["Model"] != nil {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("OuCode") && dict["OuCode"] != nil {
                self.ouCode = dict["OuCode"] as! String
            }
            if dict.keys.contains("ParentCategory") && dict["ParentCategory"] != nil {
                self.parentCategory = dict["ParentCategory"] as! String
            }
            if dict.keys.contains("ProductDomain") && dict["ProductDomain"] != nil {
                self.productDomain = dict["ProductDomain"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                self.quantity = dict["Quantity"] as! Double
            }
            if dict.keys.contains("QuantityUnit") && dict["QuantityUnit"] != nil {
                self.quantityUnit = dict["QuantityUnit"] as! String
            }
            if dict.keys.contains("RedAmount") && dict["RedAmount"] != nil {
                self.redAmount = dict["RedAmount"] as! Double
            }
            if dict.keys.contains("RelatedId") && dict["RelatedId"] != nil {
                self.relatedId = dict["RelatedId"] as! String
            }
            if dict.keys.contains("RemainAmount") && dict["RemainAmount"] != nil {
                self.remainAmount = dict["RemainAmount"] as! Double
            }
            if dict.keys.contains("RevenueType") && dict["RevenueType"] != nil {
                self.revenueType = dict["RevenueType"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
            if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
                self.siteId = dict["SiteId"] as! String
            }
            if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
                self.sourceId = dict["SourceId"] as! Int64
            }
            if dict.keys.contains("TaxAmount") && dict["TaxAmount"] != nil {
                self.taxAmount = dict["TaxAmount"] as! Double
            }
            if dict.keys.contains("TaxRate") && dict["TaxRate"] != nil {
                self.taxRate = dict["TaxRate"] as! Double
            }
            if dict.keys.contains("UnitPrice") && dict["UnitPrice"] != nil {
                self.unitPrice = dict["UnitPrice"] as! Double
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var address: ApplyArInvoiceWithSourceRequest.Address?

    public var amount: Double?

    public var appCode: String?

    public var applier: String?

    public var applyDate: String?

    public var currencyCode: String?

    public var customer: ApplyArInvoiceWithSourceRequest.Customer?

    public var encryptProps: [String: String]?

    public var excludingTaxAmount: Double?

    public var inputType: String?

    public var invoiceType: String?

    public var isMerged: Bool?

    public var language: String?

    public var materialType: String?

    public var memo: String?

    public var ouCode: String?

    public var purchaserBankInfo: String?

    public var purchaserContactInfo: String?

    public var purchaserName: String?

    public var purchaserTaxNo: String?

    public var requestNo: String?

    public var sign: String?

    public var siteId: String?

    public var sourceList: [ApplyArInvoiceWithSourceRequest.SourceList]?

    public var taxAmount: Double?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
        try self.customer?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.applier != nil {
            map["Applier"] = self.applier!
        }
        if self.applyDate != nil {
            map["ApplyDate"] = self.applyDate!
        }
        if self.currencyCode != nil {
            map["CurrencyCode"] = self.currencyCode!
        }
        if self.customer != nil {
            map["Customer"] = self.customer?.toMap()
        }
        if self.encryptProps != nil {
            map["EncryptProps"] = self.encryptProps!
        }
        if self.excludingTaxAmount != nil {
            map["ExcludingTaxAmount"] = self.excludingTaxAmount!
        }
        if self.inputType != nil {
            map["InputType"] = self.inputType!
        }
        if self.invoiceType != nil {
            map["InvoiceType"] = self.invoiceType!
        }
        if self.isMerged != nil {
            map["IsMerged"] = self.isMerged!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.materialType != nil {
            map["MaterialType"] = self.materialType!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.ouCode != nil {
            map["OuCode"] = self.ouCode!
        }
        if self.purchaserBankInfo != nil {
            map["PurchaserBankInfo"] = self.purchaserBankInfo!
        }
        if self.purchaserContactInfo != nil {
            map["PurchaserContactInfo"] = self.purchaserContactInfo!
        }
        if self.purchaserName != nil {
            map["PurchaserName"] = self.purchaserName!
        }
        if self.purchaserTaxNo != nil {
            map["PurchaserTaxNo"] = self.purchaserTaxNo!
        }
        if self.requestNo != nil {
            map["RequestNo"] = self.requestNo!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.sourceList != nil {
            var tmp : [Any] = []
            for k in self.sourceList! {
                tmp.append(k.toMap())
            }
            map["SourceList"] = tmp
        }
        if self.taxAmount != nil {
            map["TaxAmount"] = self.taxAmount!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            var model = ApplyArInvoiceWithSourceRequest.Address()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("Amount") && dict["Amount"] != nil {
            self.amount = dict["Amount"] as! Double
        }
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("Applier") && dict["Applier"] != nil {
            self.applier = dict["Applier"] as! String
        }
        if dict.keys.contains("ApplyDate") && dict["ApplyDate"] != nil {
            self.applyDate = dict["ApplyDate"] as! String
        }
        if dict.keys.contains("CurrencyCode") && dict["CurrencyCode"] != nil {
            self.currencyCode = dict["CurrencyCode"] as! String
        }
        if dict.keys.contains("Customer") && dict["Customer"] != nil {
            var model = ApplyArInvoiceWithSourceRequest.Customer()
            model.fromMap(dict["Customer"] as! [String: Any])
            self.customer = model
        }
        if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
            self.encryptProps = dict["EncryptProps"] as! [String: String]
        }
        if dict.keys.contains("ExcludingTaxAmount") && dict["ExcludingTaxAmount"] != nil {
            self.excludingTaxAmount = dict["ExcludingTaxAmount"] as! Double
        }
        if dict.keys.contains("InputType") && dict["InputType"] != nil {
            self.inputType = dict["InputType"] as! String
        }
        if dict.keys.contains("InvoiceType") && dict["InvoiceType"] != nil {
            self.invoiceType = dict["InvoiceType"] as! String
        }
        if dict.keys.contains("IsMerged") && dict["IsMerged"] != nil {
            self.isMerged = dict["IsMerged"] as! Bool
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MaterialType") && dict["MaterialType"] != nil {
            self.materialType = dict["MaterialType"] as! String
        }
        if dict.keys.contains("Memo") && dict["Memo"] != nil {
            self.memo = dict["Memo"] as! String
        }
        if dict.keys.contains("OuCode") && dict["OuCode"] != nil {
            self.ouCode = dict["OuCode"] as! String
        }
        if dict.keys.contains("PurchaserBankInfo") && dict["PurchaserBankInfo"] != nil {
            self.purchaserBankInfo = dict["PurchaserBankInfo"] as! String
        }
        if dict.keys.contains("PurchaserContactInfo") && dict["PurchaserContactInfo"] != nil {
            self.purchaserContactInfo = dict["PurchaserContactInfo"] as! String
        }
        if dict.keys.contains("PurchaserName") && dict["PurchaserName"] != nil {
            self.purchaserName = dict["PurchaserName"] as! String
        }
        if dict.keys.contains("PurchaserTaxNo") && dict["PurchaserTaxNo"] != nil {
            self.purchaserTaxNo = dict["PurchaserTaxNo"] as! String
        }
        if dict.keys.contains("RequestNo") && dict["RequestNo"] != nil {
            self.requestNo = dict["RequestNo"] as! String
        }
        if dict.keys.contains("Sign") && dict["Sign"] != nil {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
            self.siteId = dict["SiteId"] as! String
        }
        if dict.keys.contains("SourceList") && dict["SourceList"] != nil {
            var tmp : [ApplyArInvoiceWithSourceRequest.SourceList] = []
            for v in dict["SourceList"] as! [Any] {
                var model = ApplyArInvoiceWithSourceRequest.SourceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sourceList = tmp
        }
        if dict.keys.contains("TaxAmount") && dict["TaxAmount"] != nil {
            self.taxAmount = dict["TaxAmount"] as! Double
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ApplyArInvoiceWithSourceResponseBody : Tea.TeaModel {
    public class ReturnValue : Tea.TeaModel {
        public var encryptProps: [String: String]?

        public var outerSystemEncryptStr: String?

        public var outerSystemSignStr: String?

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
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.outerSystemEncryptStr != nil {
                map["OuterSystemEncryptStr"] = self.outerSystemEncryptStr!
            }
            if self.outerSystemSignStr != nil {
                map["OuterSystemSignStr"] = self.outerSystemSignStr!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("OuterSystemEncryptStr") && dict["OuterSystemEncryptStr"] != nil {
                self.outerSystemEncryptStr = dict["OuterSystemEncryptStr"] as! String
            }
            if dict.keys.contains("OuterSystemSignStr") && dict["OuterSystemSignStr"] != nil {
                self.outerSystemSignStr = dict["OuterSystemSignStr"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public var returnValue: ApplyArInvoiceWithSourceResponseBody.ReturnValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.returnValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ReturnValue") && dict["ReturnValue"] != nil {
            var model = ApplyArInvoiceWithSourceResponseBody.ReturnValue()
            model.fromMap(dict["ReturnValue"] as! [String: Any])
            self.returnValue = model
        }
    }
}

public class ApplyArInvoiceWithSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyArInvoiceWithSourceResponseBody?

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
            var model = ApplyArInvoiceWithSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyBlackInfoExportRequest : Tea.TeaModel {
    public var billId: String?

    public var blackType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ApplyBlackInfoExportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ApplyBlackInfoExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyBlackInfoExportResponseBody?

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
            var model = ApplyBlackInfoExportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyCallRecordExportRequest : Tea.TeaModel {
    public var billId: String?

    public var callDate: String?

    public var callId: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("CallDate") && dict["CallDate"] != nil {
            self.callDate = dict["CallDate"] as! String
        }
        if dict.keys.contains("CallId") && dict["CallId"] != nil {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") && dict["PhoneNoA"] != nil {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") && dict["PhoneNoB"] != nil {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class ApplyCallRecordExportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ApplyCallRecordExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCallRecordExportResponseBody?

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
            var model = ApplyCallRecordExportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyGroupNumberExportRequest : Tea.TeaModel {
    public var groupId: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ApplyGroupNumberExportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ApplyGroupNumberExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyGroupNumberExportResponseBody?

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
            var model = ApplyGroupNumberExportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyRingToneRequest : Tea.TeaModel {
    public var billId: String?

    public var id: String?

    public var ownerId: Int64?

    public var playType: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playType != nil {
            map["PlayType"] = self.playType!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayType") && dict["PlayType"] != nil {
            self.playType = dict["PlayType"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ApplyRingToneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ApplyRingToneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyRingToneResponseBody?

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
            var model = ApplyRingToneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchOccupySecretResRequest : Tea.TeaModel {
    public class BatchOccupyList : Tea.TeaModel {
        public var count: Int32?

        public var orderDetailId: Int64?

        public var orderId: Int64?

        public var partnerKey: String?

        public var resType: Int64?

        public var secretNoType: Int64?

        public override init() {
            super.init()
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
            if self.orderDetailId != nil {
                map["OrderDetailId"] = self.orderDetailId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.partnerKey != nil {
                map["PartnerKey"] = self.partnerKey!
            }
            if self.resType != nil {
                map["ResType"] = self.resType!
            }
            if self.secretNoType != nil {
                map["SecretNoType"] = self.secretNoType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("OrderDetailId") && dict["OrderDetailId"] != nil {
                self.orderDetailId = dict["OrderDetailId"] as! Int64
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("PartnerKey") && dict["PartnerKey"] != nil {
                self.partnerKey = dict["PartnerKey"] as! String
            }
            if dict.keys.contains("ResType") && dict["ResType"] != nil {
                self.resType = dict["ResType"] as! Int64
            }
            if dict.keys.contains("SecretNoType") && dict["SecretNoType"] != nil {
                self.secretNoType = dict["SecretNoType"] as! Int64
            }
        }
    }
    public var batchOccupyList: [BatchOccupySecretResRequest.BatchOccupyList]?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchOccupyList != nil {
            var tmp : [Any] = []
            for k in self.batchOccupyList! {
                tmp.append(k.toMap())
            }
            map["BatchOccupyList"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOccupyList") && dict["BatchOccupyList"] != nil {
            var tmp : [BatchOccupySecretResRequest.BatchOccupyList] = []
            for v in dict["BatchOccupyList"] as! [Any] {
                var model = BatchOccupySecretResRequest.BatchOccupyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.batchOccupyList = tmp
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BatchOccupySecretResShrinkRequest : Tea.TeaModel {
    public var batchOccupyListShrink: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchOccupyListShrink != nil {
            map["BatchOccupyList"] = self.batchOccupyListShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchOccupyList") && dict["BatchOccupyList"] != nil {
            self.batchOccupyListShrink = dict["BatchOccupyList"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BatchOccupySecretResResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
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

public class BatchOccupySecretResResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchOccupySecretResResponseBody?

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
            var model = BatchOccupySecretResResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindResourceRequest : Tea.TeaModel {
    public var asrModelId: String?

    public var asrStatus: Bool?

    public var axnExtensionB: String?

    public var billId: String?

    public var expTime: String?

    public var isRecord: Bool?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asrModelId != nil {
            map["AsrModelId"] = self.asrModelId!
        }
        if self.asrStatus != nil {
            map["AsrStatus"] = self.asrStatus!
        }
        if self.axnExtensionB != nil {
            map["AxnExtensionB"] = self.axnExtensionB!
        }
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.expTime != nil {
            map["ExpTime"] = self.expTime!
        }
        if self.isRecord != nil {
            map["IsRecord"] = self.isRecord!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsrModelId") && dict["AsrModelId"] != nil {
            self.asrModelId = dict["AsrModelId"] as! String
        }
        if dict.keys.contains("AsrStatus") && dict["AsrStatus"] != nil {
            self.asrStatus = dict["AsrStatus"] as! Bool
        }
        if dict.keys.contains("AxnExtensionB") && dict["AxnExtensionB"] != nil {
            self.axnExtensionB = dict["AxnExtensionB"] as! String
        }
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("ExpTime") && dict["ExpTime"] != nil {
            self.expTime = dict["ExpTime"] as! String
        }
        if dict.keys.contains("IsRecord") && dict["IsRecord"] != nil {
            self.isRecord = dict["IsRecord"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") && dict["PhoneNoA"] != nil {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") && dict["PhoneNoB"] != nil {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class BindResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class BindResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindResourceResponseBody?

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
            var model = BindResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BlackOperateRequest : Tea.TeaModel {
    public var billId: String?

    public var blackMap: String?

    public var blackType: String?

    public var operateType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.blackMap != nil {
            map["BlackMap"] = self.blackMap!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("BlackMap") && dict["BlackMap"] != nil {
            self.blackMap = dict["BlackMap"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BlackOperateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public var message: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
    }
}

public class BlackOperateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BlackOperateResponseBody?

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
            var model = BlackOperateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCertifyInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNo: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNo != nil {
            map["PhoneNo"] = self.phoneNo!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNo") && dict["PhoneNo"] != nil {
            self.phoneNo = dict["PhoneNo"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateCertifyInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class CreateCertifyInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertifyInfoResponseBody?

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
            var model = CreateCertifyInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateContactsRequest : Tea.TeaModel {
    public var billId: String?

    public var name: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateContactsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class CreateContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateContactsResponseBody?

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
            var model = CreateContactsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public var numberList: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.numberList != nil {
            map["NumberList"] = self.numberList!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("NumberList") && dict["NumberList"] != nil {
            self.numberList = dict["NumberList"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateGroupDetailResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class CreateGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupDetailResponseBody?

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
            var model = CreateGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupInfoRequest : Tea.TeaModel {
    public var name: String?

    public var numberList: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.numberList != nil {
            map["NumberList"] = self.numberList!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NumberList") && dict["NumberList"] != nil {
            self.numberList = dict["NumberList"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateGroupInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class CreateGroupInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupInfoResponseBody?

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
            var model = CreateGroupInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLogicalDeleteRequest : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var message: String?

    public var pk: String?

    public var prodCode: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("GmtWakeup") && dict["GmtWakeup"] != nil {
            self.gmtWakeup = dict["GmtWakeup"] as! String
        }
        if dict.keys.contains("Hid") && dict["Hid"] != nil {
            self.hid = dict["Hid"] as! Int64
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("Invoker") && dict["Invoker"] != nil {
            self.invoker = dict["Invoker"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pk") && dict["Pk"] != nil {
            self.pk = dict["Pk"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskExtraData") && dict["TaskExtraData"] != nil {
            self.taskExtraData = dict["TaskExtraData"] as! String
        }
        if dict.keys.contains("TaskIdentifier") && dict["TaskIdentifier"] != nil {
            self.taskIdentifier = dict["TaskIdentifier"] as! String
        }
    }
}

public class CreateLogicalDeleteResponseBody : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var message: String?

    public var pk: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("GmtWakeup") && dict["GmtWakeup"] != nil {
            self.gmtWakeup = dict["GmtWakeup"] as! String
        }
        if dict.keys.contains("Hid") && dict["Hid"] != nil {
            self.hid = dict["Hid"] as! Int64
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("Invoker") && dict["Invoker"] != nil {
            self.invoker = dict["Invoker"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pk") && dict["Pk"] != nil {
            self.pk = dict["Pk"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskExtraData") && dict["TaskExtraData"] != nil {
            self.taskExtraData = dict["TaskExtraData"] as! String
        }
        if dict.keys.contains("TaskIdentifier") && dict["TaskIdentifier"] != nil {
            self.taskIdentifier = dict["TaskIdentifier"] as! String
        }
    }
}

public class CreateLogicalDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogicalDeleteResponseBody?

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
            var model = CreateLogicalDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMessageCallbackRequest : Tea.TeaModel {
    public var bizType: String?

    public var callbackUrl: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateMessageCallbackResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public var message: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
    }
}

public class CreateMessageCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMessageCallbackResponseBody?

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
            var model = CreateMessageCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMessageQueueRequest : Tea.TeaModel {
    public var billIds: String?

    public var bizType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var queueName: String?

    public var queueTitle: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billIds != nil {
            map["BillIds"] = self.billIds!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueTitle != nil {
            map["QueueTitle"] = self.queueTitle!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillIds") && dict["BillIds"] != nil {
            self.billIds = dict["BillIds"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("QueueTitle") && dict["QueueTitle"] != nil {
            self.queueTitle = dict["QueueTitle"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateMessageQueueResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class CreateMessageQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMessageQueueResponseBody?

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
            var model = CreateMessageQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePhysicalDeleteRequest : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var message: String?

    public var pk: String?

    public var prodCode: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("GmtWakeup") && dict["GmtWakeup"] != nil {
            self.gmtWakeup = dict["GmtWakeup"] as! String
        }
        if dict.keys.contains("Hid") && dict["Hid"] != nil {
            self.hid = dict["Hid"] as! Int64
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("Invoker") && dict["Invoker"] != nil {
            self.invoker = dict["Invoker"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pk") && dict["Pk"] != nil {
            self.pk = dict["Pk"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskExtraData") && dict["TaskExtraData"] != nil {
            self.taskExtraData = dict["TaskExtraData"] as! String
        }
        if dict.keys.contains("TaskIdentifier") && dict["TaskIdentifier"] != nil {
            self.taskIdentifier = dict["TaskIdentifier"] as! String
        }
    }
}

public class CreatePhysicalDeleteResponseBody : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var message: String?

    public var pk: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("GmtWakeup") && dict["GmtWakeup"] != nil {
            self.gmtWakeup = dict["GmtWakeup"] as! String
        }
        if dict.keys.contains("Hid") && dict["Hid"] != nil {
            self.hid = dict["Hid"] as! Int64
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("Invoker") && dict["Invoker"] != nil {
            self.invoker = dict["Invoker"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pk") && dict["Pk"] != nil {
            self.pk = dict["Pk"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskExtraData") && dict["TaskExtraData"] != nil {
            self.taskExtraData = dict["TaskExtraData"] as! String
        }
        if dict.keys.contains("TaskIdentifier") && dict["TaskIdentifier"] != nil {
            self.taskIdentifier = dict["TaskIdentifier"] as! String
        }
    }
}

public class CreatePhysicalDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePhysicalDeleteResponseBody?

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
            var model = CreatePhysicalDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePoolInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolName: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") && dict["PoolName"] != nil {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreatePoolInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class CreatePoolInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePoolInfoResponseBody?

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
            var model = CreatePoolInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var prodId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.prodId != nil {
            map["ProdId"] = self.prodId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ProdId") && dict["ProdId"] != nil {
            self.prodId = dict["ProdId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateProductResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class CreateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductResponseBody?

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
            var model = CreateProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRingToneRequest : Tea.TeaModel {
    public var billId: String?

    public var fileKey: String?

    public var ownerId: Int64?

    public var playType: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ringName: String?

    public var tts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playType != nil {
            map["PlayType"] = self.playType!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ringName != nil {
            map["RingName"] = self.ringName!
        }
        if self.tts != nil {
            map["Tts"] = self.tts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayType") && dict["PlayType"] != nil {
            self.playType = dict["PlayType"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RingName") && dict["RingName"] != nil {
            self.ringName = dict["RingName"] as! String
        }
        if dict.keys.contains("Tts") && dict["Tts"] != nil {
            self.tts = dict["Tts"] as! String
        }
    }
}

public class CreateRingToneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class CreateRingToneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRingToneResponseBody?

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
            var model = CreateRingToneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSubsTrialRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneA: String?

    public var phoneB: String?

    public var prodCode: String?

    public var resType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneA != nil {
            map["PhoneA"] = self.phoneA!
        }
        if self.phoneB != nil {
            map["PhoneB"] = self.phoneB!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneA") && dict["PhoneA"] != nil {
            self.phoneA = dict["PhoneA"] as! String
        }
        if dict.keys.contains("PhoneB") && dict["PhoneB"] != nil {
            self.phoneB = dict["PhoneB"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateSubsTrialResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class CreateSubsTrialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubsTrialResponseBody?

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
            var model = CreateSubsTrialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTransferRecordRequest : Tea.TeaModel {
    public var city: String?

    public var numberList: String?

    public var originBillId: String?

    public var originName: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var targetBillId: String?

    public var targetName: String?

    public var total: Int32?

    public var transferType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.numberList != nil {
            map["NumberList"] = self.numberList!
        }
        if self.originBillId != nil {
            map["OriginBillId"] = self.originBillId!
        }
        if self.originName != nil {
            map["OriginName"] = self.originName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.targetBillId != nil {
            map["TargetBillId"] = self.targetBillId!
        }
        if self.targetName != nil {
            map["TargetName"] = self.targetName!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.transferType != nil {
            map["TransferType"] = self.transferType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("NumberList") && dict["NumberList"] != nil {
            self.numberList = dict["NumberList"] as! String
        }
        if dict.keys.contains("OriginBillId") && dict["OriginBillId"] != nil {
            self.originBillId = dict["OriginBillId"] as! String
        }
        if dict.keys.contains("OriginName") && dict["OriginName"] != nil {
            self.originName = dict["OriginName"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TargetBillId") && dict["TargetBillId"] != nil {
            self.targetBillId = dict["TargetBillId"] as! String
        }
        if dict.keys.contains("TargetName") && dict["TargetName"] != nil {
            self.targetName = dict["TargetName"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("TransferType") && dict["TransferType"] != nil {
            self.transferType = dict["TransferType"] as! Int32
        }
    }
}

public class CreateTransferRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class CreateTransferRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransferRecordResponseBody?

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
            var model = CreateTransferRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCertifyInfoRequest : Tea.TeaModel {
    public var certifyId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertifyId") && dict["CertifyId"] != nil {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteCertifyInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class DeleteCertifyInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCertifyInfoResponseBody?

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
            var model = DeleteCertifyInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteContactsRequest : Tea.TeaModel {
    public var billId: String?

    public var id: Int64?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteContactsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class DeleteContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContactsResponseBody?

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
            var model = DeleteContactsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public var idList: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.idList != nil {
            map["IdList"] = self.idList!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IdList") && dict["IdList"] != nil {
            self.idList = dict["IdList"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteGroupDetailResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class DeleteGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupDetailResponseBody?

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
            var model = DeleteGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMessageCallbackRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteMessageCallbackResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class DeleteMessageCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMessageCallbackResponseBody?

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
            var model = DeleteMessageCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRingToneRequest : Tea.TeaModel {
    public var billId: String?

    public var id: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteRingToneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class DeleteRingToneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRingToneResponseBody?

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
            var model = DeleteRingToneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadCompleteRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DownloadCompleteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class DownloadCompleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadCompleteResponseBody?

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
            var model = DownloadCompleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportResRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resBindStatus: Int32?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resBindStatus != nil {
            map["ResBindStatus"] = self.resBindStatus!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResBindStatus") && dict["ResBindStatus"] != nil {
            self.resBindStatus = dict["ResBindStatus"] as! Int32
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class ExportResResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ExportResResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportResResponseBody?

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
            var model = ExportResResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEinvoicePdfDataRequest : Tea.TeaModel {
    public class Customer : Tea.TeaModel {
        public var appCode: String?

        public var customerId: String?

        public var customerSite: String?

        public var customerSystem: String?

        public var encryptProps: [String: String]?

        public var language: String?

        public var sign: String?

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
            if self.appCode != nil {
                map["AppCode"] = self.appCode!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.customerSite != nil {
                map["CustomerSite"] = self.customerSite!
            }
            if self.customerSystem != nil {
                map["CustomerSystem"] = self.customerSystem!
            }
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                self.appCode = dict["AppCode"] as! String
            }
            if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                self.customerSite = dict["CustomerSite"] as! String
            }
            if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                self.customerSystem = dict["CustomerSystem"] as! String
            }
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var appCode: String?

    public var customer: GetEinvoicePdfDataRequest.Customer?

    public var encryptProps: [String: String]?

    public var invoiceCode: String?

    public var invoiceNo: String?

    public var language: String?

    public var sign: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customer?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.customer != nil {
            map["Customer"] = self.customer?.toMap()
        }
        if self.encryptProps != nil {
            map["EncryptProps"] = self.encryptProps!
        }
        if self.invoiceCode != nil {
            map["InvoiceCode"] = self.invoiceCode!
        }
        if self.invoiceNo != nil {
            map["InvoiceNo"] = self.invoiceNo!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("Customer") && dict["Customer"] != nil {
            var model = GetEinvoicePdfDataRequest.Customer()
            model.fromMap(dict["Customer"] as! [String: Any])
            self.customer = model
        }
        if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
            self.encryptProps = dict["EncryptProps"] as! [String: String]
        }
        if dict.keys.contains("InvoiceCode") && dict["InvoiceCode"] != nil {
            self.invoiceCode = dict["InvoiceCode"] as! String
        }
        if dict.keys.contains("InvoiceNo") && dict["InvoiceNo"] != nil {
            self.invoiceNo = dict["InvoiceNo"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Sign") && dict["Sign"] != nil {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class GetEinvoicePdfDataResponseBody : Tea.TeaModel {
    public class ReturnValue : Tea.TeaModel {
        public var appCode: String?

        public var EInvoiceData: [Int32]?

        public var encryptProps: [String: String]?

        public var invoiceCode: String?

        public var invoiceNo: String?

        public var language: String?

        public var sign: String?

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
            if self.appCode != nil {
                map["AppCode"] = self.appCode!
            }
            if self.EInvoiceData != nil {
                map["EInvoiceData"] = self.EInvoiceData!
            }
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.invoiceCode != nil {
                map["InvoiceCode"] = self.invoiceCode!
            }
            if self.invoiceNo != nil {
                map["InvoiceNo"] = self.invoiceNo!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                self.appCode = dict["AppCode"] as! String
            }
            if dict.keys.contains("EInvoiceData") && dict["EInvoiceData"] != nil {
                self.EInvoiceData = dict["EInvoiceData"] as! [Int32]
            }
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("InvoiceCode") && dict["InvoiceCode"] != nil {
                self.invoiceCode = dict["InvoiceCode"] as! String
            }
            if dict.keys.contains("InvoiceNo") && dict["InvoiceNo"] != nil {
                self.invoiceNo = dict["InvoiceNo"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public var returnValue: GetEinvoicePdfDataResponseBody.ReturnValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.returnValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ReturnValue") && dict["ReturnValue"] != nil {
            var model = GetEinvoicePdfDataResponseBody.ReturnValue()
            model.fromMap(dict["ReturnValue"] as! [String: Any])
            self.returnValue = model
        }
    }
}

public class GetEinvoicePdfDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEinvoicePdfDataResponseBody?

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
            var model = GetEinvoicePdfDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecretAsrInfoRequest : Tea.TeaModel {
    public var callId: String?

    public var callTime: String?

    public var poolKey: String?

    public var prodCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") && dict["CallId"] != nil {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("CallTime") && dict["CallTime"] != nil {
            self.callTime = dict["CallTime"] as! String
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
    }
}

public class GetSecretAsrInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channel: String?

        public var text: String?

        public override init() {
            super.init()
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
            if self.text != nil {
                map["Text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Channel") && dict["Channel"] != nil {
                self.channel = dict["Channel"] as! String
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetSecretAsrInfoResponseBody.Data]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetSecretAsrInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetSecretAsrInfoResponseBody.Data()
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
    }
}

public class GetSecretAsrInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretAsrInfoResponseBody?

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
            var model = GetSecretAsrInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserResourceTagStatusRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int32
        }
    }
}

public class GetUserResourceTagStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserResourceTagStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResourceTagStatusResponseBody?

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
            var model = GetUserResourceTagStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAsrLanguageModelsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListAsrLanguageModelsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
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
    }
}

public class ListAsrLanguageModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsrLanguageModelsResponseBody?

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
            var model = ListAsrLanguageModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockResourceRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class LockResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class LockResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockResourceResponseBody?

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
            var model = LockResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OccupySecretResRequest : Tea.TeaModel {
    public var city: String?

    public var isDisplayPool: Bool?

    public var noLike: String?

    public var orderDetailId: Int64?

    public var orderId: Int64?

    public var ownerId: Int64?

    public var partnerKey: String?

    public var prodCode: String?

    public var resType: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNoType: Int32?

    public var totalCount: Int32?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.isDisplayPool != nil {
            map["IsDisplayPool"] = self.isDisplayPool!
        }
        if self.noLike != nil {
            map["NoLike"] = self.noLike!
        }
        if self.orderDetailId != nil {
            map["OrderDetailId"] = self.orderDetailId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.partnerKey != nil {
            map["PartnerKey"] = self.partnerKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNoType != nil {
            map["SecretNoType"] = self.secretNoType!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.secretNo != nil {
            map["secretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("IsDisplayPool") && dict["IsDisplayPool"] != nil {
            self.isDisplayPool = dict["IsDisplayPool"] as! Bool
        }
        if dict.keys.contains("NoLike") && dict["NoLike"] != nil {
            self.noLike = dict["NoLike"] as! String
        }
        if dict.keys.contains("OrderDetailId") && dict["OrderDetailId"] != nil {
            self.orderDetailId = dict["OrderDetailId"] as! Int64
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PartnerKey") && dict["PartnerKey"] != nil {
            self.partnerKey = dict["PartnerKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNoType") && dict["SecretNoType"] != nil {
            self.secretNoType = dict["SecretNoType"] as! Int32
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("secretNo") && dict["secretNo"] != nil {
            self.secretNo = dict["secretNo"] as! String
        }
    }
}

public class OccupySecretResResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
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

public class OccupySecretResResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OccupySecretResResponseBody?

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
            var model = OccupySecretResResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OrderSucceededCallbackRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var data: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class OrderSucceededCallbackResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public var synchro: String?

    public override init() {
        super.init()
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
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
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
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Synchro") && dict["Synchro"] != nil {
            self.synchro = dict["Synchro"] as! String
        }
    }
}

public class OrderSucceededCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OrderSucceededCallbackResponseBody?

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
            var model = OrderSucceededCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PoolConfigRequest : Tea.TeaModel {
    public var billId: String?

    public var callbackType: Int32?

    public var frozenDay: Int32?

    public var needAllCallRecords: Bool?

    public var openSmsWhite: Bool?

    public var ownerId: Int64?

    public var poolWarningLimit: Int32?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var selectXMode: String?

    public var smartSmsWhitelist: String?

    public var smsChannel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.callbackType != nil {
            map["CallbackType"] = self.callbackType!
        }
        if self.frozenDay != nil {
            map["FrozenDay"] = self.frozenDay!
        }
        if self.needAllCallRecords != nil {
            map["NeedAllCallRecords"] = self.needAllCallRecords!
        }
        if self.openSmsWhite != nil {
            map["OpenSmsWhite"] = self.openSmsWhite!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolWarningLimit != nil {
            map["PoolWarningLimit"] = self.poolWarningLimit!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.selectXMode != nil {
            map["SelectXMode"] = self.selectXMode!
        }
        if self.smartSmsWhitelist != nil {
            map["SmartSmsWhitelist"] = self.smartSmsWhitelist!
        }
        if self.smsChannel != nil {
            map["SmsChannel"] = self.smsChannel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("CallbackType") && dict["CallbackType"] != nil {
            self.callbackType = dict["CallbackType"] as! Int32
        }
        if dict.keys.contains("FrozenDay") && dict["FrozenDay"] != nil {
            self.frozenDay = dict["FrozenDay"] as! Int32
        }
        if dict.keys.contains("NeedAllCallRecords") && dict["NeedAllCallRecords"] != nil {
            self.needAllCallRecords = dict["NeedAllCallRecords"] as! Bool
        }
        if dict.keys.contains("OpenSmsWhite") && dict["OpenSmsWhite"] != nil {
            self.openSmsWhite = dict["OpenSmsWhite"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolWarningLimit") && dict["PoolWarningLimit"] != nil {
            self.poolWarningLimit = dict["PoolWarningLimit"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SelectXMode") && dict["SelectXMode"] != nil {
            self.selectXMode = dict["SelectXMode"] as! String
        }
        if dict.keys.contains("SmartSmsWhitelist") && dict["SmartSmsWhitelist"] != nil {
            self.smartSmsWhitelist = dict["SmartSmsWhitelist"] as! String
        }
        if dict.keys.contains("SmsChannel") && dict["SmsChannel"] != nil {
            self.smsChannel = dict["SmsChannel"] as! String
        }
    }
}

public class PoolConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class PoolConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PoolConfigResponseBody?

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
            var model = PoolConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PurchaseResourcesRequest : Tea.TeaModel {
    public var billId: String?

    public var buyNumber: Int32?

    public var isDisplayPool: Bool?

    public var noLike: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var regionName: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var specId: Int64?

    public var usageScenarios: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.buyNumber != nil {
            map["BuyNumber"] = self.buyNumber!
        }
        if self.isDisplayPool != nil {
            map["IsDisplayPool"] = self.isDisplayPool!
        }
        if self.noLike != nil {
            map["NoLike"] = self.noLike!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionName != nil {
            map["RegionName"] = self.regionName!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        if self.usageScenarios != nil {
            map["UsageScenarios"] = self.usageScenarios!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("BuyNumber") && dict["BuyNumber"] != nil {
            self.buyNumber = dict["BuyNumber"] as! Int32
        }
        if dict.keys.contains("IsDisplayPool") && dict["IsDisplayPool"] != nil {
            self.isDisplayPool = dict["IsDisplayPool"] as! Bool
        }
        if dict.keys.contains("NoLike") && dict["NoLike"] != nil {
            self.noLike = dict["NoLike"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
            self.regionName = dict["RegionName"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpecId") && dict["SpecId"] != nil {
            self.specId = dict["SpecId"] as! Int64
        }
        if dict.keys.contains("UsageScenarios") && dict["UsageScenarios"] != nil {
            self.usageScenarios = dict["UsageScenarios"] as! String
        }
    }
}

public class PurchaseResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class PurchaseResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurchaseResourcesResponseBody?

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
            var model = PurchaseResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBindingDetailsRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public var subId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PhoneNoA") && dict["PhoneNoA"] != nil {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") && dict["PhoneNoB"] != nil {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
        if dict.keys.contains("SubId") && dict["SubId"] != nil {
            self.subId = dict["SubId"] as! String
        }
    }
}

public class QueryBindingDetailsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryBindingDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBindingDetailsResponseBody?

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
            var model = QueryBindingDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBlackListRequest : Tea.TeaModel {
    public var billId: String?

    public var blackPrefix: String?

    public var blackType: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.blackPrefix != nil {
            map["BlackPrefix"] = self.blackPrefix!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("BlackPrefix") && dict["BlackPrefix"] != nil {
            self.blackPrefix = dict["BlackPrefix"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryBlackListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public var message: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
    }
}

public class QueryBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBlackListResponseBody?

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
            var model = QueryBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBuyPageInitDataRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryBuyPageInitDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryBuyPageInitDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBuyPageInitDataResponseBody?

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
            var model = QueryBuyPageInitDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBuyPageResCountRequest : Tea.TeaModel {
    public var city: String?

    public var like: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var specId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.like != nil {
            map["Like"] = self.like!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Like") && dict["Like"] != nil {
            self.like = dict["Like"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpecId") && dict["SpecId"] != nil {
            self.specId = dict["SpecId"] as! Int64
        }
    }
}

public class QueryBuyPageResCountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryBuyPageResCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBuyPageResCountResponseBody?

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
            var model = QueryBuyPageResCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBuyPageResInfoRequest : Tea.TeaModel {
    public var like: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var specId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.like != nil {
            map["Like"] = self.like!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Like") && dict["Like"] != nil {
            self.like = dict["Like"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpecId") && dict["SpecId"] != nil {
            self.specId = dict["SpecId"] as! Int64
        }
    }
}

public class QueryBuyPageResInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryBuyPageResInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBuyPageResInfoResponseBody?

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
            var model = QueryBuyPageResInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBuyResInfoRequest : Tea.TeaModel {
    public var like: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var specId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.like != nil {
            map["Like"] = self.like!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Like") && dict["Like"] != nil {
            self.like = dict["Like"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpecId") && dict["SpecId"] != nil {
            self.specId = dict["SpecId"] as! Int64
        }
    }
}

public class QueryBuyResInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryBuyResInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBuyResInfoResponseBody?

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
            var model = QueryBuyResInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCallRecordingListRequest : Tea.TeaModel {
    public var billId: String?

    public var callDate: String?

    public var callId: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("CallDate") && dict["CallDate"] != nil {
            self.callDate = dict["CallDate"] as! String
        }
        if dict.keys.contains("CallId") && dict["CallId"] != nil {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PhoneNoA") && dict["PhoneNoA"] != nil {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") && dict["PhoneNoB"] != nil {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class QueryCallRecordingListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryCallRecordingListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallRecordingListResponseBody?

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
            var model = QueryCallRecordingListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCertifyInfoListRequest : Tea.TeaModel {
    public var certifyStatus: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var phoneNo: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certifyStatus != nil {
            map["CertifyStatus"] = self.certifyStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNo != nil {
            map["PhoneNo"] = self.phoneNo!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertifyStatus") && dict["CertifyStatus"] != nil {
            self.certifyStatus = dict["CertifyStatus"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PhoneNo") && dict["PhoneNo"] != nil {
            self.phoneNo = dict["PhoneNo"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryCertifyInfoListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryCertifyInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCertifyInfoListResponseBody?

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
            var model = QueryCertifyInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCertifyOverviewInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryCertifyOverviewInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryCertifyOverviewInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCertifyOverviewInfoResponseBody?

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
            var model = QueryCertifyOverviewInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryContactsListRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryContactsListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryContactsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryContactsListResponseBody?

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
            var model = QueryContactsListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCustInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryCustInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certifyType: Int32?

        public var contactPhone: String?

        public var custId: Int64?

        public var custName: String?

        public var isDayuCustomer: Bool?

        public var osStatus: Int32?

        public var partnerId: Int64?

        public var userTag: Int64?

        public var userTag2: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyType != nil {
                map["CertifyType"] = self.certifyType!
            }
            if self.contactPhone != nil {
                map["ContactPhone"] = self.contactPhone!
            }
            if self.custId != nil {
                map["CustId"] = self.custId!
            }
            if self.custName != nil {
                map["CustName"] = self.custName!
            }
            if self.isDayuCustomer != nil {
                map["IsDayuCustomer"] = self.isDayuCustomer!
            }
            if self.osStatus != nil {
                map["OsStatus"] = self.osStatus!
            }
            if self.partnerId != nil {
                map["PartnerId"] = self.partnerId!
            }
            if self.userTag != nil {
                map["UserTag"] = self.userTag!
            }
            if self.userTag2 != nil {
                map["UserTag2"] = self.userTag2!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyType") && dict["CertifyType"] != nil {
                self.certifyType = dict["CertifyType"] as! Int32
            }
            if dict.keys.contains("ContactPhone") && dict["ContactPhone"] != nil {
                self.contactPhone = dict["ContactPhone"] as! String
            }
            if dict.keys.contains("CustId") && dict["CustId"] != nil {
                self.custId = dict["CustId"] as! Int64
            }
            if dict.keys.contains("CustName") && dict["CustName"] != nil {
                self.custName = dict["CustName"] as! String
            }
            if dict.keys.contains("IsDayuCustomer") && dict["IsDayuCustomer"] != nil {
                self.isDayuCustomer = dict["IsDayuCustomer"] as! Bool
            }
            if dict.keys.contains("OsStatus") && dict["OsStatus"] != nil {
                self.osStatus = dict["OsStatus"] as! Int32
            }
            if dict.keys.contains("PartnerId") && dict["PartnerId"] != nil {
                self.partnerId = dict["PartnerId"] as! Int64
            }
            if dict.keys.contains("UserTag") && dict["UserTag"] != nil {
                self.userTag = dict["UserTag"] as! Int64
            }
            if dict.keys.contains("UserTag2") && dict["UserTag2"] != nil {
                self.userTag2 = dict["UserTag2"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: QueryCustInfoResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = QueryCustInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryCustInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustInfoResponseBody?

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
            var model = QueryCustInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDownloadUrlRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryDownloadUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDownloadUrlResponseBody?

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
            var model = QueryDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEffectiveInvoiceListByBillNosRequest : Tea.TeaModel {
    public var appCode: String?

    public var billNo: String?

    public var encryptProps: [String: String]?

    public var language: String?

    public var majorBillNo: String?

    public var ouCode: String?

    public var relatedSystem: String?

    public var sign: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.billNo != nil {
            map["BillNo"] = self.billNo!
        }
        if self.encryptProps != nil {
            map["EncryptProps"] = self.encryptProps!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.majorBillNo != nil {
            map["MajorBillNo"] = self.majorBillNo!
        }
        if self.ouCode != nil {
            map["OuCode"] = self.ouCode!
        }
        if self.relatedSystem != nil {
            map["RelatedSystem"] = self.relatedSystem!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("BillNo") && dict["BillNo"] != nil {
            self.billNo = dict["BillNo"] as! String
        }
        if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
            self.encryptProps = dict["EncryptProps"] as! [String: String]
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MajorBillNo") && dict["MajorBillNo"] != nil {
            self.majorBillNo = dict["MajorBillNo"] as! String
        }
        if dict.keys.contains("OuCode") && dict["OuCode"] != nil {
            self.ouCode = dict["OuCode"] as! String
        }
        if dict.keys.contains("RelatedSystem") && dict["RelatedSystem"] != nil {
            self.relatedSystem = dict["RelatedSystem"] as! String
        }
        if dict.keys.contains("Sign") && dict["Sign"] != nil {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class QueryEffectiveInvoiceListByBillNosResponseBody : Tea.TeaModel {
    public class ReturnValue : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var aliCompany: String?

            public var aliId: Int64?

            public var amount: Double?

            public var appCode: String?

            public var buildAmount: Double?

            public var category: String?

            public var encryptProps: [String: String]?

            public var invoiceNo: String?

            public var invoiceStatus: String?

            public var invoiceTitle: String?

            public var language: String?

            public var orderItemNo: String?

            public var parentContractNo: String?

            public var sign: String?

            public var site: String?

            public var taxRegisgerNo: String?

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
                if self.aliCompany != nil {
                    map["AliCompany"] = self.aliCompany!
                }
                if self.aliId != nil {
                    map["AliId"] = self.aliId!
                }
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.buildAmount != nil {
                    map["BuildAmount"] = self.buildAmount!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.encryptProps != nil {
                    map["EncryptProps"] = self.encryptProps!
                }
                if self.invoiceNo != nil {
                    map["InvoiceNo"] = self.invoiceNo!
                }
                if self.invoiceStatus != nil {
                    map["InvoiceStatus"] = self.invoiceStatus!
                }
                if self.invoiceTitle != nil {
                    map["InvoiceTitle"] = self.invoiceTitle!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.orderItemNo != nil {
                    map["OrderItemNo"] = self.orderItemNo!
                }
                if self.parentContractNo != nil {
                    map["ParentContractNo"] = self.parentContractNo!
                }
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                if self.site != nil {
                    map["Site"] = self.site!
                }
                if self.taxRegisgerNo != nil {
                    map["TaxRegisgerNo"] = self.taxRegisgerNo!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliCompany") && dict["AliCompany"] != nil {
                    self.aliCompany = dict["AliCompany"] as! String
                }
                if dict.keys.contains("AliId") && dict["AliId"] != nil {
                    self.aliId = dict["AliId"] as! Int64
                }
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Double
                }
                if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                    self.appCode = dict["AppCode"] as! String
                }
                if dict.keys.contains("BuildAmount") && dict["BuildAmount"] != nil {
                    self.buildAmount = dict["BuildAmount"] as! Double
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                    self.encryptProps = dict["EncryptProps"] as! [String: String]
                }
                if dict.keys.contains("InvoiceNo") && dict["InvoiceNo"] != nil {
                    self.invoiceNo = dict["InvoiceNo"] as! String
                }
                if dict.keys.contains("InvoiceStatus") && dict["InvoiceStatus"] != nil {
                    self.invoiceStatus = dict["InvoiceStatus"] as! String
                }
                if dict.keys.contains("InvoiceTitle") && dict["InvoiceTitle"] != nil {
                    self.invoiceTitle = dict["InvoiceTitle"] as! String
                }
                if dict.keys.contains("Language") && dict["Language"] != nil {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("OrderItemNo") && dict["OrderItemNo"] != nil {
                    self.orderItemNo = dict["OrderItemNo"] as! String
                }
                if dict.keys.contains("ParentContractNo") && dict["ParentContractNo"] != nil {
                    self.parentContractNo = dict["ParentContractNo"] as! String
                }
                if dict.keys.contains("Sign") && dict["Sign"] != nil {
                    self.sign = dict["Sign"] as! String
                }
                if dict.keys.contains("Site") && dict["Site"] != nil {
                    self.site = dict["Site"] as! String
                }
                if dict.keys.contains("TaxRegisgerNo") && dict["TaxRegisgerNo"] != nil {
                    self.taxRegisgerNo = dict["TaxRegisgerNo"] as! String
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var encryptProps: [String: String]?

        public var list: [QueryEffectiveInvoiceListByBillNosResponseBody.ReturnValue.List]?

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
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryEffectiveInvoiceListByBillNosResponseBody.ReturnValue.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryEffectiveInvoiceListByBillNosResponseBody.ReturnValue.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public var returnValue: QueryEffectiveInvoiceListByBillNosResponseBody.ReturnValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.returnValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ReturnValue") && dict["ReturnValue"] != nil {
            var model = QueryEffectiveInvoiceListByBillNosResponseBody.ReturnValue()
            model.fromMap(dict["ReturnValue"] as! [String: Any])
            self.returnValue = model
        }
    }
}

public class QueryEffectiveInvoiceListByBillNosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEffectiveInvoiceListByBillNosResponseBody?

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
            var model = QueryEffectiveInvoiceListByBillNosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryExportResUrlRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class QueryExportResUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryExportResUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryExportResUrlResponseBody?

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
            var model = QueryExportResUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryGroupDetailListRequest : Tea.TeaModel {
    public var groupId: String?

    public var number: String?

    public var ownerId: Int64?

    public var pageNo: String?

    public var pageSize: String?

    public var poolKey: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Number") && dict["Number"] != nil {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryGroupDetailListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class QueryGroupDetailListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGroupDetailListResponseBody?

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
            var model = QueryGroupDetailListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryGroupInfoListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: String?

    public var pageSize: String?

    public var poolKey: String?

    public var prodCode: String?

    public var queryKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.queryKey != nil {
            map["QueryKey"] = self.queryKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("QueryKey") && dict["QueryKey"] != nil {
            self.queryKey = dict["QueryKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryGroupInfoListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class QueryGroupInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGroupInfoListResponseBody?

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
            var model = QueryGroupInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInvoiceInfoByRequestNoRequest : Tea.TeaModel {
    public var appCode: String?

    public var encryptProps: [String: String]?

    public var language: String?

    public var relatedSystem: String?

    public var requestNo: String?

    public var sign: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.encryptProps != nil {
            map["EncryptProps"] = self.encryptProps!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.relatedSystem != nil {
            map["RelatedSystem"] = self.relatedSystem!
        }
        if self.requestNo != nil {
            map["RequestNo"] = self.requestNo!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
            self.encryptProps = dict["EncryptProps"] as! [String: String]
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("RelatedSystem") && dict["RelatedSystem"] != nil {
            self.relatedSystem = dict["RelatedSystem"] as! String
        }
        if dict.keys.contains("RequestNo") && dict["RequestNo"] != nil {
            self.requestNo = dict["RequestNo"] as! String
        }
        if dict.keys.contains("Sign") && dict["Sign"] != nil {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class QueryInvoiceInfoByRequestNoResponseBody : Tea.TeaModel {
    public class ReturnValue : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Customer : Tea.TeaModel {
                public var appCode: String?

                public var customerId: String?

                public var customerSite: String?

                public var customerSystem: String?

                public var encryptProps: [String: String]?

                public var language: String?

                public var sign: String?

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
                    if self.appCode != nil {
                        map["AppCode"] = self.appCode!
                    }
                    if self.customerId != nil {
                        map["CustomerId"] = self.customerId!
                    }
                    if self.customerSite != nil {
                        map["CustomerSite"] = self.customerSite!
                    }
                    if self.customerSystem != nil {
                        map["CustomerSystem"] = self.customerSystem!
                    }
                    if self.encryptProps != nil {
                        map["EncryptProps"] = self.encryptProps!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.sign != nil {
                        map["Sign"] = self.sign!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                        self.appCode = dict["AppCode"] as! String
                    }
                    if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                        self.customerId = dict["CustomerId"] as! String
                    }
                    if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                        self.customerSite = dict["CustomerSite"] as! String
                    }
                    if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                        self.customerSystem = dict["CustomerSystem"] as! String
                    }
                    if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                        self.encryptProps = dict["EncryptProps"] as! [String: String]
                    }
                    if dict.keys.contains("Language") && dict["Language"] != nil {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("Sign") && dict["Sign"] != nil {
                        self.sign = dict["Sign"] as! String
                    }
                    if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                        self.uuid = dict["Uuid"] as! String
                    }
                }
            }
            public class DetailList : Tea.TeaModel {
                public class SourceList : Tea.TeaModel {
                    public class Customer : Tea.TeaModel {
                        public var appCode: String?

                        public var customerId: String?

                        public var customerSite: String?

                        public var customerSystem: String?

                        public var encryptProps: [String: String]?

                        public var language: String?

                        public var sign: String?

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
                            if self.appCode != nil {
                                map["AppCode"] = self.appCode!
                            }
                            if self.customerId != nil {
                                map["CustomerId"] = self.customerId!
                            }
                            if self.customerSite != nil {
                                map["CustomerSite"] = self.customerSite!
                            }
                            if self.customerSystem != nil {
                                map["CustomerSystem"] = self.customerSystem!
                            }
                            if self.encryptProps != nil {
                                map["EncryptProps"] = self.encryptProps!
                            }
                            if self.language != nil {
                                map["Language"] = self.language!
                            }
                            if self.sign != nil {
                                map["Sign"] = self.sign!
                            }
                            if self.uuid != nil {
                                map["Uuid"] = self.uuid!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                                self.appCode = dict["AppCode"] as! String
                            }
                            if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                                self.customerId = dict["CustomerId"] as! String
                            }
                            if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                                self.customerSite = dict["CustomerSite"] as! String
                            }
                            if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                                self.customerSystem = dict["CustomerSystem"] as! String
                            }
                            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                                self.encryptProps = dict["EncryptProps"] as! [String: String]
                            }
                            if dict.keys.contains("Language") && dict["Language"] != nil {
                                self.language = dict["Language"] as! String
                            }
                            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                                self.sign = dict["Sign"] as! String
                            }
                            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                                self.uuid = dict["Uuid"] as! String
                            }
                        }
                    }
                    public var amount: Double?

                    public var appCode: String?

                    public var billAmount: Double?

                    public var billDomain: String?

                    public var billNo: String?

                    public var billType: String?

                    public var blueSourceId: Int64?

                    public var canMerge: Bool?

                    public var cargoName: String?

                    public var category: String?

                    public var companyName: String?

                    public var currencyCode: String?

                    public var customer: QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList.SourceList.Customer?

                    public var discountAmount: Double?

                    public var discountTaxAmount: Double?

                    public var encryptProps: [String: String]?

                    public var excludingTaxAmount: Double?

                    public var excludingTaxDiscountAmount: Double?

                    public var excludingTaxRedAmount: Double?

                    public var excludingTaxRemainAmount: Double?

                    public var gmtBill: String?

                    public var gmtBillEnd: String?

                    public var gmtBillStart: String?

                    public var gmtBuild: String?

                    public var isApply: String?

                    public var language: String?

                    public var majorBillNo: String?

                    public var model: String?

                    public var ouCode: String?

                    public var parentCategory: String?

                    public var productDomain: String?

                    public var productId: String?

                    public var productName: String?

                    public var quantity: Double?

                    public var quantityUnit: String?

                    public var redAmount: Double?

                    public var relatedId: String?

                    public var remainAmount: Double?

                    public var revenueType: String?

                    public var serviceName: String?

                    public var sign: String?

                    public var siteId: String?

                    public var sourceId: Int64?

                    public var taxAmount: Double?

                    public var taxRate: Double?

                    public var unitPrice: Double?

                    public var uuid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.customer?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.amount != nil {
                            map["Amount"] = self.amount!
                        }
                        if self.appCode != nil {
                            map["AppCode"] = self.appCode!
                        }
                        if self.billAmount != nil {
                            map["BillAmount"] = self.billAmount!
                        }
                        if self.billDomain != nil {
                            map["BillDomain"] = self.billDomain!
                        }
                        if self.billNo != nil {
                            map["BillNo"] = self.billNo!
                        }
                        if self.billType != nil {
                            map["BillType"] = self.billType!
                        }
                        if self.blueSourceId != nil {
                            map["BlueSourceId"] = self.blueSourceId!
                        }
                        if self.canMerge != nil {
                            map["CanMerge"] = self.canMerge!
                        }
                        if self.cargoName != nil {
                            map["CargoName"] = self.cargoName!
                        }
                        if self.category != nil {
                            map["Category"] = self.category!
                        }
                        if self.companyName != nil {
                            map["CompanyName"] = self.companyName!
                        }
                        if self.currencyCode != nil {
                            map["CurrencyCode"] = self.currencyCode!
                        }
                        if self.customer != nil {
                            map["Customer"] = self.customer?.toMap()
                        }
                        if self.discountAmount != nil {
                            map["DiscountAmount"] = self.discountAmount!
                        }
                        if self.discountTaxAmount != nil {
                            map["DiscountTaxAmount"] = self.discountTaxAmount!
                        }
                        if self.encryptProps != nil {
                            map["EncryptProps"] = self.encryptProps!
                        }
                        if self.excludingTaxAmount != nil {
                            map["ExcludingTaxAmount"] = self.excludingTaxAmount!
                        }
                        if self.excludingTaxDiscountAmount != nil {
                            map["ExcludingTaxDiscountAmount"] = self.excludingTaxDiscountAmount!
                        }
                        if self.excludingTaxRedAmount != nil {
                            map["ExcludingTaxRedAmount"] = self.excludingTaxRedAmount!
                        }
                        if self.excludingTaxRemainAmount != nil {
                            map["ExcludingTaxRemainAmount"] = self.excludingTaxRemainAmount!
                        }
                        if self.gmtBill != nil {
                            map["GmtBill"] = self.gmtBill!
                        }
                        if self.gmtBillEnd != nil {
                            map["GmtBillEnd"] = self.gmtBillEnd!
                        }
                        if self.gmtBillStart != nil {
                            map["GmtBillStart"] = self.gmtBillStart!
                        }
                        if self.gmtBuild != nil {
                            map["GmtBuild"] = self.gmtBuild!
                        }
                        if self.isApply != nil {
                            map["IsApply"] = self.isApply!
                        }
                        if self.language != nil {
                            map["Language"] = self.language!
                        }
                        if self.majorBillNo != nil {
                            map["MajorBillNo"] = self.majorBillNo!
                        }
                        if self.model != nil {
                            map["Model"] = self.model!
                        }
                        if self.ouCode != nil {
                            map["OuCode"] = self.ouCode!
                        }
                        if self.parentCategory != nil {
                            map["ParentCategory"] = self.parentCategory!
                        }
                        if self.productDomain != nil {
                            map["ProductDomain"] = self.productDomain!
                        }
                        if self.productId != nil {
                            map["ProductId"] = self.productId!
                        }
                        if self.productName != nil {
                            map["ProductName"] = self.productName!
                        }
                        if self.quantity != nil {
                            map["Quantity"] = self.quantity!
                        }
                        if self.quantityUnit != nil {
                            map["QuantityUnit"] = self.quantityUnit!
                        }
                        if self.redAmount != nil {
                            map["RedAmount"] = self.redAmount!
                        }
                        if self.relatedId != nil {
                            map["RelatedId"] = self.relatedId!
                        }
                        if self.remainAmount != nil {
                            map["RemainAmount"] = self.remainAmount!
                        }
                        if self.revenueType != nil {
                            map["RevenueType"] = self.revenueType!
                        }
                        if self.serviceName != nil {
                            map["ServiceName"] = self.serviceName!
                        }
                        if self.sign != nil {
                            map["Sign"] = self.sign!
                        }
                        if self.siteId != nil {
                            map["SiteId"] = self.siteId!
                        }
                        if self.sourceId != nil {
                            map["SourceId"] = self.sourceId!
                        }
                        if self.taxAmount != nil {
                            map["TaxAmount"] = self.taxAmount!
                        }
                        if self.taxRate != nil {
                            map["TaxRate"] = self.taxRate!
                        }
                        if self.unitPrice != nil {
                            map["UnitPrice"] = self.unitPrice!
                        }
                        if self.uuid != nil {
                            map["Uuid"] = self.uuid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Amount") && dict["Amount"] != nil {
                            self.amount = dict["Amount"] as! Double
                        }
                        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                            self.appCode = dict["AppCode"] as! String
                        }
                        if dict.keys.contains("BillAmount") && dict["BillAmount"] != nil {
                            self.billAmount = dict["BillAmount"] as! Double
                        }
                        if dict.keys.contains("BillDomain") && dict["BillDomain"] != nil {
                            self.billDomain = dict["BillDomain"] as! String
                        }
                        if dict.keys.contains("BillNo") && dict["BillNo"] != nil {
                            self.billNo = dict["BillNo"] as! String
                        }
                        if dict.keys.contains("BillType") && dict["BillType"] != nil {
                            self.billType = dict["BillType"] as! String
                        }
                        if dict.keys.contains("BlueSourceId") && dict["BlueSourceId"] != nil {
                            self.blueSourceId = dict["BlueSourceId"] as! Int64
                        }
                        if dict.keys.contains("CanMerge") && dict["CanMerge"] != nil {
                            self.canMerge = dict["CanMerge"] as! Bool
                        }
                        if dict.keys.contains("CargoName") && dict["CargoName"] != nil {
                            self.cargoName = dict["CargoName"] as! String
                        }
                        if dict.keys.contains("Category") && dict["Category"] != nil {
                            self.category = dict["Category"] as! String
                        }
                        if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
                            self.companyName = dict["CompanyName"] as! String
                        }
                        if dict.keys.contains("CurrencyCode") && dict["CurrencyCode"] != nil {
                            self.currencyCode = dict["CurrencyCode"] as! String
                        }
                        if dict.keys.contains("Customer") && dict["Customer"] != nil {
                            var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList.SourceList.Customer()
                            model.fromMap(dict["Customer"] as! [String: Any])
                            self.customer = model
                        }
                        if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                            self.discountAmount = dict["DiscountAmount"] as! Double
                        }
                        if dict.keys.contains("DiscountTaxAmount") && dict["DiscountTaxAmount"] != nil {
                            self.discountTaxAmount = dict["DiscountTaxAmount"] as! Double
                        }
                        if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                            self.encryptProps = dict["EncryptProps"] as! [String: String]
                        }
                        if dict.keys.contains("ExcludingTaxAmount") && dict["ExcludingTaxAmount"] != nil {
                            self.excludingTaxAmount = dict["ExcludingTaxAmount"] as! Double
                        }
                        if dict.keys.contains("ExcludingTaxDiscountAmount") && dict["ExcludingTaxDiscountAmount"] != nil {
                            self.excludingTaxDiscountAmount = dict["ExcludingTaxDiscountAmount"] as! Double
                        }
                        if dict.keys.contains("ExcludingTaxRedAmount") && dict["ExcludingTaxRedAmount"] != nil {
                            self.excludingTaxRedAmount = dict["ExcludingTaxRedAmount"] as! Double
                        }
                        if dict.keys.contains("ExcludingTaxRemainAmount") && dict["ExcludingTaxRemainAmount"] != nil {
                            self.excludingTaxRemainAmount = dict["ExcludingTaxRemainAmount"] as! Double
                        }
                        if dict.keys.contains("GmtBill") && dict["GmtBill"] != nil {
                            self.gmtBill = dict["GmtBill"] as! String
                        }
                        if dict.keys.contains("GmtBillEnd") && dict["GmtBillEnd"] != nil {
                            self.gmtBillEnd = dict["GmtBillEnd"] as! String
                        }
                        if dict.keys.contains("GmtBillStart") && dict["GmtBillStart"] != nil {
                            self.gmtBillStart = dict["GmtBillStart"] as! String
                        }
                        if dict.keys.contains("GmtBuild") && dict["GmtBuild"] != nil {
                            self.gmtBuild = dict["GmtBuild"] as! String
                        }
                        if dict.keys.contains("IsApply") && dict["IsApply"] != nil {
                            self.isApply = dict["IsApply"] as! String
                        }
                        if dict.keys.contains("Language") && dict["Language"] != nil {
                            self.language = dict["Language"] as! String
                        }
                        if dict.keys.contains("MajorBillNo") && dict["MajorBillNo"] != nil {
                            self.majorBillNo = dict["MajorBillNo"] as! String
                        }
                        if dict.keys.contains("Model") && dict["Model"] != nil {
                            self.model = dict["Model"] as! String
                        }
                        if dict.keys.contains("OuCode") && dict["OuCode"] != nil {
                            self.ouCode = dict["OuCode"] as! String
                        }
                        if dict.keys.contains("ParentCategory") && dict["ParentCategory"] != nil {
                            self.parentCategory = dict["ParentCategory"] as! String
                        }
                        if dict.keys.contains("ProductDomain") && dict["ProductDomain"] != nil {
                            self.productDomain = dict["ProductDomain"] as! String
                        }
                        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                            self.productId = dict["ProductId"] as! String
                        }
                        if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                            self.productName = dict["ProductName"] as! String
                        }
                        if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                            self.quantity = dict["Quantity"] as! Double
                        }
                        if dict.keys.contains("QuantityUnit") && dict["QuantityUnit"] != nil {
                            self.quantityUnit = dict["QuantityUnit"] as! String
                        }
                        if dict.keys.contains("RedAmount") && dict["RedAmount"] != nil {
                            self.redAmount = dict["RedAmount"] as! Double
                        }
                        if dict.keys.contains("RelatedId") && dict["RelatedId"] != nil {
                            self.relatedId = dict["RelatedId"] as! String
                        }
                        if dict.keys.contains("RemainAmount") && dict["RemainAmount"] != nil {
                            self.remainAmount = dict["RemainAmount"] as! Double
                        }
                        if dict.keys.contains("RevenueType") && dict["RevenueType"] != nil {
                            self.revenueType = dict["RevenueType"] as! String
                        }
                        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                            self.serviceName = dict["ServiceName"] as! String
                        }
                        if dict.keys.contains("Sign") && dict["Sign"] != nil {
                            self.sign = dict["Sign"] as! String
                        }
                        if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
                            self.siteId = dict["SiteId"] as! String
                        }
                        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
                            self.sourceId = dict["SourceId"] as! Int64
                        }
                        if dict.keys.contains("TaxAmount") && dict["TaxAmount"] != nil {
                            self.taxAmount = dict["TaxAmount"] as! Double
                        }
                        if dict.keys.contains("TaxRate") && dict["TaxRate"] != nil {
                            self.taxRate = dict["TaxRate"] as! Double
                        }
                        if dict.keys.contains("UnitPrice") && dict["UnitPrice"] != nil {
                            self.unitPrice = dict["UnitPrice"] as! Double
                        }
                        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                            self.uuid = dict["Uuid"] as! String
                        }
                    }
                }
                public var amount: Double?

                public var appCode: String?

                public var cargoName: String?

                public var discountAmount: Double?

                public var discountTaxAmount: Double?

                public var encryptProps: [String: String]?

                public var excludingTaxAmount: Double?

                public var excludingTaxDiscountAmount: Double?

                public var excludingTaxRedAmount: Double?

                public var excludingTaxRemainAmount: Double?

                public var excludingTaxUnitPrice: Double?

                public var invoiceDetailId: Int64?

                public var language: String?

                public var model: String?

                public var quantity: Double?

                public var quantityUnit: String?

                public var redAmount: Double?

                public var relatedId: String?

                public var remainAmount: Double?

                public var sign: String?

                public var sourceList: [QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList.SourceList]?

                public var taxAmount: Double?

                public var taxRate: Double?

                public var unitPrice: Double?

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
                    if self.amount != nil {
                        map["Amount"] = self.amount!
                    }
                    if self.appCode != nil {
                        map["AppCode"] = self.appCode!
                    }
                    if self.cargoName != nil {
                        map["CargoName"] = self.cargoName!
                    }
                    if self.discountAmount != nil {
                        map["DiscountAmount"] = self.discountAmount!
                    }
                    if self.discountTaxAmount != nil {
                        map["DiscountTaxAmount"] = self.discountTaxAmount!
                    }
                    if self.encryptProps != nil {
                        map["EncryptProps"] = self.encryptProps!
                    }
                    if self.excludingTaxAmount != nil {
                        map["ExcludingTaxAmount"] = self.excludingTaxAmount!
                    }
                    if self.excludingTaxDiscountAmount != nil {
                        map["ExcludingTaxDiscountAmount"] = self.excludingTaxDiscountAmount!
                    }
                    if self.excludingTaxRedAmount != nil {
                        map["ExcludingTaxRedAmount"] = self.excludingTaxRedAmount!
                    }
                    if self.excludingTaxRemainAmount != nil {
                        map["ExcludingTaxRemainAmount"] = self.excludingTaxRemainAmount!
                    }
                    if self.excludingTaxUnitPrice != nil {
                        map["ExcludingTaxUnitPrice"] = self.excludingTaxUnitPrice!
                    }
                    if self.invoiceDetailId != nil {
                        map["InvoiceDetailId"] = self.invoiceDetailId!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.quantity != nil {
                        map["Quantity"] = self.quantity!
                    }
                    if self.quantityUnit != nil {
                        map["QuantityUnit"] = self.quantityUnit!
                    }
                    if self.redAmount != nil {
                        map["RedAmount"] = self.redAmount!
                    }
                    if self.relatedId != nil {
                        map["RelatedId"] = self.relatedId!
                    }
                    if self.remainAmount != nil {
                        map["RemainAmount"] = self.remainAmount!
                    }
                    if self.sign != nil {
                        map["Sign"] = self.sign!
                    }
                    if self.sourceList != nil {
                        var tmp : [Any] = []
                        for k in self.sourceList! {
                            tmp.append(k.toMap())
                        }
                        map["SourceList"] = tmp
                    }
                    if self.taxAmount != nil {
                        map["TaxAmount"] = self.taxAmount!
                    }
                    if self.taxRate != nil {
                        map["TaxRate"] = self.taxRate!
                    }
                    if self.unitPrice != nil {
                        map["UnitPrice"] = self.unitPrice!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Amount") && dict["Amount"] != nil {
                        self.amount = dict["Amount"] as! Double
                    }
                    if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                        self.appCode = dict["AppCode"] as! String
                    }
                    if dict.keys.contains("CargoName") && dict["CargoName"] != nil {
                        self.cargoName = dict["CargoName"] as! String
                    }
                    if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                        self.discountAmount = dict["DiscountAmount"] as! Double
                    }
                    if dict.keys.contains("DiscountTaxAmount") && dict["DiscountTaxAmount"] != nil {
                        self.discountTaxAmount = dict["DiscountTaxAmount"] as! Double
                    }
                    if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                        self.encryptProps = dict["EncryptProps"] as! [String: String]
                    }
                    if dict.keys.contains("ExcludingTaxAmount") && dict["ExcludingTaxAmount"] != nil {
                        self.excludingTaxAmount = dict["ExcludingTaxAmount"] as! Double
                    }
                    if dict.keys.contains("ExcludingTaxDiscountAmount") && dict["ExcludingTaxDiscountAmount"] != nil {
                        self.excludingTaxDiscountAmount = dict["ExcludingTaxDiscountAmount"] as! Double
                    }
                    if dict.keys.contains("ExcludingTaxRedAmount") && dict["ExcludingTaxRedAmount"] != nil {
                        self.excludingTaxRedAmount = dict["ExcludingTaxRedAmount"] as! Double
                    }
                    if dict.keys.contains("ExcludingTaxRemainAmount") && dict["ExcludingTaxRemainAmount"] != nil {
                        self.excludingTaxRemainAmount = dict["ExcludingTaxRemainAmount"] as! Double
                    }
                    if dict.keys.contains("ExcludingTaxUnitPrice") && dict["ExcludingTaxUnitPrice"] != nil {
                        self.excludingTaxUnitPrice = dict["ExcludingTaxUnitPrice"] as! Double
                    }
                    if dict.keys.contains("InvoiceDetailId") && dict["InvoiceDetailId"] != nil {
                        self.invoiceDetailId = dict["InvoiceDetailId"] as! Int64
                    }
                    if dict.keys.contains("Language") && dict["Language"] != nil {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("Model") && dict["Model"] != nil {
                        self.model = dict["Model"] as! String
                    }
                    if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                        self.quantity = dict["Quantity"] as! Double
                    }
                    if dict.keys.contains("QuantityUnit") && dict["QuantityUnit"] != nil {
                        self.quantityUnit = dict["QuantityUnit"] as! String
                    }
                    if dict.keys.contains("RedAmount") && dict["RedAmount"] != nil {
                        self.redAmount = dict["RedAmount"] as! Double
                    }
                    if dict.keys.contains("RelatedId") && dict["RelatedId"] != nil {
                        self.relatedId = dict["RelatedId"] as! String
                    }
                    if dict.keys.contains("RemainAmount") && dict["RemainAmount"] != nil {
                        self.remainAmount = dict["RemainAmount"] as! Double
                    }
                    if dict.keys.contains("Sign") && dict["Sign"] != nil {
                        self.sign = dict["Sign"] as! String
                    }
                    if dict.keys.contains("SourceList") && dict["SourceList"] != nil {
                        var tmp : [QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList.SourceList] = []
                        for v in dict["SourceList"] as! [Any] {
                            var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList.SourceList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.sourceList = tmp
                    }
                    if dict.keys.contains("TaxAmount") && dict["TaxAmount"] != nil {
                        self.taxAmount = dict["TaxAmount"] as! Double
                    }
                    if dict.keys.contains("TaxRate") && dict["TaxRate"] != nil {
                        self.taxRate = dict["TaxRate"] as! Double
                    }
                    if dict.keys.contains("UnitPrice") && dict["UnitPrice"] != nil {
                        self.unitPrice = dict["UnitPrice"] as! Double
                    }
                    if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                        self.uuid = dict["Uuid"] as! String
                    }
                }
            }
            public class LogisticsInfo : Tea.TeaModel {
                public class Customer : Tea.TeaModel {
                    public var appCode: String?

                    public var customerId: String?

                    public var customerSite: String?

                    public var customerSystem: String?

                    public var encryptProps: [String: String]?

                    public var language: String?

                    public var sign: String?

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
                        if self.appCode != nil {
                            map["AppCode"] = self.appCode!
                        }
                        if self.customerId != nil {
                            map["CustomerId"] = self.customerId!
                        }
                        if self.customerSite != nil {
                            map["CustomerSite"] = self.customerSite!
                        }
                        if self.customerSystem != nil {
                            map["CustomerSystem"] = self.customerSystem!
                        }
                        if self.encryptProps != nil {
                            map["EncryptProps"] = self.encryptProps!
                        }
                        if self.language != nil {
                            map["Language"] = self.language!
                        }
                        if self.sign != nil {
                            map["Sign"] = self.sign!
                        }
                        if self.uuid != nil {
                            map["Uuid"] = self.uuid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                            self.appCode = dict["AppCode"] as! String
                        }
                        if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
                            self.customerId = dict["CustomerId"] as! String
                        }
                        if dict.keys.contains("CustomerSite") && dict["CustomerSite"] != nil {
                            self.customerSite = dict["CustomerSite"] as! String
                        }
                        if dict.keys.contains("CustomerSystem") && dict["CustomerSystem"] != nil {
                            self.customerSystem = dict["CustomerSystem"] as! String
                        }
                        if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                            self.encryptProps = dict["EncryptProps"] as! [String: String]
                        }
                        if dict.keys.contains("Language") && dict["Language"] != nil {
                            self.language = dict["Language"] as! String
                        }
                        if dict.keys.contains("Sign") && dict["Sign"] != nil {
                            self.sign = dict["Sign"] as! String
                        }
                        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                            self.uuid = dict["Uuid"] as! String
                        }
                    }
                }
                public var appCode: String?

                public var customer: QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.LogisticsInfo.Customer?

                public var encryptProps: [String: String]?

                public var gmtSend: String?

                public var invoiceCode: String?

                public var invoiceDate: String?

                public var invoiceId: Int64?

                public var invoiceNo: String?

                public var invoiceNos: String?

                public var language: String?

                public var logisticsCompanies: String?

                public var relatedId: String?

                public var sender: String?

                public var sign: String?

                public var timestamp: Int64?

                public var trackingNumber: String?

                public var uuid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.customer?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appCode != nil {
                        map["AppCode"] = self.appCode!
                    }
                    if self.customer != nil {
                        map["Customer"] = self.customer?.toMap()
                    }
                    if self.encryptProps != nil {
                        map["EncryptProps"] = self.encryptProps!
                    }
                    if self.gmtSend != nil {
                        map["GmtSend"] = self.gmtSend!
                    }
                    if self.invoiceCode != nil {
                        map["InvoiceCode"] = self.invoiceCode!
                    }
                    if self.invoiceDate != nil {
                        map["InvoiceDate"] = self.invoiceDate!
                    }
                    if self.invoiceId != nil {
                        map["InvoiceId"] = self.invoiceId!
                    }
                    if self.invoiceNo != nil {
                        map["InvoiceNo"] = self.invoiceNo!
                    }
                    if self.invoiceNos != nil {
                        map["InvoiceNos"] = self.invoiceNos!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.logisticsCompanies != nil {
                        map["LogisticsCompanies"] = self.logisticsCompanies!
                    }
                    if self.relatedId != nil {
                        map["RelatedId"] = self.relatedId!
                    }
                    if self.sender != nil {
                        map["Sender"] = self.sender!
                    }
                    if self.sign != nil {
                        map["Sign"] = self.sign!
                    }
                    if self.timestamp != nil {
                        map["Timestamp"] = self.timestamp!
                    }
                    if self.trackingNumber != nil {
                        map["TrackingNumber"] = self.trackingNumber!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                        self.appCode = dict["AppCode"] as! String
                    }
                    if dict.keys.contains("Customer") && dict["Customer"] != nil {
                        var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.LogisticsInfo.Customer()
                        model.fromMap(dict["Customer"] as! [String: Any])
                        self.customer = model
                    }
                    if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                        self.encryptProps = dict["EncryptProps"] as! [String: String]
                    }
                    if dict.keys.contains("GmtSend") && dict["GmtSend"] != nil {
                        self.gmtSend = dict["GmtSend"] as! String
                    }
                    if dict.keys.contains("InvoiceCode") && dict["InvoiceCode"] != nil {
                        self.invoiceCode = dict["InvoiceCode"] as! String
                    }
                    if dict.keys.contains("InvoiceDate") && dict["InvoiceDate"] != nil {
                        self.invoiceDate = dict["InvoiceDate"] as! String
                    }
                    if dict.keys.contains("InvoiceId") && dict["InvoiceId"] != nil {
                        self.invoiceId = dict["InvoiceId"] as! Int64
                    }
                    if dict.keys.contains("InvoiceNo") && dict["InvoiceNo"] != nil {
                        self.invoiceNo = dict["InvoiceNo"] as! String
                    }
                    if dict.keys.contains("InvoiceNos") && dict["InvoiceNos"] != nil {
                        self.invoiceNos = dict["InvoiceNos"] as! String
                    }
                    if dict.keys.contains("Language") && dict["Language"] != nil {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("LogisticsCompanies") && dict["LogisticsCompanies"] != nil {
                        self.logisticsCompanies = dict["LogisticsCompanies"] as! String
                    }
                    if dict.keys.contains("RelatedId") && dict["RelatedId"] != nil {
                        self.relatedId = dict["RelatedId"] as! String
                    }
                    if dict.keys.contains("Sender") && dict["Sender"] != nil {
                        self.sender = dict["Sender"] as! String
                    }
                    if dict.keys.contains("Sign") && dict["Sign"] != nil {
                        self.sign = dict["Sign"] as! String
                    }
                    if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                        self.timestamp = dict["Timestamp"] as! Int64
                    }
                    if dict.keys.contains("TrackingNumber") && dict["TrackingNumber"] != nil {
                        self.trackingNumber = dict["TrackingNumber"] as! String
                    }
                    if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                        self.uuid = dict["Uuid"] as! String
                    }
                }
            }
            public var amount: Double?

            public var appCode: String?

            public var currencyCode: String?

            public var customer: QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.Customer?

            public var detailList: [QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList]?

            public var encryptProps: [String: String]?

            public var excludingTaxAmount: Double?

            public var excludingTaxRedAmount: Double?

            public var excludingTaxRemainAmount: Double?

            public var invoiceCode: String?

            public var invoiceDate: String?

            public var invoiceId: Int64?

            public var invoiceNo: String?

            public var invoiceStatus: String?

            public var invoiceType: String?

            public var isRed: Bool?

            public var isReissue: Bool?

            public var language: String?

            public var linkInvoiceCode: String?

            public var linkInvoiceNo: String?

            public var logisticsInfo: QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.LogisticsInfo?

            public var materialType: String?

            public var memo: String?

            public var ouCode: String?

            public var purchaserBankInfo: String?

            public var purchaserContactInfo: String?

            public var purchaserName: String?

            public var purchaserTaxNo: String?

            public var redAmount: Double?

            public var relatedId: String?

            public var remainAmount: Double?

            public var sign: String?

            public var siteId: String?

            public var taxAmount: Double?

            public var uuid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.customer?.validate()
                try self.logisticsInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.currencyCode != nil {
                    map["CurrencyCode"] = self.currencyCode!
                }
                if self.customer != nil {
                    map["Customer"] = self.customer?.toMap()
                }
                if self.detailList != nil {
                    var tmp : [Any] = []
                    for k in self.detailList! {
                        tmp.append(k.toMap())
                    }
                    map["DetailList"] = tmp
                }
                if self.encryptProps != nil {
                    map["EncryptProps"] = self.encryptProps!
                }
                if self.excludingTaxAmount != nil {
                    map["ExcludingTaxAmount"] = self.excludingTaxAmount!
                }
                if self.excludingTaxRedAmount != nil {
                    map["ExcludingTaxRedAmount"] = self.excludingTaxRedAmount!
                }
                if self.excludingTaxRemainAmount != nil {
                    map["ExcludingTaxRemainAmount"] = self.excludingTaxRemainAmount!
                }
                if self.invoiceCode != nil {
                    map["InvoiceCode"] = self.invoiceCode!
                }
                if self.invoiceDate != nil {
                    map["InvoiceDate"] = self.invoiceDate!
                }
                if self.invoiceId != nil {
                    map["InvoiceId"] = self.invoiceId!
                }
                if self.invoiceNo != nil {
                    map["InvoiceNo"] = self.invoiceNo!
                }
                if self.invoiceStatus != nil {
                    map["InvoiceStatus"] = self.invoiceStatus!
                }
                if self.invoiceType != nil {
                    map["InvoiceType"] = self.invoiceType!
                }
                if self.isRed != nil {
                    map["IsRed"] = self.isRed!
                }
                if self.isReissue != nil {
                    map["IsReissue"] = self.isReissue!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.linkInvoiceCode != nil {
                    map["LinkInvoiceCode"] = self.linkInvoiceCode!
                }
                if self.linkInvoiceNo != nil {
                    map["LinkInvoiceNo"] = self.linkInvoiceNo!
                }
                if self.logisticsInfo != nil {
                    map["LogisticsInfo"] = self.logisticsInfo?.toMap()
                }
                if self.materialType != nil {
                    map["MaterialType"] = self.materialType!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.ouCode != nil {
                    map["OuCode"] = self.ouCode!
                }
                if self.purchaserBankInfo != nil {
                    map["PurchaserBankInfo"] = self.purchaserBankInfo!
                }
                if self.purchaserContactInfo != nil {
                    map["PurchaserContactInfo"] = self.purchaserContactInfo!
                }
                if self.purchaserName != nil {
                    map["PurchaserName"] = self.purchaserName!
                }
                if self.purchaserTaxNo != nil {
                    map["PurchaserTaxNo"] = self.purchaserTaxNo!
                }
                if self.redAmount != nil {
                    map["RedAmount"] = self.redAmount!
                }
                if self.relatedId != nil {
                    map["RelatedId"] = self.relatedId!
                }
                if self.remainAmount != nil {
                    map["RemainAmount"] = self.remainAmount!
                }
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                if self.siteId != nil {
                    map["SiteId"] = self.siteId!
                }
                if self.taxAmount != nil {
                    map["TaxAmount"] = self.taxAmount!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Double
                }
                if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                    self.appCode = dict["AppCode"] as! String
                }
                if dict.keys.contains("CurrencyCode") && dict["CurrencyCode"] != nil {
                    self.currencyCode = dict["CurrencyCode"] as! String
                }
                if dict.keys.contains("Customer") && dict["Customer"] != nil {
                    var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.Customer()
                    model.fromMap(dict["Customer"] as! [String: Any])
                    self.customer = model
                }
                if dict.keys.contains("DetailList") && dict["DetailList"] != nil {
                    var tmp : [QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList] = []
                    for v in dict["DetailList"] as! [Any] {
                        var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.DetailList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.detailList = tmp
                }
                if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                    self.encryptProps = dict["EncryptProps"] as! [String: String]
                }
                if dict.keys.contains("ExcludingTaxAmount") && dict["ExcludingTaxAmount"] != nil {
                    self.excludingTaxAmount = dict["ExcludingTaxAmount"] as! Double
                }
                if dict.keys.contains("ExcludingTaxRedAmount") && dict["ExcludingTaxRedAmount"] != nil {
                    self.excludingTaxRedAmount = dict["ExcludingTaxRedAmount"] as! Double
                }
                if dict.keys.contains("ExcludingTaxRemainAmount") && dict["ExcludingTaxRemainAmount"] != nil {
                    self.excludingTaxRemainAmount = dict["ExcludingTaxRemainAmount"] as! Double
                }
                if dict.keys.contains("InvoiceCode") && dict["InvoiceCode"] != nil {
                    self.invoiceCode = dict["InvoiceCode"] as! String
                }
                if dict.keys.contains("InvoiceDate") && dict["InvoiceDate"] != nil {
                    self.invoiceDate = dict["InvoiceDate"] as! String
                }
                if dict.keys.contains("InvoiceId") && dict["InvoiceId"] != nil {
                    self.invoiceId = dict["InvoiceId"] as! Int64
                }
                if dict.keys.contains("InvoiceNo") && dict["InvoiceNo"] != nil {
                    self.invoiceNo = dict["InvoiceNo"] as! String
                }
                if dict.keys.contains("InvoiceStatus") && dict["InvoiceStatus"] != nil {
                    self.invoiceStatus = dict["InvoiceStatus"] as! String
                }
                if dict.keys.contains("InvoiceType") && dict["InvoiceType"] != nil {
                    self.invoiceType = dict["InvoiceType"] as! String
                }
                if dict.keys.contains("IsRed") && dict["IsRed"] != nil {
                    self.isRed = dict["IsRed"] as! Bool
                }
                if dict.keys.contains("IsReissue") && dict["IsReissue"] != nil {
                    self.isReissue = dict["IsReissue"] as! Bool
                }
                if dict.keys.contains("Language") && dict["Language"] != nil {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("LinkInvoiceCode") && dict["LinkInvoiceCode"] != nil {
                    self.linkInvoiceCode = dict["LinkInvoiceCode"] as! String
                }
                if dict.keys.contains("LinkInvoiceNo") && dict["LinkInvoiceNo"] != nil {
                    self.linkInvoiceNo = dict["LinkInvoiceNo"] as! String
                }
                if dict.keys.contains("LogisticsInfo") && dict["LogisticsInfo"] != nil {
                    var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List.LogisticsInfo()
                    model.fromMap(dict["LogisticsInfo"] as! [String: Any])
                    self.logisticsInfo = model
                }
                if dict.keys.contains("MaterialType") && dict["MaterialType"] != nil {
                    self.materialType = dict["MaterialType"] as! String
                }
                if dict.keys.contains("Memo") && dict["Memo"] != nil {
                    self.memo = dict["Memo"] as! String
                }
                if dict.keys.contains("OuCode") && dict["OuCode"] != nil {
                    self.ouCode = dict["OuCode"] as! String
                }
                if dict.keys.contains("PurchaserBankInfo") && dict["PurchaserBankInfo"] != nil {
                    self.purchaserBankInfo = dict["PurchaserBankInfo"] as! String
                }
                if dict.keys.contains("PurchaserContactInfo") && dict["PurchaserContactInfo"] != nil {
                    self.purchaserContactInfo = dict["PurchaserContactInfo"] as! String
                }
                if dict.keys.contains("PurchaserName") && dict["PurchaserName"] != nil {
                    self.purchaserName = dict["PurchaserName"] as! String
                }
                if dict.keys.contains("PurchaserTaxNo") && dict["PurchaserTaxNo"] != nil {
                    self.purchaserTaxNo = dict["PurchaserTaxNo"] as! String
                }
                if dict.keys.contains("RedAmount") && dict["RedAmount"] != nil {
                    self.redAmount = dict["RedAmount"] as! Double
                }
                if dict.keys.contains("RelatedId") && dict["RelatedId"] != nil {
                    self.relatedId = dict["RelatedId"] as! String
                }
                if dict.keys.contains("RemainAmount") && dict["RemainAmount"] != nil {
                    self.remainAmount = dict["RemainAmount"] as! Double
                }
                if dict.keys.contains("Sign") && dict["Sign"] != nil {
                    self.sign = dict["Sign"] as! String
                }
                if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
                    self.siteId = dict["SiteId"] as! String
                }
                if dict.keys.contains("TaxAmount") && dict["TaxAmount"] != nil {
                    self.taxAmount = dict["TaxAmount"] as! Double
                }
                if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var encryptProps: [String: String]?

        public var list: [QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List]?

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
            if self.encryptProps != nil {
                map["EncryptProps"] = self.encryptProps!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncryptProps") && dict["EncryptProps"] != nil {
                self.encryptProps = dict["EncryptProps"] as! [String: String]
            }
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var isSuccess: Bool?

    public var returnValue: QueryInvoiceInfoByRequestNoResponseBody.ReturnValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.returnValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ReturnValue") && dict["ReturnValue"] != nil {
            var model = QueryInvoiceInfoByRequestNoResponseBody.ReturnValue()
            model.fromMap(dict["ReturnValue"] as! [String: Any])
            self.returnValue = model
        }
    }
}

public class QueryInvoiceInfoByRequestNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInvoiceInfoByRequestNoResponseBody?

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
            var model = QueryInvoiceInfoByRequestNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMessageCallbackInfoRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryMessageCallbackInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class QueryMessageCallbackInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMessageCallbackInfoResponseBody?

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
            var model = QueryMessageCallbackInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMessageQueueListRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryMessageQueueListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryMessageQueueListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMessageQueueListResponseBody?

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
            var model = QueryMessageQueueListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMonthlyBillInfoRequest : Tea.TeaModel {
    public var billCycle: String?

    public var itemId: String?

    public var itemName: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subjectItemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billCycle != nil {
            map["BillCycle"] = self.billCycle!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemName != nil {
            map["ItemName"] = self.itemName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subjectItemId != nil {
            map["SubjectItemId"] = self.subjectItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillCycle") && dict["BillCycle"] != nil {
            self.billCycle = dict["BillCycle"] as! String
        }
        if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
            self.itemId = dict["ItemId"] as! String
        }
        if dict.keys.contains("ItemName") && dict["ItemName"] != nil {
            self.itemName = dict["ItemName"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubjectItemId") && dict["SubjectItemId"] != nil {
            self.subjectItemId = dict["SubjectItemId"] as! String
        }
    }
}

public class QueryMonthlyBillInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryMonthlyBillInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMonthlyBillInfoResponseBody?

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
            var model = QueryMonthlyBillInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMonthlyStatisticsInfoRequest : Tea.TeaModel {
    public var billId: String?

    public var endDate: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class QueryMonthlyStatisticsInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryMonthlyStatisticsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMonthlyStatisticsInfoResponseBody?

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
            var model = QueryMonthlyStatisticsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryNoBuyTasksRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryNoBuyTasksResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public var message: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
    }
}

public class QueryNoBuyTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryNoBuyTasksResponseBody?

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
            var model = QueryNoBuyTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryNoDistributeRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryNoDistributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryNoDistributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryNoDistributeResponseBody?

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
            var model = QueryNoDistributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOpenStatusRequest : Tea.TeaModel {
    public var busOffer: Int64?

    public var ownerId: Int64?

    public var prodCode: String?

    public var prodId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.busOffer != nil {
            map["BusOffer"] = self.busOffer!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.prodId != nil {
            map["ProdId"] = self.prodId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusOffer") && dict["BusOffer"] != nil {
            self.busOffer = dict["BusOffer"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ProdId") && dict["ProdId"] != nil {
            self.prodId = dict["ProdId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryOpenStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class QueryOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOpenStatusResponseBody?

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
            var model = QueryOpenStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPackageDetailRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class QueryPackageDetailResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPackageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPackageDetailResponseBody?

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
            var model = QueryPackageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPackageListRequest : Tea.TeaModel {
    public var billCycle: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billCycle != nil {
            map["BillCycle"] = self.billCycle!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillCycle") && dict["BillCycle"] != nil {
            self.billCycle = dict["BillCycle"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPackageListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPackageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPackageListResponseBody?

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
            var model = QueryPackageListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPackageStatisticsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPackageStatisticsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPackageStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPackageStatisticsResponseBody?

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
            var model = QueryPackageStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPoolCityListRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPoolCityListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPoolCityListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPoolCityListResponseBody?

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
            var model = QueryPoolCityListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPoolInfoListRequest : Tea.TeaModel {
    public var isFuzzyQuery: Bool?

    public var ownerId: Int64?

    public var pageNo: String?

    public var pageSize: String?

    public var poolName: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var searchParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isFuzzyQuery != nil {
            map["IsFuzzyQuery"] = self.isFuzzyQuery!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.searchParam != nil {
            map["SearchParam"] = self.searchParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsFuzzyQuery") && dict["IsFuzzyQuery"] != nil {
            self.isFuzzyQuery = dict["IsFuzzyQuery"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PoolName") && dict["PoolName"] != nil {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SearchParam") && dict["SearchParam"] != nil {
            self.searchParam = dict["SearchParam"] as! String
        }
    }
}

public class QueryPoolInfoListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPoolInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPoolInfoListResponseBody?

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
            var model = QueryPoolInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPoolMonthlyBillInfoRequest : Tea.TeaModel {
    public var billCycle: String?

    public var billId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billCycle != nil {
            map["BillCycle"] = self.billCycle!
        }
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillCycle") && dict["BillCycle"] != nil {
            self.billCycle = dict["BillCycle"] as! String
        }
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPoolMonthlyBillInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPoolMonthlyBillInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPoolMonthlyBillInfoResponseBody?

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
            var model = QueryPoolMonthlyBillInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPoolStatisticsInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPoolStatisticsInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPoolStatisticsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPoolStatisticsInfoResponseBody?

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
            var model = QueryPoolStatisticsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPoolSummaryInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPoolSummaryInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPoolSummaryInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPoolSummaryInfoResponseBody?

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
            var model = QueryPoolSummaryInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPurchasedInfoRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPurchasedInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPurchasedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPurchasedInfoResponseBody?

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
            var model = QueryPurchasedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPurchasedResListRequest : Tea.TeaModel {
    public var billId: String?

    public var city: String?

    public var isDisplayPool: Bool?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var resBindStatus: Int32?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.isDisplayPool != nil {
            map["IsDisplayPool"] = self.isDisplayPool!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resBindStatus != nil {
            map["ResBindStatus"] = self.resBindStatus!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("IsDisplayPool") && dict["IsDisplayPool"] != nil {
            self.isDisplayPool = dict["IsDisplayPool"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResBindStatus") && dict["ResBindStatus"] != nil {
            self.resBindStatus = dict["ResBindStatus"] as! Int32
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class QueryPurchasedResListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryPurchasedResListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPurchasedResListResponseBody?

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
            var model = QueryPurchasedResListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryQRCodeInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNumber != nil {
            map["SecretNumber"] = self.secretNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNumber") && dict["SecretNumber"] != nil {
            self.secretNumber = dict["SecretNumber"] as! String
        }
    }
}

public class QueryQRCodeInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class QueryQRCodeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryQRCodeInfoResponseBody?

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
            var model = QueryQRCodeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRecordingUrlRequest : Tea.TeaModel {
    public var billId: String?

    public var callDate: String?

    public var callId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("CallDate") && dict["CallDate"] != nil {
            self.callDate = dict["CallDate"] as! String
        }
        if dict.keys.contains("CallId") && dict["CallId"] != nil {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRecordingUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryRecordingUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordingUrlResponseBody?

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
            var model = QueryRecordingUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryResSummaryInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryResSummaryInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryResSummaryInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryResSummaryInfoResponseBody?

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
            var model = QueryResSummaryInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRingToneUrlRequest : Tea.TeaModel {
    public var billId: String?

    public var fileKey: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRingToneUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryRingToneUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRingToneUrlResponseBody?

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
            var model = QueryRingToneUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRingTonesRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var playType: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playType != nil {
            map["PlayType"] = self.playType!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlayType") && dict["PlayType"] != nil {
            self.playType = dict["PlayType"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRingTonesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryRingTonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRingTonesResponseBody?

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
            var model = QueryRingTonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySimplePoolInfoListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolName: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") && dict["PoolName"] != nil {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QuerySimplePoolInfoListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QuerySimplePoolInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySimplePoolInfoListResponseBody?

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
            var model = QuerySimplePoolInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryStatisticsInfoRequest : Tea.TeaModel {
    public var billId: String?

    public var endDate: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class QueryStatisticsInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryStatisticsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryStatisticsInfoResponseBody?

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
            var model = QueryStatisticsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTagOpenStatusRequest : Tea.TeaModel {
    public var attributeKey: String?

    public var bizType: Int32?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subAttributeKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributeKey != nil {
            map["AttributeKey"] = self.attributeKey!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subAttributeKey != nil {
            map["SubAttributeKey"] = self.subAttributeKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttributeKey") && dict["AttributeKey"] != nil {
            self.attributeKey = dict["AttributeKey"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! Int32
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubAttributeKey") && dict["SubAttributeKey"] != nil {
            self.subAttributeKey = dict["SubAttributeKey"] as! String
        }
    }
}

public class QueryTagOpenStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryTagOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagOpenStatusResponseBody?

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
            var model = QueryTagOpenStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTransferDetailsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var recordId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryTransferDetailsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryTransferDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTransferDetailsResponseBody?

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
            var model = QueryTransferDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTransferRecordRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var recordId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryTransferRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryTransferRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTransferRecordResponseBody?

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
            var model = QueryTransferRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTransferRecordsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var prodCode: String?

    public var recordId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryTransferRecordsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryTransferRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTransferRecordsResponseBody?

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
            var model = QueryTransferRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUserDeleteStatusRequest : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var level: Int64?

    public var message: String?

    public var pk: String?

    public var prodCode: String?

    public var prompt: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

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
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("GmtWakeup") && dict["GmtWakeup"] != nil {
            self.gmtWakeup = dict["GmtWakeup"] as! String
        }
        if dict.keys.contains("Hid") && dict["Hid"] != nil {
            self.hid = dict["Hid"] as! Int64
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("Invoker") && dict["Invoker"] != nil {
            self.invoker = dict["Invoker"] as! String
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pk") && dict["Pk"] != nil {
            self.pk = dict["Pk"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskExtraData") && dict["TaskExtraData"] != nil {
            self.taskExtraData = dict["TaskExtraData"] as! String
        }
        if dict.keys.contains("TaskIdentifier") && dict["TaskIdentifier"] != nil {
            self.taskIdentifier = dict["TaskIdentifier"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class QueryUserDeleteStatusResponseBody : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var level: Int64?

    public var message: String?

    public var pk: String?

    public var prompt: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

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
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("GmtWakeup") && dict["GmtWakeup"] != nil {
            self.gmtWakeup = dict["GmtWakeup"] as! String
        }
        if dict.keys.contains("Hid") && dict["Hid"] != nil {
            self.hid = dict["Hid"] as! Int64
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("Invoker") && dict["Invoker"] != nil {
            self.invoker = dict["Invoker"] as! String
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pk") && dict["Pk"] != nil {
            self.pk = dict["Pk"] as! String
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskExtraData") && dict["TaskExtraData"] != nil {
            self.taskExtraData = dict["TaskExtraData"] as! String
        }
        if dict.keys.contains("TaskIdentifier") && dict["TaskIdentifier"] != nil {
            self.taskIdentifier = dict["TaskIdentifier"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class QueryUserDeleteStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserDeleteStatusResponseBody?

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
            var model = QueryUserDeleteStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUserInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryUserInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserInfoResponseBody?

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
            var model = QueryUserInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUserResPoolInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryUserResPoolInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryUserResPoolInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserResPoolInfoResponseBody?

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
            var model = QueryUserResPoolInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryVirtualOperationShowRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryVirtualOperationShowResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryVirtualOperationShowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVirtualOperationShowResponseBody?

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
            var model = QueryVirtualOperationShowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryWarningListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryWarningListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class QueryWarningListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWarningListResponseBody?

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
            var model = QueryWarningListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryWaybillOrderInfoRequest : Tea.TeaModel {
    public var outerOrderCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outerOrderCode != nil {
            map["OuterOrderCode"] = self.outerOrderCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OuterOrderCode") && dict["OuterOrderCode"] != nil {
            self.outerOrderCode = dict["OuterOrderCode"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryWaybillOrderInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliyunprice: String?

        public var appointGotEndTime: String?

        public var appointGotStartTime: String?

        public var bizType: Int32?

        public var city: String?

        public var cpCode: String?

        public var gotCode: String?

        public var lastLogisticDetail: String?

        public var logisticsGmtModified: String?

        public var logisticsStatus: String?

        public var logisticsStatusDesc: String?

        public var mailNo: String?

        public var outerOrderCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunprice != nil {
                map["Aliyunprice"] = self.aliyunprice!
            }
            if self.appointGotEndTime != nil {
                map["AppointGotEndTime"] = self.appointGotEndTime!
            }
            if self.appointGotStartTime != nil {
                map["AppointGotStartTime"] = self.appointGotStartTime!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.cpCode != nil {
                map["CpCode"] = self.cpCode!
            }
            if self.gotCode != nil {
                map["GotCode"] = self.gotCode!
            }
            if self.lastLogisticDetail != nil {
                map["LastLogisticDetail"] = self.lastLogisticDetail!
            }
            if self.logisticsGmtModified != nil {
                map["LogisticsGmtModified"] = self.logisticsGmtModified!
            }
            if self.logisticsStatus != nil {
                map["LogisticsStatus"] = self.logisticsStatus!
            }
            if self.logisticsStatusDesc != nil {
                map["LogisticsStatusDesc"] = self.logisticsStatusDesc!
            }
            if self.mailNo != nil {
                map["MailNo"] = self.mailNo!
            }
            if self.outerOrderCode != nil {
                map["OuterOrderCode"] = self.outerOrderCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliyunprice") && dict["Aliyunprice"] != nil {
                self.aliyunprice = dict["Aliyunprice"] as! String
            }
            if dict.keys.contains("AppointGotEndTime") && dict["AppointGotEndTime"] != nil {
                self.appointGotEndTime = dict["AppointGotEndTime"] as! String
            }
            if dict.keys.contains("AppointGotStartTime") && dict["AppointGotStartTime"] != nil {
                self.appointGotStartTime = dict["AppointGotStartTime"] as! String
            }
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! Int32
            }
            if dict.keys.contains("City") && dict["City"] != nil {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("CpCode") && dict["CpCode"] != nil {
                self.cpCode = dict["CpCode"] as! String
            }
            if dict.keys.contains("GotCode") && dict["GotCode"] != nil {
                self.gotCode = dict["GotCode"] as! String
            }
            if dict.keys.contains("LastLogisticDetail") && dict["LastLogisticDetail"] != nil {
                self.lastLogisticDetail = dict["LastLogisticDetail"] as! String
            }
            if dict.keys.contains("LogisticsGmtModified") && dict["LogisticsGmtModified"] != nil {
                self.logisticsGmtModified = dict["LogisticsGmtModified"] as! String
            }
            if dict.keys.contains("LogisticsStatus") && dict["LogisticsStatus"] != nil {
                self.logisticsStatus = dict["LogisticsStatus"] as! String
            }
            if dict.keys.contains("LogisticsStatusDesc") && dict["LogisticsStatusDesc"] != nil {
                self.logisticsStatusDesc = dict["LogisticsStatusDesc"] as! String
            }
            if dict.keys.contains("MailNo") && dict["MailNo"] != nil {
                self.mailNo = dict["MailNo"] as! String
            }
            if dict.keys.contains("OuterOrderCode") && dict["OuterOrderCode"] != nil {
                self.outerOrderCode = dict["OuterOrderCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryWaybillOrderInfoResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryWaybillOrderInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryWaybillOrderInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWaybillOrderInfoResponseBody?

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
            var model = QueryWaybillOrderInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryWaybillOrderStatisticsInfoRequest : Tea.TeaModel {
    public var endTime: String?

    public var granularity: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Granularity") && dict["Granularity"] != nil {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryWaybillOrderStatisticsInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliyunpriceAmount: Double?

        public var cancelCount: Int32?

        public var gmtCreate: String?

        public var gotCount: Int32?

        public var orderTotal: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunpriceAmount != nil {
                map["AliyunpriceAmount"] = self.aliyunpriceAmount!
            }
            if self.cancelCount != nil {
                map["CancelCount"] = self.cancelCount!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gotCount != nil {
                map["GotCount"] = self.gotCount!
            }
            if self.orderTotal != nil {
                map["OrderTotal"] = self.orderTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunpriceAmount") && dict["AliyunpriceAmount"] != nil {
                self.aliyunpriceAmount = dict["AliyunpriceAmount"] as! Double
            }
            if dict.keys.contains("CancelCount") && dict["CancelCount"] != nil {
                self.cancelCount = dict["CancelCount"] as! Int32
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GotCount") && dict["GotCount"] != nil {
                self.gotCount = dict["GotCount"] as! Int32
            }
            if dict.keys.contains("OrderTotal") && dict["OrderTotal"] != nil {
                self.orderTotal = dict["OrderTotal"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [QueryWaybillOrderStatisticsInfoResponseBody.Data]?

    public var httpStatusCode: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryWaybillOrderStatisticsInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryWaybillOrderStatisticsInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
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

public class QueryWaybillOrderStatisticsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWaybillOrderStatisticsInfoResponseBody?

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
            var model = QueryWaybillOrderStatisticsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseResourceRequest : Tea.TeaModel {
    public var billId: String?

    public var isDisplayPool: Bool?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.isDisplayPool != nil {
            map["IsDisplayPool"] = self.isDisplayPool!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("IsDisplayPool") && dict["IsDisplayPool"] != nil {
            self.isDisplayPool = dict["IsDisplayPool"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class ReleaseResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ReleaseResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseResourceResponseBody?

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
            var model = ReleaseResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TestTtsRingToneRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tts: String?

    public var voiceSpeed: String?

    public var voiceStyle: String?

    public var voiceType: String?

    public var voiceVolume: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tts != nil {
            map["Tts"] = self.tts!
        }
        if self.voiceSpeed != nil {
            map["VoiceSpeed"] = self.voiceSpeed!
        }
        if self.voiceStyle != nil {
            map["VoiceStyle"] = self.voiceStyle!
        }
        if self.voiceType != nil {
            map["VoiceType"] = self.voiceType!
        }
        if self.voiceVolume != nil {
            map["VoiceVolume"] = self.voiceVolume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tts") && dict["Tts"] != nil {
            self.tts = dict["Tts"] as! String
        }
        if dict.keys.contains("VoiceSpeed") && dict["VoiceSpeed"] != nil {
            self.voiceSpeed = dict["VoiceSpeed"] as! String
        }
        if dict.keys.contains("VoiceStyle") && dict["VoiceStyle"] != nil {
            self.voiceStyle = dict["VoiceStyle"] as! String
        }
        if dict.keys.contains("VoiceType") && dict["VoiceType"] != nil {
            self.voiceType = dict["VoiceType"] as! String
        }
        if dict.keys.contains("VoiceVolume") && dict["VoiceVolume"] != nil {
            self.voiceVolume = dict["VoiceVolume"] as! String
        }
    }
}

public class TestTtsRingToneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class TestTtsRingToneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestTtsRingToneResponseBody?

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
            var model = TestTtsRingToneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindResourceRequest : Tea.TeaModel {
    public var billId: String?

    public var bindIds: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.bindIds != nil {
            map["BindIds"] = self.bindIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("BindIds") && dict["BindIds"] != nil {
            self.bindIds = dict["BindIds"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class UnbindResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class UnbindResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindResourceResponseBody?

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
            var model = UnbindResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockResourceRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class UnlockResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class UnlockResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockResourceResponseBody?

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
            var model = UnlockResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateContactsRequest : Tea.TeaModel {
    public var billId: String?

    public var id: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateContactsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class UpdateContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateContactsResponseBody?

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
            var model = UpdateContactsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public var id: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var prodCode: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateGroupDetailResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class UpdateGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupDetailResponseBody?

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
            var model = UpdateGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupInfoRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var prodCode: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") && dict["PoolKey"] != nil {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateGroupInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Bool
        }
    }
}

public class UpdateGroupInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupInfoResponseBody?

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
            var model = UpdateGroupInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePoolNameRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var prodCode: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") && dict["PoolName"] != nil {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdatePoolNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class UpdatePoolNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePoolNameResponseBody?

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
            var model = UpdatePoolNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResRemarkRequest : Tea.TeaModel {
    public var billId: String?

    public var ownerId: Int64?

    public var prodCode: String?

    public var remark: String?

    public var resType: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billId != nil {
            map["BillId"] = self.billId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resType != nil {
            map["ResType"] = self.resType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillId") && dict["BillId"] != nil {
            self.billId = dict["BillId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResType") && dict["ResType"] != nil {
            self.resType = dict["ResType"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") && dict["SecretNo"] != nil {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class UpdateResRemarkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class UpdateResRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResRemarkResponseBody?

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
            var model = UpdateResRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateOrderRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var prodCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var data: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProdCode") && dict["ProdCode"] != nil {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
    }
}

public class ValidateOrderResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
            self.code = dict["Code"] as! String
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
            self.success = dict["Success"] as! String
        }
    }
}

public class ValidateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateOrderResponseBody?

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
            var model = ValidateOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
