part of 'search_bloc.dart';


sealed class SearchEvent {}


class SearchInitialFetchEvent extends SearchEvent{}

class SizeFetchEvent extends SearchEvent{}


class MajorColorFetchEvent extends SearchEvent{
  String size;
  MajorColorFetchEvent({required this.size});
}

class MinorColorFetchEvent extends SearchEvent{
  dynamic majorColor;
  MinorColorFetchEvent({required this.majorColor});
}

class BeakTypeFetchEvent extends SearchEvent{
  dynamic minorColor;
  BeakTypeFetchEvent({required this.minorColor});
}

class FootTypeFetchEvent extends SearchEvent{
  dynamic beakType;
  FootTypeFetchEvent({required this.beakType});
}

class SearchFinalRequestEvent extends SearchEvent{
 dynamic footType;
 SearchFinalRequestEvent({required this.footType});
}


class LogOutEvent extends SearchEvent{}



class BirdMoreInformationEvent extends SearchEvent{
  String commonName;
  BirdMoreInformationEvent({required this.commonName});
}


class HomePageSearchTriggerEvent extends SearchEvent{
  String query;
  HomePageSearchTriggerEvent({required this.query});
}