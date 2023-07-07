class Product {
  final String title;
  final double discountedPrice;
  final double originalPrice;
  final String imageUrl;

  Product({
    required this.title,
    required this.imageUrl,
    required this.discountedPrice,
    required this.originalPrice,
  });

  static List<Product> product = [
    Product(
        title: "Tandoori Chicken Legs - Pack",
        discountedPrice: 149,
        originalPrice: 399,
        imageUrl:
            "https://images.unsplash.com/photo-1567121938596-6d9d015d348b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dGFuZG9vcml8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
    Product(
        title: "Peri Peri Chicken Wings (250g Pack)",
        discountedPrice: 149,
        originalPrice: 290,
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRmRg1QrAbjyar4H9dikHgLV9F8MjbqpDA4g&usqp=CAU"),
    Product(
        title: "Yummy Boneless Chicken 65 - 350g pack",
        discountedPrice: 225,
        originalPrice: 299,
        imageUrl:
            "https://media.istockphoto.com/id/977297214/photo/indian-snack-chicken-65.jpg?s=2048x2048&w=is&k=20&c=aR-BQH_R4R1rnCZfiIQ5vMZAHqcpPPms7YnJUKYTSJs="),
    Product(
        title: "Mutton Boti / Trippe (400g Pack)",
        discountedPrice: 270,
        originalPrice: 500,
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcGXoSbDejiox_9FPxNMOgYO80RsbeHPh1lw&usqp=CAU"),
    Product(
        title: "Tilapia (Large) - Curry Cut (480g to 500g Pack)",
        discountedPrice: 270,
        originalPrice: 500,
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKCR4UOvmNkSbmAo0n3iY7dcRtnDmCUcssA&usqp=CAU"),
  ];
}
