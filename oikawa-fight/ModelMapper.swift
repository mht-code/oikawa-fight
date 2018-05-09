//
//  ModelMapper.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/04/10.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

final class ModelMapper {

    let entity: EntityData = EntityData()

    func generateBusinessModel(entity: EntityData) -> BusinessModel {
        return BusinessModel(memberId: entity.memberId,
                             message: entity.message,
                             count: entity.count)
    }
    
}
