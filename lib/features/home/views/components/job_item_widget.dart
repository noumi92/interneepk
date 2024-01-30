import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';
import '../../models/job.dart';

class JobItemWidget extends StatelessWidget {
  final Job job;
  const JobItemWidget({
    super.key, required this.job,
  });

  @override
  Widget build(BuildContext context) {
    print("imageUrl");
    print(job.imageUrl);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
            color: Colors.grey[250]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            SizedBox(
              width: NHelpers.getScreenWidth()*0.85,
              child: Image(image: NetworkImage(job.imageUrl.toString()),),
            ),
            SizedBox(height: 8,),
            SizedBox(
              child: Text(job.title.toString(), textAlign: TextAlign.start, style: Theme.of(context).textTheme.headlineMedium,),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.pin_drop_outlined),
                      Text(job.loc.toString(),textAlign: TextAlign.left, style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                ),
                SizedBox(width: 16,),
                SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.watch_later_outlined),
                      Text(job.duration.toString(),textAlign: TextAlign.left, style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, child: Text("Apply")),
            )
          ],
        ),
      ),
    );
  }
}