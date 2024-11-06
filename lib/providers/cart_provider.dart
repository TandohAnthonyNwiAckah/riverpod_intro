import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_intro/model/product.dart';

part 'cart_provider.g.dart';

// Notifier Providers
// use when you need to update the state & notify consumers

// class CartNotifier extends Notifier<Set<Product>> {
@riverpod
class CartNotifier extends _$CartNotifier {
  // initial state
  // @override
  // Set<Product> build() {
  //   return const {
  //     Product(
  //         id: '4',
  //         title: 'Red Backpack',
  //         price: 14,
  //         image: 'assets/products/backpack.png'),
  //   };
  // }
  @override
  Set<Product> build() {
    return {};
  }

  // methods to update state
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

// Manually created provider
// final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
//   return CartNotifier();
// });

@riverpod
int cartTotal(ref) {
  final cartProducts = ref.watch(cartNotifierProvider);

  int total = 0;

  for (Product product in cartProducts) {
    total += product.price;
  }

  return total;
}
