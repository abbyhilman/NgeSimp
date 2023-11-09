import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vtuber_list/core.dart';

class VtuberDetailView extends StatefulWidget {
  final Map item;
  const VtuberDetailView({Key? key, required this.item}) : super(key: key);

  Widget build(context, VtuberDetailController controller) {
    controller.view = this;
    var now = DateFormat.yMMMMd().format(DateTime.now());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.6),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.6),
              child: const Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: const Alignment(-1, -1),
                      image: NetworkImage(
                        item["photo"],
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        item['vtuber_name'],
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Birthday",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        now.toString(),
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Debut Date",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        now.toString(),
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        item['description'],
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Video List",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) =>
                              const Card(
                            color: Colors.white,
                            shadowColor: Colors.black,
                            elevation: 0.8,
                            child: Center(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Buat Tempat Video'),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<VtuberDetailView> createState() => VtuberDetailController();
}
