
class Item {
     int? id;
     String? name;
     String? brand;
     String? category;
     List<dynamic>? imageUrl;
     double? minPrice;
     double? maxPrice;
     int? totalComment;
     String? createdDate;
     int? inStock;
     List<dynamic>? tags;
     String? description;

     Item({
        this.id,
         this.name,
         this.brand,
         this.category,
         this.imageUrl,
         this.minPrice,
         this.maxPrice,
         this.totalComment,
         this.createdDate,
         this.inStock,
        this.tags ,
         this.description,
      });

      factory Item.fromJson(Map<String, dynamic> json) {
        return Item(
              id: json['id'],
              name: json['name'],
              brand: json['brand'],
              category: json['category'],
              imageUrl: json['imageUrl'],
              minPrice: json['minPrice'],
              maxPrice: json['maxPrice'],
              totalComment: json['totalComment'],
              createdDate: json['createdDate'],
              inStock: json['inStock'],
              tags: json['tags'],
              description: json['description']
            
        );
      }


      static List<Item> fromJsonList(dynamic jsonList) {
        final transactionDetailsList = <Item>[];
        if (jsonList == null) return transactionDetailsList;

        if (jsonList is List<dynamic>) {
          for (final json in jsonList) {
            transactionDetailsList.add(
              Item.fromJson(json),
            );
          }
        }

        return transactionDetailsList;
      }


      Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['brand'] = this.brand;
        data['category'] = this.category;
        data['imageUrl'] = this.imageUrl;
        data['minPrice'] = this.minPrice;
        data['totalComment'] = this.totalComment;
        data['createdDate'] = this.createdDate;
        data['inStock'] = this.inStock;
        data['tags'] = this.tags;
        data['description'] = this.description;
        return data;
      }
} 