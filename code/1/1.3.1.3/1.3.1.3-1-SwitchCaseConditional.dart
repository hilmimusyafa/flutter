void main() {
  // This status would come from an API
  String orderStatus = 'SHIPPED';

  switch (orderStatus) {
    case 'PENDING':
      print('Order is pending payment.');
      break;
    case 'PROCESSING':
      print('Order is being prepared by the seller.');
      break;
    case 'SHIPPED':
      print('Order is on its way to the destination.');
      break;
    case 'DELIVERED':
      print('Order has been delivered.');
      break;
    case 'CANCELLED':
      print('Order has been cancelled.');
      break;
    default:
      print('Unknown order status: $orderStatus');
  }
}