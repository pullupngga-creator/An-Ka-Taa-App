class LivraisonService {
  static final LivraisonService _instance = LivraisonService._internal();

  factory LivraisonService() {
    return _instance;
  }

  LivraisonService._internal();

  // Store selected company data
  Map<String, String>? _selectedCompany;
  
  // Store selected airport service data
  Map<String, String>? _selectedAirportService;

  // Getters
  Map<String, String>? get selectedCompany => _selectedCompany;
  Map<String, String>? get selectedAirportService => _selectedAirportService;

  // Setters
  void setSelectedCompany(Map<String, String> company) {
    _selectedCompany = company;
  }

  void setSelectedAirportService(Map<String, String> service) {
    _selectedAirportService = service;
  }

  // Clear all data
  void clearData() {
    _selectedCompany = null;
    _selectedAirportService = null;
  }

  // Get all selected data
  Map<String, dynamic> getAllSelectedData() {
    return {
      'selectedCompany': _selectedCompany,
      'selectedAirportService': _selectedAirportService,
    };
  }
}
