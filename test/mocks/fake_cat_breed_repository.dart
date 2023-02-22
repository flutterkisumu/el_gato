import 'package:el_gato/models/cat_breed/cat_breed.dart';
import 'package:el_gato/providers/content/cat_breeds/cat_breeds_repository.dart';
import 'package:mockito/mockito.dart';

List<CatBreed> fakeBreeds = [
  CatBreed(id: 'iudashkd', name: 'Cat Breed One', description: 'The Bes')
];

class FakeCatBreedsRepository extends Mock implements CatBreedsRepository {
  @override
  Future<List<CatBreed>> getBreeds() async {
    return fakeBreeds;
  }
}
