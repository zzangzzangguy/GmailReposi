//
//  GmailTableViewCell.swift
//  Gmail
//
//  Created by 김기현 on 2023/03/14.
//

import UIKit
import SnapKit

class GmailTableViewCell: UITableViewCell {

    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 18)
        label.numberOfLines = 0

        return label
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemRed
        label.font = .systemFont(ofSize: 16)
        return label
    }()

    let mailtextLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemBlue
        label.numberOfLines = 2

        return label
    }()

    let timeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 11)
        label.textColor = .systemPink
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(mailtextLabel)
        contentView.addSubview(timeLabel)

        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(16)
        }



        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview()
        }

        mailtextLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom)
            make.left.right.equalTo(titleLabel)
            make.bottom.equalToSuperview().offset(-10)
        }
        timeLabel.snp.makeConstraints { make in
            make.right.equalToSuperview()
//            make.centerY.equalToSuperview()
            make.bottom.equalToSuperview().inset(70)

        }

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
