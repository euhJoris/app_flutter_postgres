import 'package:flutter/material.dart';

class SystemContainer extends StatefulWidget {

  final String systemName;
  final int plantId;
  final int userIrrigationFrequency;
  final String systemMode;

  const SystemContainer({
    this.userIrrigationFrequency = 0,
    this.systemName ='',
    this.plantId = 0,
    this.systemMode ='',
    super.key
  });

  @override
  State<SystemContainer> createState() => _SystemContainerState();
}

class _SystemContainerState extends State<SystemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(widget.systemName)
            ],
          ),
          Row(
            children: [
              Text('${widget.plantId}')
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text('Irrigation Frequency'),
                    Text('${widget.userIrrigationFrequency}')
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text('System Mode'),
                    Text('${widget.systemMode}')
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'This system is currently in the ${widget.systemMode} mode.',
                textAlign: TextAlign.center,
              )
            ]
          )
        ]
      ),
    );
  }
}