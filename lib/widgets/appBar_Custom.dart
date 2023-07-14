import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
    final bool showFirstColumn;
    final bool showSecondColumn;
    final bool showThirdColumn;
    final bool showSecondColumnText;
    final String firstColumnText;
    final String secondColumnText;
    final String thirdColumnText;

    const AppBarCustom({
        this.showFirstColumn = true,
        this.showSecondColumn = true,
        this.showThirdColumn = true,
        this.showSecondColumnText = true,
        this.firstColumnText = 'Texte de la première colonne',
        this.secondColumnText = 'Texte de la deuxième colonne',
        this.thirdColumnText = 'Texte de la troisième colonne',
    super.key
    });

    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
            if (showFirstColumn)
                Container(
                color: Colors.red,
                child: Column(children: [
                    Expanded(
                      child: Row(children: [Text(firstColumnText)]), 
                    ),
                    Expanded(
                      child: Row(children: [Text(secondColumnText)])
                    )
                ])),
            if (showSecondColumn)
                Container(
                color: Colors.green,
                child: Column(children: [Text(thirdColumnText)])),
            ]
        );
    }
}
