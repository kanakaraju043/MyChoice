import Foundation
struct Variant_groups : Codable {
	let group_id : Int?
	let name : String?
	let variations : [Variations]?

	enum CodingKeys: String, CodingKey {

		case group_id = "group_id"
		case name = "name"
		case variations = "variations"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		group_id = try values.decodeIfPresent(Int.self, forKey: .group_id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		variations = try values.decodeIfPresent([Variations].self, forKey: .variations)
	}

}
