//
//  ViewController.swift
//  Case2
//
//  Created by Belén on 29/03/2020.
//  Copyright © 2020 IWEB. All rights reserved.
//

import UIKit
import web3swift

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var lessButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var moreButton: UIButton!
    
    var contract: web3.web3contract!
    var account: EthereumAddress!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let endpoint = "http://127.0.0.1:7545"
        do {
            let web3 = try Web3.new(URL(string: endpoint)!)
            print("Web3 configurado")

            let path = Bundle.main.path(forResource: "contractAbi", ofType: "json")!
            let data = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let contractAbi = String(data: data, encoding: String.Encoding.utf8)
            
            let address: EthereumAddress = EthereumAddress("0xc481b3c43AF7e98c892995a48a1ebbAdd5ABaCb2", ignoreChecksum: true)!
            let abiVersion: Int = 2
            self.contract = web3.contract(contractAbi!, at: address, abiVersion: abiVersion)
            print("Contrato configurado")
            
            self.account = EthereumAddress("0x3fdF9440034DF16de40D8A5Ca32995EcA1949543", ignoreChecksum: true)!
            print("Cuenta configurada: \(self.account.address)")

        } catch {
            print("No puedo conectarme a Ganache")
        }
        self.getValor()
    }
    
    func getValor() {
        var result = try! self.contract.read("valor")!.call()
        let valor = result.popFirst()!.value
        print("Valor obtenido: \(valor)")
        label.text = "\(valor)"
    }
    
    @IBAction func incr(_ sender: Any) {
        do {
            var options = TransactionOptions.defaultOptions
            options.from = self.account
            _ = try self.contract.write("incr", transactionOptions: options)!.send()
            print("Se ha incrementado 1 ud.")
            getValor()
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    @IBAction func decr(_ sender: Any) {
        do {
            var options = TransactionOptions.defaultOptions
            options.from = self.account
            _ = try self.contract.write("decr", transactionOptions: options)!.send()
            print("Se ha decrementado 1 ud.")
            getValor()
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        do {
            var options = TransactionOptions.defaultOptions
            options.from = self.account
            _ = try self.contract.write("reset", transactionOptions: options)!.send()
            print("Se ha restablecido el valor a 0.")
            getValor()
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
}
