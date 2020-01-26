//
//  CoinManager.swift
//  byte-coin
//
//  Created by Nguyen Xuan on 1/26/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import Foundation

protocol CoinMangerDelegate {
    
    func didUpdateCoinPrice(_ coinManager: CoinManager, coin: Double)
    
    func didFailWithError(error: Error)
    
}

struct CoinManager {
    var delegate: CoinMangerDelegate?
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        let url = "\(baseURL)\(currency)"
        performRequest(with: url)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string:urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let coinPrice = self.parseJSON(safeData) {
                        self.delegate?.didUpdateCoinPrice(self, coin: coinPrice)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decodeData.last
            
            return lastPrice
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
