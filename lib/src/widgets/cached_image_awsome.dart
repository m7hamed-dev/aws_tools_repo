// import 'package:awsome_tools/awsome_tools.dart';
// import 'package:flutter/material.dart';

// class CachedImageAwsome extends StatelessWidget {
//   const CachedImageAwsome({
//     super.key,
//     this.imageUrl,
//     this.height,
//     this.width,
//     this.shape = BoxShape.rectangle,
//   });
//   final String? imageUrl;
//   final double? height, width;
//   final BoxShape shape;
//   final Widget Function(BuildContext context, String url) placeholder;

//   ///
//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: imageUrl ?? "http://via.placeholder.com/200x150",
//       height: height,
//       width: width,
//       imageBuilder: (context, imageProvider) => Container(
//         height: height,
//         width: width,
//         decoration: BoxDecoration(
//           borderRadius: shape == BoxShape.circle
//               ? null
//               : configAwsome.defaultBorderRadius,
//           shape: shape,
//           image: DecorationImage(
//             image: imageProvider,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       placeholder: placeholder,
//       // placeholder: (context, url) => const Placeholder(),
//       errorWidget: (context, url, error) => const Icon(Icons.error),
//     );
//   }
// }



// // class LoadingImageWidget extends StatelessWidget {
// //   const LoadingImageWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       // height: 100.0,
// //       // width: 100.0,
// //       decoration: const BoxDecoration(
// //         image: DecorationImage(
// //           image: AssetImage(imagePlaceholder),
// //           fit: BoxFit.cover,
// //           // colorFilter: ColorFilter.mode(
// //           //   Colors.red,
// //           //   BlendMode.colorBurn,
// //           // ),
// //         ),
// //       ),
// //     );
// //   }
// // }
