//
//  ViewCodeConfiguration.swift
//  BaseProject
//
//  Created by Carlos Kimura on 03/11/22.
//

protocol ViewCodeConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeConfiguration {
    func configureViews() {}
    
    func applyViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}
