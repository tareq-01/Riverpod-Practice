class Response {
  final String? errorMessage;
  final bool? isButtonEnable;

  Response({this.errorMessage, this.isButtonEnable= false});

  Response copyWith({String? errorMessage,
  bool?isButtonEnable}) {
    return Response(errorMessage: errorMessage,isButtonEnable: isButtonEnable??this.isButtonEnable);
  }
}
