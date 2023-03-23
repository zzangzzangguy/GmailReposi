//
//  ViewController.swift
//  Gmail
//
//  Created by 김기현 on 2023/03/14.
//

import UIKit

struct Mail {
    let nametitle: String
    let title: String
    let Emailtitle: String
    let timetitle: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView = UITableView(frame: .zero)

    let mail = [
        Mail(nametitle: "Medium Daily Digest", title: "The lovelines of Paris seems somehow sadly gay The glory that was Rome is of another day", Emailtitle: "I've veen terribly alone and forgotten in Manhattan I'm going home to my city by the Bay I left my heart in San Francisco High on a hill", timetitle: "08:00"),
        Mail(nametitle: "안녕하세요", title: "감사해요", Emailtitle: "잘있어요", timetitle: "어제"),
        Mail(nametitle: "다시 만나요", title: "안녕하세요", Emailtitle: "감사해요", timetitle: "어제"),
        Mail(nametitle: "잘있어요", title: "다시만나요", Emailtitle: "정다웠던 우리", timetitle: "어제"),
        Mail(nametitle: "네임라벨", title: "타이틀라벨", Emailtitle: "텍스트라벨", timetitle: "bbb"),

    ]

    




    


    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setConfigure()
        setConstraints()
    }
    private func setView() {
        view.addSubview(tableView)
    }
    private func setConstraints() {

        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func setConfigure() {

        navigationController?.navigationBar.prefersLargeTitles = true
        title = "받은 편지함"
        tableView.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension




        tableView.register(
            GmailTableViewCell.self, forCellReuseIdentifier: "GmailTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mail.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return mail.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "GmailTableViewCell",
            for: indexPath) as! GmailTableViewCell
        cell.nameLabel.text = mail[indexPath.row].nametitle
        cell.titleLabel.text = mail[indexPath.row].title
        cell.mailtextLabel.text = mail[indexPath.row].Emailtitle
        cell.timeLabel.text = mail[indexPath.row].timetitle
        cell.backgroundColor = .systemBackground

        

        return cell
    }
    

}
