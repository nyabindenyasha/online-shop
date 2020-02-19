
import 'package:thenga_tenga/models/product-commodity.dart';

class CommodityCategory {

    int id;
    String name;
    String description;
    List<ProductCommodity> productsCommoditiesList;

    CommodityCategory(this.id, this.name, this.description, this.productsCommoditiesList);

  }