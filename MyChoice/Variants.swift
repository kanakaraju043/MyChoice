import Foundation
struct Variants : Codable {
	let variant_groups : [Variant_groups]?
	let exclude_list : [[Exclude_list]]?

	enum CodingKeys: String, CodingKey {

		case variant_groups = "variant_groups"
		case exclude_list = "exclude_list"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		variant_groups = try values.decodeIfPresent([Variant_groups].self, forKey: .variant_groups)
		exclude_list = try values.decodeIfPresent([[Exclude_list]].self, forKey: .exclude_list)
	}

}
