import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanadprojecttest/Elegance/orders/cubit/orders_cubit.dart';
import 'package:sizer_pro/sizer.dart';

class CardModel {
  final String numb;
  final DateTime orderDate;
  final DateTime dueDate;
  final int Quantity;
  final int Subtotal;
  final String TrackingNumber;
  final String KingOfOrder;
  CardModel(
      {required this.Quantity,
      required this.Subtotal,
      required this.TrackingNumber,
      required this.numb,
      required this.orderDate,
      required this.KingOfOrder,
      required this.dueDate});
}

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});
  @override
  Widget build(BuildContext context) {
    BuildOrderCard(CardModel card) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 11),
                  blurRadius: 24,
                  color: Colors.black.withOpacity(.09))
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Order #${card.numb}",
            style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 8.sp,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      offset: const Offset(0, 4),
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 4)
                ]),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Expanded(
                // flex: 6,
                child: Row(
                  children: [
                    Text(
                      "Order date",
                      style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          color: Color(0xFF828282),
                          fontSize: 5.5.sp),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "${card.orderDate.day}/${card.orderDate.month}/${card.orderDate.year}",
                      style: TextStyle(color: Colors.black, fontSize: 5.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Expanded(
                // flex: 4,
                child: Row(
                  children: [
                    Text(
                      "due date",
                      style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          color: Color(0xFF828282),
                          fontSize: 5.5.sp),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "${card.dueDate.day}/${card.dueDate.month}/${card.dueDate.year}",
                      style: TextStyle(color: Colors.black, fontSize: 5.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // flex: 6,
                child: Row(
                  children: [
                    const Text(
                      "Quantity:",
                      style: TextStyle(
                          fontFamily: 'Tenor Sans', color: Color(0xFF828282)),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "${card.Quantity}",
                      style: const TextStyle(
                          fontFamily: 'Tenor Sans', color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Expanded(
                // flex: 4,
                child: Row(
                  children: [
                    const Text(
                      "Subtotal",
                      style: TextStyle(
                          fontFamily: 'Tenor Sans', color: Color(0xFF828282)),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "${card.Subtotal}\$",
                      style: const TextStyle(
                          fontFamily: 'Tenor Sans', color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              const Text(
                "Tracking number:",
                style: TextStyle(
                    fontFamily: 'Tenor Sans', color: Color(0xFF828282)),
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "${card.TrackingNumber}",
                style: const TextStyle(
                    fontFamily: 'Tenor Sans', color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                card.KingOfOrder,
                style: TextStyle(
                    fontFamily: 'Tenor Sans',
                    color: card.KingOfOrder == "Pending"
                        ? Color(0xFFD57676)
                        : Color(0xFF76D5AD),
                    fontSize: 8.sp),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(.25))
                    ],
                    border: Border.all(color: const Color(0xFF434343))),
                child: const Text(
                  "Details",
                  style: TextStyle(
                    fontFamily: 'Tenor Sans',
                  ),
                ),
              )
            ],
          )
        ]),
      );
    }

    List<CardModel> Pending = [
      CardModel(
          KingOfOrder: 'Pending',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20)),
      CardModel(
          KingOfOrder: 'Pending',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20)),
      CardModel(
          KingOfOrder: 'Pending',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20))
    ];
    List<CardModel> Delivered = [
      CardModel(
          KingOfOrder: 'Delivered',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20)),
      CardModel(
          KingOfOrder: 'Delivered',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20)),
      CardModel(
          KingOfOrder: 'Delivered',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20)),
      CardModel(
          KingOfOrder: 'Delivered',
          Quantity: 2,
          Subtotal: 40,
          TrackingNumber: 'lskfdlsj',
          numb: '1580',
          orderDate: DateTime(2023, 9, 2),
          dueDate: DateTime(2023, 9, 20)),
    ];
    return BlocConsumer<OrdersCubit, OrdersState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = OrdersCubit.get(context);
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.menu,
                          size: 7.w,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 8.w,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "My Orders",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.sp),
                    )),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(Icons.favorite)),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  children: [
                    const Divider(),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            cubit.changeKingOfOrder('Pending');
                          },
                          child: Container(
                            padding: EdgeInsets.only(bottom: 1.h),
                            width: 44.w,
                            decoration: BoxDecoration(
                                border: cubit.kindOfOrder == "Pending"
                                    ? const Border(
                                        bottom: BorderSide(
                                            color: Color(0xFF3D3D3D), width: 1))
                                    : const Border()),
                            child: Text(
                              "Pending",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontSize: 10.sp,
                                  color: cubit.kindOfOrder == "Pending"
                                      ? const Color(0xFF3D3D3D)
                                      : const Color(0xFF9B9B9B),
                                  shadows: [
                                    Shadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        color: Colors.black.withOpacity(.25))
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            cubit.changeKingOfOrder('Delivered');
                          },
                          child: Container(
                            padding: EdgeInsets.only(bottom: 1.h),
                            width: 44.w,
                            decoration: BoxDecoration(
                                border: cubit.kindOfOrder == "Delivered"
                                    ? const Border(
                                        bottom: BorderSide(
                                            color: Color(0xFF3D3D3D), width: 1))
                                    : const Border()),
                            child: Text(
                              "Delivered",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontSize: 10.sp,
                                  color: cubit.kindOfOrder == "Delivered"
                                      ? const Color(0xFF3D3D3D)
                                      : const Color(0xFF9B9B9B),
                                  shadows: [
                                    Shadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        color: Colors.black.withOpacity(.25))
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                // height: 80.h,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 2.h,
                    ),
                    // shrinkWrap: true,
                    itemCount: cubit.kindOfOrder == "Pending"
                        ? Pending.length
                        : Delivered.length,
                    itemBuilder: (context, index) => BuildOrderCard(
                        cubit.kindOfOrder == "Pending"
                            ? Pending[index]
                            : Delivered[index]),
                    // children: [
                    //   BuildOrderCard(CardModel(
                    //       KingOfOrder: 'Pending',
                    //       Quantity: 2,
                    //       Subtotal: 40,
                    //       TrackingNumber: 'lskfdlsj',
                    //       numb: '1580',
                    //       orderDate: DateTime(2023, 9, 2),
                    //       dueDate: DateTime(2023, 9, 20)))
                    // ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
