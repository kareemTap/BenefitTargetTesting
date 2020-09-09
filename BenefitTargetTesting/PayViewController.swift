//
//  PayViewController.swift
//  BenefitTargetTesting
//
//  Created by Kareem Ahmed on 9/9/20.
//  Copyright © 2020 Kareem Ahmed. All rights reserved.
//

import UIKit
import BenefitInAppSDK

public class PayViewController: UIViewController {

    var detailsLabel: UILabel = .init()
    var payButton: BPInAppButton = .init()
    var randomReference = 100000

    public override func viewDidLoad() {
        super.viewDidLoad()
        view = UIView()
        view.backgroundColor = .lightGray
        detailsLabel = UILabel()
        detailsLabel.numberOfLines = 0
        payButton = BPInAppButton()
        addLabelConstraints()
        self.payButton.delegate = self
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        fillPaymentDetails()
    }
    
    func addLabelConstraints() {
        view.addSubview(detailsLabel)
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailsLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 0),
            detailsLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: -50),
            detailsLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.trailingAnchor, multiplier: -50),
//            detailsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            detailsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            detailsLabel.widthAnchor.constraint(equalToConstant: 300),
            detailsLabel.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        view.addSubview(payButton)
        payButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            payButton.topAnchor.constraint(equalToSystemSpacingBelow: detailsLabel.bottomAnchor, multiplier: 10),
            payButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            payButton.widthAnchor.constraint(equalToConstant: 260),
            payButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func fillPaymentDetails() {
        self.generateReferenceId()
        detailsLabel.text = "appId: 4530082749\nSecretKey: 3l5e0cstdim11skgwoha8x9vx9zo0kxxi4droryjp4eqd\nAmount: 2\nCurrencyCode: 048\nMerchantId: 00000101\nMerchantName: Testing Tap\nMerchantCity: Sadad\nCountryCode: BH\nMerchantCategoryId: 4816\nReferenceId: \(randomReference)\nCallBackTag: tempBN"
    }
    
    func generateReferenceId() {
        randomReference = Int.random(in: 100000..<999999)
    }
}

extension PayViewController: BPInAppButtonDelegate {
    public func bpInAppConfiguration() -> BPInAppConfiguration! {
        let configuration = BPInAppConfiguration(appId: "4530082749", andSecretKey: "3l5e0cstdim11skgwoha8x9vx9zo0kxxi4droryjp4eqd", andAmount: "2", andCurrencyCode: "048", andMerchantId: "00000101", andMerchantName: "Testing Tap", andMerchantCity: "Sadad",
        andCountryCode: "BH", andMerchantCategoryId: "4816", andReferenceId: "\(randomReference)",
            andCallBackTag: "tempBN")
        return configuration
    }
}
