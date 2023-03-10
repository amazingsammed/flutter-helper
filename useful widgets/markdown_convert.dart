import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'markdowncodecolor.dart';

class MarkdownConvert extends StatelessWidget {
  String data;
  MarkdownConvert({Key? key, required this.data}) : super(key: key);
  TextStyle Stylerw = TextStyle(color: Colors.white);
  TextStyle Styler = TextStyle(color: Colors.cyan);
  TextStyle StylerH2 = TextStyle(color: Colors.cyan);
  TextStyle StylerH1 = TextStyle(color: Colors.yellow);
  TextStyle StylerH3 = TextStyle(color: Colors.cyan);
  TextStyle boldtext = TextStyle(color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Markdown(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      selectable: true,
      softLineBreak: true,
      builders: {
        'code': CodeElementBuilder(),
      },
      styleSheet: MarkdownStyleSheet(
        codeblockDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        blockquote: TextStyle(color: Colors.red),
        blockquoteDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Color(0xff282c34)),
        tableCellsDecoration: BoxDecoration(color: Colors.grey),
        tableHead: Styler,
        tableBody: Stylerw,
        tableBorder: TableBorder.all(color: Colors.black),
        tableHeadAlign: TextAlign.justify,
        //tableHeadAlign: TextAlign.justify,
        img: TextStyle(fontSize: 20),
        p: TextStyle(fontSize: 18, color: Colors.white),
        listBullet: TextStyle(color: Colors.white),
        em: Styler,
        strong: boldtext,
        del: Styler,
        checkbox: Styler,
        code: StylerH3,
        a: Styler,
        h1: StylerH1,
        h2: StylerH2,
        h3: StylerH3,
        h4: StylerH3,
        h5: StylerH3,
      ),
      data: data.toString().replaceAll('<br>', ''),
    );
  }
}
