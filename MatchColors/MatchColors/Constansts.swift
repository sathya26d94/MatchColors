//
//  Constansts.swift
//  MatchColors
//
//  Created by SaTHYa on 14/03/17.
//  Copyright © 2017 SaTHYa. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    struct FontName {
        static let Icomoon = "icomoon"
    }
    
    struct FontSize {
        static let SmallIcon: CGFloat = 18
        static let RegularIcon: CGFloat = 28
        static let VeryLargeIcon: CGFloat = 60
        static let SmallText: CGFloat = 14
        static let RegularText: CGFloat = 16
        static let LargeText: CGFloat = 18
        static let VeryLargeText: CGFloat = 40
        static let ButtonTitleText: CGFloat = 16
        static let LargeButtonTitleText: CGFloat = 28
    }
    
    struct Color {
        static let Black = UIColor.black
        static let White = UIColor.white
        static let Clear = UIColor.clear
        static let AppTheme = UIColor(red: 35/255, green: 77/255, blue: 109/255, alpha: 1.0)
        static let AppThemeLowAlpha = UIColor(red: 35/255, green: 77/255, blue: 109/255, alpha: 0.8)
        static let CellHighlight = UIColor.darkGray
        static let PrimaryButtonNormal = UIColor(red: 59/255, green: 159/255, blue: 243/255, alpha: 1.0)
        static let PrimaryButtonDisabled = UIColor(red: 59/255, green: 159/255, blue: 243/255, alpha: 0.2)
        static let SecondaryBarButtonNormal = UIColor.white
        static let SecondaryBarButtonDisabled = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.2)
        static let SecondaryButtonNormal = UIColor(red: 206/255.0, green: 213/255.0, blue: 219/255.0, alpha: 1.0)
        static let titleTextColor = UIColor.white
        static let Error = UIColor(red: 239/255, green: 72/255, blue: 54/255, alpha: 1.0)
        static let Success = UIColor(red: 106/255, green: 192/255, blue: 57/255, alpha: 1.0)
        static let BackgroundOverlay = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.7)
        static let ProductScanOnlyOverlay = UIColor(red:215/255, green:228/255, blue:236/255, alpha:0.92)
        static let TableSection = UIColor(red: 220/255, green: 238/255, blue: 242/255, alpha: 1.0)
        static let Hold = UIColor(red: 255/255, green: 210/255, blue: 0/255, alpha: 1.0)
        static let BaseBackground = UIColor(red:215/255, green:228/255, blue:236/255, alpha:1.0)
        static let Border = UIColor(red:122/255, green:156/255, blue:181/255, alpha:1.0)
        static let MasterBaseBackground = UIColor(red:240/255, green:245/255, blue:248/255, alpha:1.0)
        static let OffCanvas = UIColor(red:28/255, green:45/255, blue:58/255, alpha:1.0)
        static let CartTopBackground = UIColor(red:122/255, green:156/255, blue:181/255, alpha:1.0)
        static let WhiteTableCellSeparator = UIColor(red:215/255, green:228/255, blue:236/255, alpha:1.0)
        static let DetailText = UIColor(red: 115/255.0, green: 115/255.0, blue: 115/255.0, alpha: 1.0)
        static let LogoutButton = UIColor(red: 18/255.0, green: 30/255.0, blue: 38/255.0, alpha: 1.0)
        static let cashDrawer = UIColor(red:59/255.0, green:159/255.0, blue:243/255.0, alpha: 1.0)
    }
    
    struct String {
        static let DataChangeNotification = "DataChangeNotification"
        static let SessionOpenMessage = "Session is already opened"
        static let SessionClosedMessage = "Session is already closed"
        static let RegisterKeyExpired = "register is inactive or not available"
        static let ServerShutDownMessage = "Internal server error while processing request"
        static let ServiceUnavailableMessage = "Request failed: service unavailable (503)"
        static let AutoSyncKey = "PerformAutoSync"
        static let AutoSessionCreatedKey = "AutoSessionCreated"
        static let VersionApiPath = "/webreporter/ProductVersionList"
        static let LoginInfoPath = "/loginInfo"
        static let itunesLink = "https://itunes.apple.com/in/app//id1130658027?mt=8"
        static let AcceptableSymbols = "~`!@#$%^&*()_+=-{}|\\][:;?><,./ "
    }
    
    struct Parameters {
        static let DeviceRegsiterationKey = "?product=SQ"
        static let DeviceRegsiterationQuery = "?q=registerKey=="
        static let OpenSessionQuery = "?q=status==Open,registerKey=="
        static let UnRegisteredCounterQuery = "?q=status==Inactive,addonType==1"
    }
    
    struct TableName {
        static let Products = "Products"
        static let ProductEanCodeDetails = "ProductsEanCodeDetails"
        static let ProductSkuDetails = "ProductsSkuDetails"
        static let Sales = "Sales"
        static let SaleProducts = "SalesProducts"
        static let SaleCustomers = "SalesCustomers"
        static let SaleTaxes = "SalesTaxes"
        static let SaleProductTaxes = "SalesProductTaxes"
        static let SalePayments = "SalesPayments"
        static let UiLayouts = "UiLayouts"
        static let TaxFormulas = "TaxFormulas"
        static let Taxes = "Taxes"
        static let Customers = "Customers"
        static let Categories = "Categories"
        static let Sessions = "Sessions"
        static let SessionCashTransactions = "SessionCashTransactions"
        static let Registers = "Registers"
        static let Configurations = "Configurations"
        static let BusinessFormulas = "BusinessFormulas"
        static let ClientAudits = "ClientAudits"
        static let ClientAuditDetails = "ClientAuditsDetails"
        static let Organizations = "Organizations"
    }
    
    struct Spacing {
        static let BorderWidth: CGFloat = 1
        static let Edges: CGFloat = 10
        static let ProductGridScreenRatio = 0.6
        static let CartCustomerViewHeight: CGFloat = 80
        static let SplitCartCellHeight: CGFloat = 60
        static let NormalCellHeight: CGFloat = 50
        static let LargerCellHeight: CGFloat = 70
        static let CornerRadius: CGFloat = 4
        static let HalfValue: CGFloat = 0.5
        static let DefaultTableHeight: CGFloat = 400
        static let ModalHeightInsets: CGFloat = 130
        static let MenuViewWidth: CGFloat = 180
        static let IconButtonWidth: CGFloat = 40
        static let StandardButtonWidth: CGFloat = 60
        static let StandardButtonHeight: CGFloat = 40
        static let CatgoriesBaseViewHeight: CGFloat = 40
        static let ProductsScanOnlyIcon: CGFloat = 120
        static let SyncButtonWidth: CGFloat = 200
        static let SaleProductViewControllerWidth: CGFloat = 250
        static let ModalTopBarHeight: CGFloat = 44
        static let StandardTextFieldHeight: CGFloat = 40
    }
    
    struct Number {
        static let RequestTimeoutInterval: Int32 = 30
        static let AnimateTiming: TimeInterval = 0.1
        static let FetchBatchSize: Int = 250
        static let FetchLimit: Int = 250
        static let DebounceTiming: TimeInterval = 0.3
        static let CustomerNotSavedId = -1
        static let CustomerSavedId = 0
        static let PostBatchSize: Int = 250
        static let SearchCharacterLimit: Int = 3
    }
    
    struct DataLength {
        static let Fifty: Int = 50
        static let Hundred: Int = 100
        static let Mobile: Int = 15
        static let Quantity: Int = 5
    }
    
    struct FileName {
        static let LocalStorage = "localStorage.plist"
    }
    
    struct SellQuick {
        static let WebReporterCompatableVersion: Double = 5036
        static let SKUCode: Int = 521
        static let IsProduction: Bool = false
    }
    
    struct Tag {
        static let ScreenOverlay = 2000
        static let ProductScanOnlyOverlay = 2001
        static let ExpressTender = 2002
        static let CategoriesStart = 3000
    }
    
    struct Printer {
        static let NoPrinterAvailable = "No Printer Selected"
        static let salePrint = "SalePrint"
        static let sessionPrint = "SessionPrint"
    }
    
    struct FieldType {
        static let Number = "Number"
        static let Currency = "Currency"
        static let Text = "Text"
        static let DateTime = "DateTime"
        static let Date = "Date"
        static let Time = "Time"
    }
    
    struct Status {
        static let Pending = "Pending"
        static let Offline = "Offline"
        static let Active = "Active"
        static let Hold = "Hold"
        static let Closed = "Closed"
        static let Open = "Open"
        static let Inactive = "Inactive"
    }
    
    static let ColorArray: [UIColor] = [UIColor(red: 68/255, green: 108/255, blue: 179/255, alpha: 1.0),
        UIColor(red: 220/255, green: 198/255, blue: 224/255, alpha: 1.0),
        UIColor(red: 148/255, green: 171/255, blue: 255/255, alpha: 1.0),
        UIColor(red: 129/255, green: 207/255, blue: 224/255, alpha: 1.0),
        UIColor(red: 3/255, green: 201/255, blue: 169/255, alpha: 1.0),
        UIColor(red: 233/255, green: 212/255, blue: 96/255, alpha: 1.0),
        UIColor(red: 108/255, green: 122/255, blue: 137/255, alpha: 1.0),
        UIColor(red: 129/255, green: 10/255, blue: 91/255, alpha: 1.0),
        UIColor(red: 241/255, green: 169/255, blue: 160/255, alpha: 1.0),
        UIColor(red: 144/255, green: 198/255, blue: 149/255, alpha: 1.0)
    ]
}
