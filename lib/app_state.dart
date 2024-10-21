import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _doctorTypes = [
    'All',
    'Cardiology',
    'Neurologist',
    'Surgeon',
    'Pediatrician',
    'Dermatologist'
  ];
  List<String> get doctorTypes => _doctorTypes;
  set doctorTypes(List<String> value) {
    _doctorTypes = value;
  }

  void addToDoctorTypes(String value) {
    doctorTypes.add(value);
  }

  void removeFromDoctorTypes(String value) {
    doctorTypes.remove(value);
  }

  void removeAtIndexFromDoctorTypes(int index) {
    doctorTypes.removeAt(index);
  }

  void updateDoctorTypesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    doctorTypes[index] = updateFn(_doctorTypes[index]);
  }

  void insertAtIndexInDoctorTypes(int index, String value) {
    doctorTypes.insert(index, value);
  }

  List<DateTime> _weekdays = [
    DateTime.fromMillisecondsSinceEpoch(1670222700000),
    DateTime.fromMillisecondsSinceEpoch(1670309100000),
    DateTime.fromMillisecondsSinceEpoch(1670395500000),
    DateTime.fromMillisecondsSinceEpoch(1670481960000),
    DateTime.fromMillisecondsSinceEpoch(1670568360000),
    DateTime.fromMillisecondsSinceEpoch(1670654760000),
    DateTime.fromMillisecondsSinceEpoch(1670741160000)
  ];
  List<DateTime> get weekdays => _weekdays;
  set weekdays(List<DateTime> value) {
    _weekdays = value;
  }

  void addToWeekdays(DateTime value) {
    weekdays.add(value);
  }

  void removeFromWeekdays(DateTime value) {
    weekdays.remove(value);
  }

  void removeAtIndexFromWeekdays(int index) {
    weekdays.removeAt(index);
  }

  void updateWeekdaysAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    weekdays[index] = updateFn(_weekdays[index]);
  }

  void insertAtIndexInWeekdays(int index, DateTime value) {
    weekdays.insert(index, value);
  }

  List<DateTime> _time = [
    DateTime.fromMillisecondsSinceEpoch(1701831600000),
    DateTime.fromMillisecondsSinceEpoch(1701833400000),
    DateTime.fromMillisecondsSinceEpoch(1701835200000),
    DateTime.fromMillisecondsSinceEpoch(1701837000000),
    DateTime.fromMillisecondsSinceEpoch(1701838800000),
    DateTime.fromMillisecondsSinceEpoch(1701840600000),
    DateTime.fromMillisecondsSinceEpoch(1701842400000),
    DateTime.fromMillisecondsSinceEpoch(1701844200000),
    DateTime.fromMillisecondsSinceEpoch(1701846000000),
    DateTime.fromMillisecondsSinceEpoch(1701847800000),
    DateTime.fromMillisecondsSinceEpoch(1701849600000),
    DateTime.fromMillisecondsSinceEpoch(1701851400000)
  ];
  List<DateTime> get time => _time;
  set time(List<DateTime> value) {
    _time = value;
  }

  void addToTime(DateTime value) {
    time.add(value);
  }

  void removeFromTime(DateTime value) {
    time.remove(value);
  }

  void removeAtIndexFromTime(int index) {
    time.removeAt(index);
  }

  void updateTimeAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    time[index] = updateFn(_time[index]);
  }

  void insertAtIndexInTime(int index, DateTime value) {
    time.insert(index, value);
  }

  List<PharmacyStruct> _pharmacies = [
    PharmacyStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Maan Pharmacy Ltd.\",\"image\":\"https://www.forbes.com/advisor/wp-content/uploads/2023/11/How-To-Become-A-Pharmacist-Edu-FI.jpg\",\"location\":\"2715 Ash Dr. San Jose\"}')),
    PharmacyStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Cleveland Clinic\",\"image\":\"https://medicopharmacyrx.com/wp-content/uploads/2021/07/types-of-pharmacy.jpg\",\"location\":\"Dhaka Medical\"}')),
    PharmacyStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Sam\'s Club Pharmacy\",\"image\":\"https://www.healthwatch.co.uk/sites/healthwatch.co.uk/files/2023-04/istock-1358654189.jpg\",\"location\":\"South Dakota 83475\"}')),
    PharmacyStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Erica Mitchell\",\"image\":\"https://teltonika-networks.com/cdn/extras/13410/org-pharmacy-chain-connectivity.webp\",\"location\":\"Dhaka bangladesh\"}')),
    PharmacyStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"True Pharmacy\",\"image\":\"https://www.usnews.com/dims4/USNEWS/156753e/2147483647/thumbnail/970x647/quality/85/?url=https%3A%2F%2Fwww.usnews.com%2Fcmsmedia%2Fcb%2Fec%2Fda396c7740fabd904c46abc7824b%2F181113-pharmacist-editorial.jpg\",\"location\":\"Dhaka Medical\"}')),
    PharmacyStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Landy\'s Pharmacy\",\"image\":\"https://www.choctawnation.com/wp-content/uploads/2022/01/pharmacy-services.jpg\",\"location\":\"2715 Dakota 83\"}'))
  ];
  List<PharmacyStruct> get pharmacies => _pharmacies;
  set pharmacies(List<PharmacyStruct> value) {
    _pharmacies = value;
  }

  void addToPharmacies(PharmacyStruct value) {
    pharmacies.add(value);
  }

  void removeFromPharmacies(PharmacyStruct value) {
    pharmacies.remove(value);
  }

  void removeAtIndexFromPharmacies(int index) {
    pharmacies.removeAt(index);
  }

  void updatePharmaciesAtIndex(
    int index,
    PharmacyStruct Function(PharmacyStruct) updateFn,
  ) {
    pharmacies[index] = updateFn(_pharmacies[index]);
  }

  void insertAtIndexInPharmacies(int index, PharmacyStruct value) {
    pharmacies.insert(index, value);
  }

  bool _isFavourite = false;
  bool get isFavourite => _isFavourite;
  set isFavourite(bool value) {
    _isFavourite = value;
  }

  List<MedicineStruct> _medicines = [
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Napa Extend Taplet\",\"secondary\":\"(Paracetamol)\",\"image\":\"https://chaldn.com/_mpimage/napa-extend-tablet-665mg-12-tablets?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D106090&q=low&v=1\",\"price\":\"5.99\"}')),
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Xpa Pediatric Drop\",\"secondary\":\"(Paracetamol)\",\"image\":\"https://cdn.osudpotro.com/medicine/xpa-15ml-paediatric-drops-385x257-removebg-preview-1630734271233.webp\",\"price\":\"2.49\"}')),
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Avolac Oral Solution\",\"secondary\":\"(Paracetamol)\",\"image\":\"https://www.ktzcompany.com/wp-content/uploads/2020/12/Avolac-100.jpg\",\"price\":\"8.0\"}')),
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Vitazin Syrup\",\"secondary\":\"(Paracetamol)\",\"image\":\"https://epharma.com.bd/storage/app/public/LEQP6RySZndA3GSDYeau819zdWRIJJh7B3dYOszw.webp\",\"price\":\"1.45\"}')),
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Axim CV Tablet\",\"secondary\":\"(Paracetamol)\",\"image\":\"https://cdn.osudpotro.com/medicine/axim-cv-5001-1631618445032.webp\",\"price\":\"5.1\"}'))
  ];
  List<MedicineStruct> get medicines => _medicines;
  set medicines(List<MedicineStruct> value) {
    _medicines = value;
  }

  void addToMedicines(MedicineStruct value) {
    medicines.add(value);
  }

  void removeFromMedicines(MedicineStruct value) {
    medicines.remove(value);
  }

  void removeAtIndexFromMedicines(int index) {
    medicines.removeAt(index);
  }

  void updateMedicinesAtIndex(
    int index,
    MedicineStruct Function(MedicineStruct) updateFn,
  ) {
    medicines[index] = updateFn(_medicines[index]);
  }

  void insertAtIndexInMedicines(int index, MedicineStruct value) {
    medicines.insert(index, value);
  }

  List<MedicineStruct> _cartProducts = [
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Napa Extend Tablet\",\"secondary\":\"(Paracetamil)\",\"image\":\"https://chaldn.com/_mpimage/napa-extend-tablet-665mg-12-tablets?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D106090&q=low&v=1\",\"price\":\"6.99\"}')),
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Xpa Pediatric Drop\",\"secondary\":\"(Paracetamil)\",\"image\":\"https://cdn.osudpotro.com/medicine/xpa-15ml-paediatric-drops-385x257-removebg-preview-1630734271233.webp\",\"price\":\"4.49\"}')),
    MedicineStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Vitazin Syrup\",\"secondary\":\"(Paracetamol)\",\"image\":\"https://epharma.com.bd/storage/app/public/LEQP6RySZndA3GSDYeau819zdWRIJJh7B3dYOszw.webp\",\"price\":\"7.99\"}'))
  ];
  List<MedicineStruct> get cartProducts => _cartProducts;
  set cartProducts(List<MedicineStruct> value) {
    _cartProducts = value;
  }

  void addToCartProducts(MedicineStruct value) {
    cartProducts.add(value);
  }

  void removeFromCartProducts(MedicineStruct value) {
    cartProducts.remove(value);
  }

  void removeAtIndexFromCartProducts(int index) {
    cartProducts.removeAt(index);
  }

  void updateCartProductsAtIndex(
    int index,
    MedicineStruct Function(MedicineStruct) updateFn,
  ) {
    cartProducts[index] = updateFn(_cartProducts[index]);
  }

  void insertAtIndexInCartProducts(int index, MedicineStruct value) {
    cartProducts.insert(index, value);
  }

  List<AdressStruct> _addresses = [
    AdressStruct.fromSerializableMap(jsonDecode(
        '{\"fullName\":\"John Doe\",\"country\":\"Bangladesh\",\"streetAdress\":\"6391 Elgin St. Celina, Delaware 10299\",\"city\":\"Dhaka\",\"postCode\":\"3610\",\"email\":\"johndoe@gmail.com\",\"mobileNumber\":\"236525685645\",\"isSelected\":\"true\"}')),
    AdressStruct.fromSerializableMap(jsonDecode(
        '{\"fullName\":\"Jane Cooper\",\"country\":\"Bangladesh\",\"streetAdress\":\"6391 Elgin St. Celina, Delaware 10299\",\"city\":\"Delaware\",\"postCode\":\"3610\",\"email\":\"janecooper@gmail.com\",\"mobileNumber\":\"236525685645\",\"isSelected\":\"false\"}'))
  ];
  List<AdressStruct> get addresses => _addresses;
  set addresses(List<AdressStruct> value) {
    _addresses = value;
  }

  void addToAddresses(AdressStruct value) {
    addresses.add(value);
  }

  void removeFromAddresses(AdressStruct value) {
    addresses.remove(value);
  }

  void removeAtIndexFromAddresses(int index) {
    addresses.removeAt(index);
  }

  void updateAddressesAtIndex(
    int index,
    AdressStruct Function(AdressStruct) updateFn,
  ) {
    addresses[index] = updateFn(_addresses[index]);
  }

  void insertAtIndexInAddresses(int index, AdressStruct value) {
    addresses.insert(index, value);
  }

  List<HospitalStruct> _hospitals = [
    HospitalStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.partnermd.com/hubfs/Blog%20Images%20%28Optimized%29/modern-hospital-building-picture-id1312706413%20%281%29%20%281%29.jpg\",\"name\":\"Christ Hospital\",\"location\":\"Dhaka Medical\",\"rating\":\"4.5\"}')),
    HospitalStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2023/01/Top-hospitals-in-Jaipur.jpg?fit=1000%2C571&ssl=1\",\"name\":\"Coney Island Hospital\",\"location\":\"Dhaka Medical\",\"rating\":\"4.8\"}')),
    HospitalStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://s41951.pcdn.co/wp-content/uploads/2023/03/BHWC-Exterior-Emergency-Entrance-2023HR-7.jpg-scaled.jpg.optimal.jpg\",\"name\":\"Franklin Hospital\",\"location\":\"Bangladesh\",\"rating\":\"4.4\"}')),
    HospitalStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://img.etimg.com/thumb/width-640,height-480,imgsize-101780,resizemode-75,msid-98975531/industry/healthcare/biotech/healthcare/private-hospitals-to-clock-10-11-pc-revenue-growth-in-fy23-fy24-report/hospital-new.jpg\",\"name\":\"Forest Hills Hospital\",\"location\":\"Deli\",\"rating\":\"4.9\"}')),
    HospitalStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsFe2KnKRzWdA4yI7BGjdIMRiRALjzc-KhGA&usqp=CAU\",\"name\":\"Gracie Square Hospital\",\"location\":\"Brazilia\",\"rating\":\"4.6\"}')),
    HospitalStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://ctmirror-images.s3.amazonaws.com/wp-content/uploads/2023/09/2023_0927_SR_WaterburyHospital_030-scaled.jpeg\",\"name\":\"Lenox Hill Hospital\",\"location\":\"Amsterdam\",\"rating\":\"5.0\"}'))
  ];
  List<HospitalStruct> get hospitals => _hospitals;
  set hospitals(List<HospitalStruct> value) {
    _hospitals = value;
  }

  void addToHospitals(HospitalStruct value) {
    hospitals.add(value);
  }

  void removeFromHospitals(HospitalStruct value) {
    hospitals.remove(value);
  }

  void removeAtIndexFromHospitals(int index) {
    hospitals.removeAt(index);
  }

  void updateHospitalsAtIndex(
    int index,
    HospitalStruct Function(HospitalStruct) updateFn,
  ) {
    hospitals[index] = updateFn(_hospitals[index]);
  }

  void insertAtIndexInHospitals(int index, HospitalStruct value) {
    hospitals.insert(index, value);
  }

  List<DoctorStruct> _doctors = [
    DoctorStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*\",\"name\":\"Dr. Cody Fisher\",\"specialization\":\"General physician\",\"location\":\"Dhaka Medical, bangladesh\",\"rating\":\"4.9\",\"exp\":\"4\",\"workingHospital\":\"Christ Hospital\"}')),
    DoctorStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://familydoctor.org/wp-content/uploads/2018/02/41808433_l.jpg\",\"name\":\"Dr. Robert Fox\",\"specialization\":\"Cardiology Specialist\",\"location\":\"Dhaka Medical, bangladesh\",\"rating\":\"4.8\",\"exp\":\"9\",\"workingHospital\":\"National Institute of Research\\n& Hospital, (Heart Specialist)\"}')),
    DoctorStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip\",\"name\":\"Dr. Randy Wigham\",\"specialization\":\"Dermatology\",\"location\":\"New York, USA\",\"rating\":\"5.0\",\"exp\":\"25\",\"workingHospital\":\"Coney Island Hospital\"}')),
    DoctorStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.shutterstock.com/image-photo/healthcare-medical-staff-concept-portrait-600nw-2281024823.jpg\",\"name\":\"Dr. Austin Borgmeyer\",\"specialization\":\"Family Medicine\",\"location\":\"Los Angeles\",\"rating\":\"4.7\",\"exp\":\"15\",\"workingHospital\":\"Franklin Hospital\"}')),
    DoctorStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.citizenshospitals.com/static/uploads/130789a4-764e-4ee3-88fe-68f9278452d6-1692966652977.png\",\"name\":\"Dr. Raul Zirkind\",\"specialization\":\"Forensic Pathology\",\"location\":\"Amsterdam\",\"rating\":\"4.8\",\"exp\":\"7\",\"workingHospital\":\"Forest Hills Hospital\"}')),
    DoctorStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.shutterstock.com/image-photo/man-portrait-doctor-wearing-white-600nw-2278090533.jpg\",\"name\":\"Dr. Josiah Wild\",\"specialization\":\"General Surgery\",\"location\":\"Bristol\",\"rating\":\"5.0\",\"exp\":\"9\",\"workingHospital\":\"Gracie Square Hospital\"}'))
  ];
  List<DoctorStruct> get doctors => _doctors;
  set doctors(List<DoctorStruct> value) {
    _doctors = value;
  }

  void addToDoctors(DoctorStruct value) {
    doctors.add(value);
  }

  void removeFromDoctors(DoctorStruct value) {
    doctors.remove(value);
  }

  void removeAtIndexFromDoctors(int index) {
    doctors.removeAt(index);
  }

  void updateDoctorsAtIndex(
    int index,
    DoctorStruct Function(DoctorStruct) updateFn,
  ) {
    doctors[index] = updateFn(_doctors[index]);
  }

  void insertAtIndexInDoctors(int index, DoctorStruct value) {
    doctors.insert(index, value);
  }

  List<DiagnosticsItemStruct> _diagnpsticsItems = [
    DiagnosticsItemStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://cdn-icons-png.flaticon.com/512/10001/10001549.png\",\"color\":\"#feba0c\",\"name\":\"Covid RT PCR\",\"description\":\"Known as Covid-19 Virus Quantitaticve Pcr \",\"price\":\"6.99\"}')),
    DiagnosticsItemStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://cdn-icons-png.flaticon.com/512/4692/4692089.png\",\"color\":\"#fe4a46\",\"name\":\"Complete Blood Count\",\"description\":\"routine blood count test for measuring \",\"price\":\"9.50\"}')),
    DiagnosticsItemStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://cdn-icons-png.flaticon.com/512/8131/8131997.png\",\"color\":\"#fff\",\"name\":\"Lipid Profile\",\"description\":\"in the body lipids, like cholesterol and triglycerides.\",\"price\":\"4.99\"}')),
    DiagnosticsItemStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://cdn-icons-png.flaticon.com/512/7350/7350822.png\",\"color\":\"#fff\",\"name\":\"Diabetes Panel\",\"description\":\"Levels and possible prediabetes and diabetes.\",\"price\":\"7.45\"}'))
  ];
  List<DiagnosticsItemStruct> get diagnpsticsItems => _diagnpsticsItems;
  set diagnpsticsItems(List<DiagnosticsItemStruct> value) {
    _diagnpsticsItems = value;
  }

  void addToDiagnpsticsItems(DiagnosticsItemStruct value) {
    diagnpsticsItems.add(value);
  }

  void removeFromDiagnpsticsItems(DiagnosticsItemStruct value) {
    diagnpsticsItems.remove(value);
  }

  void removeAtIndexFromDiagnpsticsItems(int index) {
    diagnpsticsItems.removeAt(index);
  }

  void updateDiagnpsticsItemsAtIndex(
    int index,
    DiagnosticsItemStruct Function(DiagnosticsItemStruct) updateFn,
  ) {
    diagnpsticsItems[index] = updateFn(_diagnpsticsItems[index]);
  }

  void insertAtIndexInDiagnpsticsItems(int index, DiagnosticsItemStruct value) {
    diagnpsticsItems.insert(index, value);
  }

  List<ReviewStruct> _reviews = [
    ReviewStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.shareicon.net/data/512x512/2015/09/18/103160_man_512x512.png\",\"name\":\"Jack Wild\",\"content\":\"I highly recommend this business\"}')),
    ReviewStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg\",\"name\":\"Simon Nash\",\"content\":\"Their customer service is second to none\"}')),
    ReviewStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://cdn3.iconfinder.com/data/icons/avatars-business-human1/180/woman3-512.png\",\"name\":\"Elisa Vick\",\"content\":\"The product quality is consistently outstanding, exceeding my expectations every time\"}')),
    ReviewStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png\",\"name\":\"Brian Kell\",\"content\":\"The ambiance here is always inviting and comfortable\"}'))
  ];
  List<ReviewStruct> get reviews => _reviews;
  set reviews(List<ReviewStruct> value) {
    _reviews = value;
  }

  void addToReviews(ReviewStruct value) {
    reviews.add(value);
  }

  void removeFromReviews(ReviewStruct value) {
    reviews.remove(value);
  }

  void removeAtIndexFromReviews(int index) {
    reviews.removeAt(index);
  }

  void updateReviewsAtIndex(
    int index,
    ReviewStruct Function(ReviewStruct) updateFn,
  ) {
    reviews[index] = updateFn(_reviews[index]);
  }

  void insertAtIndexInReviews(int index, ReviewStruct value) {
    reviews.insert(index, value);
  }

  List<DiagnosticsHistoryStruct> _diagnosticsHistory = [
    DiagnosticsHistoryStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.partnermd.com/hubfs/Blog%20Images%20%28Optimized%29/modern-hospital-building-picture-id1312706413%20%281%29%20%281%29.jpg\",\"hospitalName\":\"Christ Hospital\",\"doctorName\":\"Dr. Josiah Toor\",\"diagnosticsType\":\"Hospital\"}')),
    DiagnosticsHistoryStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2023/01/Top-hospitals-in-Jaipur.jpg?fit=1000%2C571&ssl=1\",\"hospitalName\":\"Coney Island Hospital\",\"doctorName\":\"Jack Doe\",\"diagnosticsType\":\"Home Service\"}')),
    DiagnosticsHistoryStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://s41951.pcdn.co/wp-content/uploads/2023/03/BHWC-Exterior-Emergency-Entrance-2023HR-7.jpg-scaled.jpg.optimal.jpg\",\"hospitalName\":\"Franklin Hospital\",\"doctorName\":\"George Took\",\"diagnosticsType\":\"Hospital\"}')),
    DiagnosticsHistoryStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://img.etimg.com/thumb/width-640,height-480,imgsize-101780,resizemode-75,msid-98975531/industry/healthcare/biotech/healthcare/private-hospitals-to-clock-10-11-pc-revenue-growth-in-fy23-fy24-report/hospital-new.jpg\",\"hospitalName\":\"Forest Hill Hospital\",\"doctorName\":\"Steven Gas\",\"diagnosticsType\":\"Home Service\"}'))
  ];
  List<DiagnosticsHistoryStruct> get diagnosticsHistory => _diagnosticsHistory;
  set diagnosticsHistory(List<DiagnosticsHistoryStruct> value) {
    _diagnosticsHistory = value;
  }

  void addToDiagnosticsHistory(DiagnosticsHistoryStruct value) {
    diagnosticsHistory.add(value);
  }

  void removeFromDiagnosticsHistory(DiagnosticsHistoryStruct value) {
    diagnosticsHistory.remove(value);
  }

  void removeAtIndexFromDiagnosticsHistory(int index) {
    diagnosticsHistory.removeAt(index);
  }

  void updateDiagnosticsHistoryAtIndex(
    int index,
    DiagnosticsHistoryStruct Function(DiagnosticsHistoryStruct) updateFn,
  ) {
    diagnosticsHistory[index] = updateFn(_diagnosticsHistory[index]);
  }

  void insertAtIndexInDiagnosticsHistory(
      int index, DiagnosticsHistoryStruct value) {
    diagnosticsHistory.insert(index, value);
  }
}
