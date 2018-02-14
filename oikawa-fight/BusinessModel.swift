//
//  BusinessModel.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/15.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

struct ProductBusinessModel {
    
    // image
    let mainImages: [String: String]
    let subImages: [String]
    let chipImages: [String: String]
    
    // Title
    let name: String
    let grenderName: String
    let productId: String
    
    /**
     * Price
     * Get Price from skus[].priceBase/pricePromo
     * let priceBase: Double,
     * let pricePromo: Double, TODO: Use PRICE API in future?
     */
    
    let currency: String
    let skus: [ProductSku]?
    
    //Description
    let catchCopy: String?
    let shortDescription: String?
    let longDescription: String?
    let composition: String
    
    //Color
    let colors: [ProductColor]?
    let representativeColorCode: String
    
    //Size
    let sizes: [ProductSize]?
    let sizeChartUrl: String?
    let sizeInformation: String?
    
    //Rate & Review
    let rating: ProductRating?
    let reviews: ProductReviews?  //If we load review like Twitter, make API for loading review.
    
    //New or End
    let salesEndDate: Int
    let salesStartDate: Int
    
    //Data for Next Recommend
    let subcategoryCode: String
    
    //    ======Candidate & Use in Detail?=======
    //    let plds: [CatalogPld?]
    //    let flags: [CatalogFlag?]
    //    let tags: [CatalogTah?]
    //    let unisexFlag: CatalogUnisexFlag?
    //    let designDetail: String?
    //    let washingInformation: String?
    //    let careInstruction: String?
    
    struct ProductColor {
        let displayCode: String
        let name: String
    }
    
    struct ProductSize {
        let displayCode: String
        let name: String
    }
    
    struct ProductSku {
        let color: ProductColor
        let cspId: String?
        let priceBase: Double?
        let pricePromo: Double?
        let skuId: String
        let size: ProductSize
    }
    
    struct ProductRating {
        let average: Int
        let totalCount: Int
        let fit: Int?
//        let stars: [ReviewStar]
    }
    
    /**
     * [WIP]
     * ProducReviewItem looks not enough. We want to get user's height/weight, but new api don't provide it.
     * https://www.uniqlo.com/ca/en/products/400727 (Use mobile)
     */
    
    struct ProductReviews {
        let currentCount: Int
        let items: [ProductReviewItem]
    }
    
    struct ProductReviewItem {
        let ageRange: ProductAgeRange?
        let comment: String
        let createDate: Int
        let fit: String?
        let location: String?
        let name: String?
        let rate: Int
        let recommendFlag: Bool
        let title: String?
    }
    
    enum ProductAgeRange {
        case age17orUnder
        case age18to24
        case age25to34
        case age35to44
        case age45to54
        case age55to64
        case age65orOver
    }
}

