import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;

class LinkPreview extends StatefulWidget {
  final String url;

  const LinkPreview({super.key, required this.url});

  @override
  State<LinkPreview> createState() => _LinkPreviewState();
}

class _LinkPreviewState extends State<LinkPreview> {
  String? title;
  String? description;
  String? imageUrl;
  bool isLoading = true;
  bool isError = false;

  @override
  void initState() {
    super.initState();
    fetchMetadata();
  }

  Future<void> fetchMetadata() async {
    print("here");
    try {
      final response = await http.get(
          Uri.parse(widget.url),
        headers: {
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36"
        },
      );

      print(response);
      if (response.statusCode == 200) {
        var document = htmlParser.parse(response.body);
        setState(() {
          title = _getMetaContent(document, "og:title") ?? "No Title Found";
          description = _getMetaContent(document, "og:description") ?? "No Description";
          imageUrl = _getMetaContent(document, "og:image");
          isLoading = false;
        });
      } else {
        setState(() {
          isError = true;
          isLoading = false;
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        isError = true;
        isLoading = false;
      });
    }
  }

  String? _getMetaContent(var document, String property) {
    var metaTag = document.querySelector('meta[property="$property"]') ??
        document.querySelector('meta[name="$property"]');
    return metaTag?.attributes['content'];
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (isError) {
      return const Text("Error fetching preview.");
    }

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageUrl != null)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(imageUrl!, width: double.infinity, height: 150, fit: BoxFit.cover),
            ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title ?? "Title not available", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 5),
                Text(description ?? "No description available", maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
