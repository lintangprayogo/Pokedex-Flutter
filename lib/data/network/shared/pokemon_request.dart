class PokemonRequest {
  final int limit;
  final int offset;

  PokemonRequest({this.limit = 10, required this.offset});
}
