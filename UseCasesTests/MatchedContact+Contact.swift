//
//  MatchedContact+Contact.swift
//  Telephone
//
//  Copyright © 2008-2016 Alexey Kuznetsov
//  Copyright © 2016-2018 64 Characters
//
//  Telephone is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Telephone is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import UseCases

extension MatchedContact {
    init(contact: Contact, phoneIndex index: Int) {
        let phone = contact.phones[index]
        self.init(name: contact.name, address: .phone(number: phone.number, label: phone.label))
    }

    init(contact: Contact, emailIndex index: Int) {
        let email = contact.emails[index]
        self.init(name: contact.name, address: .email(address: email.address, label: email.label))
    }
}