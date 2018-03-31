
import Foundation
struct Variations : Codable {
	let name : String?
	let price : Int?
	let defaultVariantion : Int?
	let id : Int?
	let inStock : Int?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case price = "price"
		case defaultVariantion = "default"
		case id = "id"
		case inStock = "inStock"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		price = try values.decodeIfPresent(Int.self, forKey: .price)
		defaultVariantion = try values.decodeIfPresent(Int.self, forKey: .defaultVariantion)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		inStock = try values.decodeIfPresent(Int.self, forKey: .inStock)
	}

}
