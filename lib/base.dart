import 'package:flutter/material.dart';

const sep=SizedBox(height:12,width:12);
const sep7=SizedBox(height:7,width:7);

Future<dynamic> goTo(BuildContext ctx,Widget p)async=>await Navigator.push(ctx,PageRouteBuilder(pageBuilder:(context,animation,secondaryAnimation)=>p,transitionDuration:Duration(seconds:0)));
void back(BuildContext context,{dynamic data})=>Navigator.pop(context,data);

void onLoaded(Function cb)=>WidgetsBinding.instance.addPostFrameCallback((_)=>cb());

void p(dynamic t)=>print(t is String?t:t.toString());

Color prim(BuildContext ctx)=>Theme.of(ctx).colorScheme.primary;
Color sec(BuildContext ctx)=>Theme.of(ctx).colorScheme.secondary;