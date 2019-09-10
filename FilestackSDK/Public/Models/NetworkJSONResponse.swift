//
//  NetworkJSONResponse.swift
//  FilestackSDK
//
//  Created by Ruben Nine on 7/17/17.
//  Copyright © 2017 Filestack. All rights reserved.
//

import Alamofire
import Foundation

/**
 This object represents a network JSON response.
 */
@objc(FSNetworkJSONResponse) public class NetworkJSONResponse: NSObject {
    // MARK: - Properties

    /// The URL request sent to the server.
    @objc public let request: URLRequest?

    /// The server's response to the URL request.
    @objc public let response: HTTPURLResponse?

    /// The JSON returned by the server.
    @objc public let json: [String: Any]?

    /// Returns the associated error value if the result if it is a failure, `nil` otherwise.
    @objc public var error: Error?

    // MARK: - Lifecycle Functions

    internal init(with dataResponse: DataResponse<Any>) {
        request = dataResponse.request
        response = dataResponse.response

        if let data = dataResponse.data {
            json = (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
        } else {
            json = nil
        }

        error = dataResponse.error

        super.init()
    }

    internal init(with error: Error) {
        request = nil
        response = nil
        json = nil
        self.error = error

        super.init()
    }
}

extension NetworkJSONResponse {
    // MARK: - CustomStringConvertible

    /// Returns a `String` representation of self.
    public override var description: String {
        return "(request: \(String(describing: request))," +
            "response: \(String(describing: response)), " +
            "json: \(String(describing: json)), " +
            "error: \(String(describing: error)))"
    }
}
