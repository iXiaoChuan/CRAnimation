//
//  CRRefreshViewController.swift
//  CRAnimation
//
// **************************************************
// *                                  _____         *
// *         __  _  __     ___        \   /         *
// *         \ \/ \/ /    / __\       /  /          *
// *          \  _  /    | (__       /  /           *
// *           \/ \/      \___/     /  /__          *
// *                               /_____/          *
// *                                                *
// **************************************************
//  Github  :https://github.com/imwcl
//  HomePage:http://imwcl.com
//  CSDN    :http://blog.csdn.net/wang631106979
//
//  Created by 王崇磊 on 16/9/14.
//  Copyright © 2016年 王崇磊. All rights reserved.
//
// @class CRRefreshViewController
// @abstract CRRefreshViewController
// @discussion CRRefreshViewController
//

import UIKit

class CRRefreshViewController: CRProductionBaseVC {

    var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        return table
    }()
    
    var count: Int = 10
    
    var refresh: Refresh
    
    init(refresh: Refresh) {
        self.refresh = refresh
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: Override
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createUI()
    }
    
    override func createUI() {
        addTopBar(withTitle: refresh.model.title)
        super.createUI()
        configView()
    }
    
    //MARK: Public Methods
    func configView() {
        tableView.frame = .init(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height)
        tableView.register(UINib.init(nibName: "CRRefreshTableViewCell", bundle: nil), forCellReuseIdentifier: "CRRefreshTableViewCell")
        contentView.addSubview(tableView)
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.cr.addHeadRefresh(animator: refresh.header.commont()) { [weak self] in
            print("开始刷新")
            DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: {
                self?.count = 10
                self?.tableView.reloadData()
                self?.tableView.cr.endHeaderRefresh()
                self?.tableView.cr.resetNoMore()
            })
        }
        
        tableView.cr.beginHeaderRefresh()
        
        tableView.cr.addFootRefresh(animator: refresh.footer.commont()) { [weak self] in
            print("开始加载")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                self?.count += 10
                self?.tableView.reloadData()
                self?.tableView.cr.noticeNoMoreData()
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK: - Table view data source
extension CRRefreshViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CRRefreshTableViewCell", for: indexPath) as! CRRefreshTableViewCell
        return cell
    }
}
