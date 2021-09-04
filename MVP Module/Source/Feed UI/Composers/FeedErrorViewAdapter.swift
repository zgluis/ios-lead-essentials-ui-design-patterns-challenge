//
//  FeedErrorViewAdapter.swift
//  MVP
//
//  Created by Luis Zapata on 04-09-21.
//  Copyright © 2021 Essential Developer. All rights reserved.
//

import Foundation

final class FeedErrorViewAdapter: FeedErrorView {
	private weak var controller: FeedViewController?

	init(controller: FeedViewController) {
		self.controller = controller
	}

	func show() {
		controller?.errorView.show(message: Localized.Feed.connectionError)
	}

	func hide() {
		controller?.errorView.hideMessage()
	}
}