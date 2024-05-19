class RepoRepository {
  final RepoDataSource _dataSource;

  RepoRepository(this._dataSource);

  Future<List<Repo>> search(String query) async {
    return _dataSource.search(query);
  }
}
