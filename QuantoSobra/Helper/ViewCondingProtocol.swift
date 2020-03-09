//
//  ViewCondingProtocol.swift
//  QuantoSobra
//
//  Created by ranieri.f.aguiar on 09/03/20.
//  Copyright © 2020 ranieri.f.aguiar. All rights reserved.
//

protocol ViewCondingProtocol {

    func buildHierachy()
    func buildContraints()
    func buildAdditionalConfiguration()

    func setupView()
}

extension ViewCondingProtocol {

    func setupView() {
        buildHierachy()
        buildContraints()
        buildAdditionalConfiguration()
    }
}
