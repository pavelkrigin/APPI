//
//  DataStore.swift
//  APPI
//
//  Created by Pavel Krigin on 6.9.22..
//
// необходимо проверить
final class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "Илья", "Павел", "Павел", "Альбина"
    ]

    let surnames = [
        "Осипов", "Кригин", "Лазарев", "Петренко"
        
    ]
    
    
    let emails = [
        "ilya@mail.ru", "pavel@mail.ru", "pavel_l@mail.ru",
        "albina@mail.ru"
    ]
    
    let telegramms = [
        "https://t.me/OSIIOS", "https://t.me/Pavel_Krigin", "https://t.me/LazarevPavel", "https://t.me/AlbinaValet"
        
    ]
    
    let gitAccounts = [
        "OSIIOSdev", "pavelkrigin", "PashaLazarev", "AnioBom"
    ]
    
    private init() {}
}
