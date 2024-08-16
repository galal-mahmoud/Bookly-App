import 'package:bookly_app_v1/core/functions/show_snackBar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUlr(context, {required String? url,required String title}) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, title);
    }
  }
}

