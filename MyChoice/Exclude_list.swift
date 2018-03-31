
import Foundation
struct Exclude_list : Codable {
	let group_id : Int?
	let variation_id : Int?

	enum CodingKeys: String, CodingKey {

		case group_id = "group_id"
		case variation_id = "variation_id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		group_id = try values.decodeIfPresent(Int.self, forKey: .group_id)
		variation_id = try values.decodeIfPresent(Int.self, forKey: .variation_id)
	}

}
