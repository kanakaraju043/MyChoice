import Foundation
struct Json4Swift_Base : Codable {
	let variants : Variants?

	enum CodingKeys: String, CodingKey {

		case variants
        
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		variants = try Variants(from: decoder)
	}

}
