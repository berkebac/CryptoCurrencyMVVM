//
//  CryptoViewModel.swift
//  CryptoCurrencyMVVM
//
//  Created by Berke Baç on 30.04.2022.
//

import Foundation

struct CryptoListViewModel {
    //liste
    let cryptoList : [CryptoCurrency]
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoList.count
    }
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoList[index]
        return CryptoViewModel(crypto: crypto)
    }
    
}



struct CryptoViewModel {
    //tekil
    let crypto : CryptoCurrency
    
    var name : String {
        return self.crypto.currency
    }
    
    var price : String {
        return self.crypto.price
    }
}
