import 'package:finapp/models/word.dart';
import 'package:finapp/size_config.dart';
import 'package:flutter/material.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('dict'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Theme.of(context).primaryColorLight,
                    onPressed: () {},
                    child: Text('FIN - ENG'),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Theme.of(context).primaryColorLight,
                    onPressed: () {},
                    child: Text('ENG -FIN'),
                  ),
                ],
              ),
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 80,
              height: SizeConfig.blockSizeHorizontal * 15,
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        fillColor: Theme.of(context).primaryColorLight,
                        filled: true,
                        hintText: 'Enter a  word',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 0.8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 0.8,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Theme.of(context).primaryColorLight,
                    onPressed: () {},
                    child: Text('SEARCH'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 80,
              height: SizeConfig.blockSizeVertical * 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColorLight,
                border:
                    Border.all(width: 2, color: Theme.of(context).accentColor),
              ),
              child: ListView.separated(
                itemCount: words.length,
                separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                  color: Theme.of(context).accentColor,
                ),
                itemBuilder: (BuildContext context, int index) {
                  Word word = words[index];
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              word.finnish,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              word.english,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
