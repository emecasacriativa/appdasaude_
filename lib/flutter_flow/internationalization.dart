import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'do6lk6kn': {
      'en': 'Current Location',
      'pt': 'Localização atual',
    },
    'dmgrk9tc': {
      'en': 'United States',
      'pt': 'Estados Unidos',
    },
    'nakre3m5': {
      'en': 'Search',
      'pt': 'Procurar',
    },
    'ihgkw6y9': {
      'en': 'Featured Services',
      'pt': 'Serviços em destaque',
    },
    'nif6p25w': {
      'en': 'Doctor Appointment',
      'pt': 'Consulta médica',
    },
    'h8pep6nv': {
      'en': 'Online consultancy of \npopular doctor',
      'pt': 'Consultoria online de\nmédico popular',
    },
    'xw2dy6py': {
      'en': 'Diagnostics ',
      'pt': 'Diagnóstico',
    },
    'ylf9m5z9': {
      'en': 'Pharmacy',
      'pt': 'Farmácia',
    },
    'x58tz2np': {
      'en': 'Ambulance',
      'pt': 'Ambulância',
    },
    '534c23io': {
      'en': 'Nursing \nCare',
      'pt': 'Enfermagem\nCuidados',
    },
    '2acc84ni': {
      'en': 'Uber',
      'pt': '',
    },
    'mvcca57p': {
      'en': 'Popular Doctor',
      'pt': 'Doutor Popular',
    },
    'ptb0clg5': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'a7pi2ukh': {
      'en': 'Diagnostics',
      'pt': 'Diagnóstico',
    },
    '8zvykzbu': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'hrbwiwl2': {
      'en': 'Product List',
      'pt': 'Lista de produtos',
    },
    'bkoxg44v': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    '0rfamapr': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Onboarding
  {
    '79uqe6bc': {
      'en': 'Find Your Doctor',
      'pt': 'Encontre seu médico',
    },
    '40xd6w50': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet that \nfist and consectetur ipsum',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet aquele punho e consectetur ipsum',
    },
    'jzwokwsi': {
      'en': 'Order Your medicine',
      'pt': 'Peça seu medicamento',
    },
    'ktxc4qjd': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet that \nfist and consectetur ipsum',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet aquele punho e consectetur ipsum',
    },
    'xr1jp6a6': {
      'en': 'Lab Tests at home',
      'pt': 'Testes de laboratório em casa',
    },
    'e6nhwb13': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet that \nfist and consectetur ipsum',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet aquele punho e consectetur ipsum',
    },
    'nm0ifyzv': {
      'en': 'Skip',
      'pt': 'Pular',
    },
    'j6xj245v': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // ChooseRole
  {
    '3zzx8zb0': {
      'en': 'Find Your Doctor',
      'pt': 'Encontre seu médico',
    },
    'jksli9ai': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed ',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed',
    },
    'd7yktbsc': {
      'en': 'Are you a Doctor?',
      'pt': 'Você é médico?',
    },
    'ozfiq741': {
      'en': 'Are you a Patient?',
      'pt': 'Você é um paciente?',
    },
    '4ygg4sy6': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PatientSignIn
  {
    's7tlgpiw': {
      'en': 'Sign in',
      'pt': 'Entrar',
    },
    'y12a2ilx': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arcu',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arco',
    },
    'er9xn6n4': {
      'en': 'Mobile Number',
      'pt': 'Número de telemóvel',
    },
    'ddhtqizy': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'gdqhqslm': {
      'en': 'Forgot password?',
      'pt': 'Esqueceu sua senha?',
    },
    'jjf3544a': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    'nihmfxfp': {
      'en': 'Dont’t have an account? ',
      'pt': 'Não tem uma conta?',
    },
    '6qx5a1wd': {
      'en': 'Sign up',
      'pt': 'Inscrever-se',
    },
    'ljf9pt22': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PatientSignUp
  {
    '4p8i56qt': {
      'en': 'Sign up',
      'pt': 'Inscrever-se',
    },
    'amm1uie2': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arcu',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arco',
    },
    'kh6cug0z': {
      'en': 'Full name',
      'pt': 'Nome completo',
    },
    'i6g8tnuc': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    've7abtaj': {
      'en': 'Mobile Number',
      'pt': 'Número de telemóvel',
    },
    '1bp56c0q': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '8kma0o0z': {
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    'ai03xpuz': {
      'en': 'I have read and agree to the ',
      'pt': 'Li e concordo com os',
    },
    'osrr1azv': {
      'en': 'privacy policy & Termes & Conditions',
      'pt': 'política de privacidade e Termos e Condições',
    },
    'jhobe3yg': {
      'en': 'Sign Up',
      'pt': 'Inscrever-se',
    },
    'a7ajreq1': {
      'en': 'Already have an account? ',
      'pt': 'Já tem uma conta?',
    },
    'q6m1ztl5': {
      'en': 'Sign in',
      'pt': 'Entrar',
    },
    '7399cn0v': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Verification
  {
    'trqhth19': {
      'en': 'Verification',
      'pt': 'Verificação',
    },
    'bdwh51nz': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arcu',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arco',
    },
    'dilvm2h6': {
      'en': 'You can request OTP after',
      'pt': 'Você pode solicitar OTP depois',
    },
    'qw0p06th': {
      'en': 'Verify',
      'pt': 'Verificar',
    },
    '2h6efcpg': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // ForgotPassword
  {
    'rdh6ggnk': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu sua senha',
    },
    'km82zmkd': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arcu',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arco',
    },
    'nttxmzjq': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'e7kp9662': {
      'en': 'Reset Password',
      'pt': 'Redefinir senha',
    },
    '306hz16b': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Pharmacy
  {
    '073z06ho': {
      'en': 'Pharmacy',
      'pt': 'Farmácia',
    },
    'apqki48d': {
      'en': 'Services Up to',
      'pt': 'Serviços até',
    },
    'wa6sbzsx': {
      'en': '30% OFF',
      'pt': '30% DE DESCONTO',
    },
    'tvf23you': {
      'en': 'See Doctor',
      'pt': 'Ver médico',
    },
    's4iv9g0q': {
      'en': 'Categories',
      'pt': 'Categorias',
    },
    'xszujbb6': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    '90qvd205': {
      'en': 'Nearby Pharmacy',
      'pt': 'Farmácia próxima',
    },
    '3hsprjey': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'x3wrs9eg': {
      'en': 'Pharmacy',
      'pt': 'Farmácia',
    },
  },
  // DoctorAppointment
  {
    'zss8bi0t': {
      'en': 'Doctor Appointment',
      'pt': 'Consulta médica',
    },
    '3ztqpko0': {
      'en': 'Search',
      'pt': 'Procurar',
    },
    'j47k47e8': {
      'en': 'Say Hello Doctor',
      'pt': 'Diga Olá Doutor',
    },
    'u3sa8jkl': {
      'en': '30% OFF',
      'pt': '30% DE DESCONTO',
    },
    '8y354p6u': {
      'en': 'See Doctor',
      'pt': 'Veja o Doutor',
    },
    'x5zauoq1': {
      'en': 'Say Hello Doctor',
      'pt': 'Diga Olá Doutor',
    },
    'n9r7wcb6': {
      'en': '30% OFF',
      'pt': '30% DE DESCONTO',
    },
    'zrt68kz7': {
      'en': 'See Doctor',
      'pt': 'Veja o Doutor',
    },
    'liq3trb8': {
      'en': 'Categories',
      'pt': 'Categorias',
    },
    'o1990wwt': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'kpjfh6g0': {
      'en': 'Popular Doctor',
      'pt': 'Doutor Popular',
    },
    '3h3dzlc0': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'zsusmmxo': {
      'en': 'Nearby Hospital',
      'pt': 'Hospital Próximo',
    },
    'cnzj1ed2': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    '4ubpvdcq': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // allCategories
  {
    '2f3w6etp': {
      'en': 'Categories',
      'pt': 'Categorias',
    },
    'p6c46iaq': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // allNearbyHospital
  {
    'g4ksml10': {
      'en': 'Nearby Hospital',
      'pt': 'Hospital Próximo',
    },
    'notosues': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Category
  {
    'padpl35k': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PopularDoctor
  {
    '662e1vl1': {
      'en': 'Popular Doctor',
      'pt': 'Doutor Popular',
    },
    'f3szg832': {
      'en': 'Search...',
      'pt': 'Procurar...',
    },
    'xn1x10sm': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // DoctorDetails
  {
    'oukj02nk': {
      'en': 'Doctor Details',
      'pt': 'Detalhes do médico',
    },
    'lnbwa727': {
      'en': 'Experiences',
      'pt': 'Experiências',
    },
    '5r8gop1t': {
      'en': '5,000+',
      'pt': '5.000+',
    },
    'yfe3vw1z': {
      'en': 'Patient',
      'pt': 'Paciente',
    },
    'p18prik6': {
      'en': 'Biography',
      'pt': 'Biografia',
    },
    'ekwlffe3': {
      'en':
          'Dr. Josiah Toor treated more than 5,000 cancer pati-ent who had been written off as incurable by other doctors. He claimed no miracle cures, but the succes\ns record of his revolutionary whole body treatment was extraordinary. This is the story of a tempestuous life; his Ringberg Clinic in Bavaria, ',
      'pt':
          'O Dr. Josiah Toor tratou mais de 5.000 pacientes com câncer que foram considerados incuráveis por outros médicos. Ele não alegou nenhuma cura milagrosa, mas o histórico de sucesso de seu tratamento revolucionário de corpo inteiro foi extraordinário. Esta é a história de uma vida tempestuosa; sua Clínica Ringberg na Baviera,',
    },
    'rvtw2xkc': {
      'en': 'Gallery',
      'pt': 'Galeria',
    },
    'n7ygbvay': {
      'en': 'View More',
      'pt': 'Ver mais',
    },
    'qo20067m': {
      'en': 'Availability',
      'pt': 'Disponibilidade',
    },
    'ikpwd8sl': {
      'en': 'Mon - Fri 09.00 AM - 08.00 PM',
      'pt': 'Seg - Sex 09h00 - 20h00',
    },
    'frxqn110': {
      'en': 'Reviews(60)',
      'pt': 'Avaliações(60)',
    },
    'hpj8xa2o': {
      'en': 'Jerome Bell',
      'pt': 'Jerônimo Bell',
    },
    '1yd66em7': {
      'en': '31 Min Ago',
      'pt': '31 Minutos Atrás',
    },
    'iaiztxw1': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arco',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arco',
    },
    '8pcigpfm': {
      'en': 'Book Appointment',
      'pt': 'Agendar consulta',
    },
    '478pmd2b': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // BookAppointment
  {
    'faued724': {
      'en': 'Book Appointment',
      'pt': 'Agendar consulta',
    },
    '0t9wwfgb': {
      'en': 'Online',
      'pt': 'On-line',
    },
    '3hoiqxgf': {
      'en': 'Hospital',
      'pt': 'Hospital',
    },
    'bkvgn7te': {
      'en': 'Select Hospital',
      'pt': 'Selecione Hospital',
    },
    'm9fp8q7o': {
      'en': 'National Institute of Research & Hospital,',
      'pt': 'Instituto Nacional de Pesquisa e Hospital,',
    },
    'gvycazew': {
      'en': 'Dhaka Medical College Hospital',
      'pt': 'Hospital da Faculdade de Medicina de Dhaka',
    },
    'b7oh5mz3': {
      'en': '12 July, 2022',
      'pt': '12 de julho de 2022',
    },
    'assjp1d1': {
      'en': 'Available Time',
      'pt': 'Tempo disponível',
    },
    '0cdjduz7': {
      'en': 'Morning',
      'pt': 'Manhã',
    },
    'twyv3iu9': {
      'en': 'Afternoon',
      'pt': 'Tarde',
    },
    'rsn2ldhx': {
      'en': 'Evening',
      'pt': 'Noite',
    },
    '6crpkozb': {
      'en': 'Consultation Fees',
      'pt': 'Honorários de consulta',
    },
    'cn9d1uqv': {
      'en': 'Messaging',
      'pt': 'Mensagens',
    },
    '2dt55wet': {
      'en': '5\$',
      'pt': '5\$',
    },
    'rz4jqntd': {
      'en': 'Voice call',
      'pt': 'Chamada de voz',
    },
    '5uz8zk89': {
      'en': '5\$',
      'pt': '5\$',
    },
    'ca77u9a5': {
      'en': 'Video call',
      'pt': 'Chamada de vídeo',
    },
    'mjc5l9wg': {
      'en': '5\$',
      'pt': '5\$',
    },
    '6ve3u8fr': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    '384fudt3': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PatientsDetails
  {
    'nejyh015': {
      'en': 'Patient’s Details',
      'pt': 'Detalhes do paciente',
    },
    'akjvjdwu': {
      'en': 'Full Name*',
      'pt': 'Nome completo*',
    },
    'y3jhc3xy': {
      'en': 'Enter your full name',
      'pt': 'Digite seu nome completo',
    },
    'uo0ozyo4': {
      'en': 'Phone Number*',
      'pt': 'Número de telefone*',
    },
    '6oju8qtp': {
      'en': 'Enter your phone number',
      'pt': 'Insira seu número de telefone',
    },
    'n35el8is': {
      'en': 'Email (optional)',
      'pt': 'E-mail (opcional)',
    },
    'kactybyu': {
      'en': 'Enter your email',
      'pt': 'Insira seu e-mail',
    },
    'qkfe3ce1': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'ybz0a8xq': {
      'en': 'Female',
      'pt': 'Fêmea',
    },
    'pty3o7m2': {
      'en': 'Select gender',
      'pt': 'Selecione gênero',
    },
    'mnte5lhr': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'z1xf8ybb': {
      'en': '0-10',
      'pt': '0-10',
    },
    'p1gyqzqp': {
      'en': '11-18',
      'pt': '11-18',
    },
    'vebep82o': {
      'en': '19-35',
      'pt': '19-35',
    },
    'cfngbmum': {
      'en': '36-58',
      'pt': '36-58',
    },
    '7cfzq062': {
      'en': '58-75',
      'pt': '58-75',
    },
    '4lsmxzvn': {
      'en': '76+',
      'pt': '76+',
    },
    'j4zcby5q': {
      'en': 'Select age',
      'pt': 'Selecione a idade',
    },
    '44lpjte3': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'af95lvu7': {
      'en': 'Write Your Problem*',
      'pt': 'Escreva seu problema*',
    },
    'lopxpuvu': {
      'en': ' Tell your doctor about your problem',
      'pt': 'Conte ao seu médico sobre o seu problema',
    },
    'b4ym041s': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'hyd6zdei': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Payment
  {
    '5m6nj0tu': {
      'en': 'Payment',
      'pt': 'Pagamento',
    },
    'ygdwt0ur': {
      'en': 'Select Payment Methord',
      'pt': 'Selecione o método de pagamento',
    },
    'z39g8q5q': {
      'en': 'Change',
      'pt': 'Mudar',
    },
    'mjmhoceu': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'sb9fegky': {
      'en': 'Enter card holder name',
      'pt': 'Insira o nome do titular do cartão',
    },
    'vgghc0ck': {
      'en': 'Card Number',
      'pt': 'Número do cartão',
    },
    'k1zee7xl': {
      'en': 'Enter card number',
      'pt': 'Digite o número do cartão',
    },
    'v85qi0f6': {
      'en': 'Expire Date',
      'pt': 'Data de expiração',
    },
    'fqqkxyoe': {
      'en': 'MM/YY',
      'pt': 'MM/AA',
    },
    'g6fz00nc': {
      'en': 'CVV',
      'pt': 'CVV',
    },
    'ywo87c6l': {
      'en': 'Enter CVV number',
      'pt': 'Insira o número CVV',
    },
    's9lary2x': {
      'en': 'Pay Now',
      'pt': 'Pague agora',
    },
    '5ij7n8ll': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Notifications
  {
    'vlg0elp8': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    'pwen4zwo': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'fmadhpq0': {
      'en': 'Reminder',
      'pt': 'Lembrete',
    },
    'sarsuhg8': {
      'en': '1 min ago ',
      'pt': '1 min atrás',
    },
    'f9qrwxsw': {
      'en': 'Appointment Alarm',
      'pt': 'Alarme de compromisso',
    },
    'eo0ii1r4': {
      'en': '5 min ago ',
      'pt': '5 minutos atrás',
    },
    'l576mdhx': {
      'en': 'Appointment Confirmed',
      'pt': 'Compromisso confirmado',
    },
    'pyikkv6s': {
      'en': '20 min ago ',
      'pt': '20 minutos atrás',
    },
    'yjdhdhin': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    '3l0hf1l5': {
      'en': 'Appointment Confirmed',
      'pt': 'Compromisso confirmado',
    },
    'hmc3gnqr': {
      'en': '20 min ago ',
      'pt': '20 minutos atrás',
    },
    'friu6rqg': {
      'en': 'Appointment Alarm',
      'pt': 'Alarme de compromisso',
    },
    '1f5g0ghb': {
      'en': '5 min ago ',
      'pt': '5 minutos atrás',
    },
    '501gww0w': {
      'en': 'Reminder',
      'pt': 'Lembrete',
    },
    'x1fq95cl': {
      'en': '1 min ago ',
      'pt': '1 min atrás',
    },
    '6y1u6q3u': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // MyAppointments
  {
    'h1vr8edg': {
      'en': 'Upcoming',
      'pt': 'Por vir',
    },
    'widui3yf': {
      'en': 'Past',
      'pt': 'Passado',
    },
    'q2xlhapo': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'xji0a5ej': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    't12d13uj': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'lxoni2kl': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'uyibfadm': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'boauccg8': {
      'en': 'Name: Shaidul islma',
      'pt': 'Nome: Shaidul Islam',
    },
    't6wmnlpt': {
      'en': '2715 Ash Dr. San Jose, South ',
      'pt': '2715 Ash Dr. San Jose, Sul',
    },
    'pcg6h47i': {
      'en': 'Date: 26 Jun 2022 - 27 Jun 2022',
      'pt': 'Data: 26 de junho de 2022 - 27 de junho de 2022',
    },
    'np10vf6o': {
      'en': 'Day: 3 Day Pack',
      'pt': 'Dia: Pacote de 3 dias',
    },
    'epjp0teh': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    '614rxqji': {
      'en': 'Name: Ibne Riead',
      'pt': 'Nome: Ibne Riead',
    },
    '4zuzzzpy': {
      'en': '2715 Ash Dr. San Jose, South ',
      'pt': '2715 Ash Dr. San Jose, Sul',
    },
    'wukorg32': {
      'en': 'Date: 26 Jun 2022 - 7 Jul 2022',
      'pt': 'Data: 26 de junho de 2022 - 7 de julho de 2022',
    },
    '5u47knc4': {
      'en': 'Day: 6 Day Pack',
      'pt': 'Dia: Pacote de 6 dias',
    },
    'krkz3x60': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    'q1k2rtu9': {
      'en': 'Name: Jack Song',
      'pt': 'Nome: Jack Song',
    },
    'u72zlzxu': {
      'en': '2715 Ash Dr. San Jose, South ',
      'pt': '2715 Ash Dr. San Jose, Sul',
    },
    'hqwrbzud': {
      'en': 'Date: 26 Jun 2022 - 7 Jul 2022',
      'pt': 'Data: 26 de junho de 2022 - 7 de julho de 2022',
    },
    'ktcffog6': {
      'en': 'Day: 2 Day Pack',
      'pt': 'Dia: Pacote de 2 dias',
    },
    'c0mtgmgk': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    'cygzcceg': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'lu05zdg1': {
      'en': 'Name: Ibne Riead',
      'pt': 'Nome: Ibne Riead',
    },
    'sl6fix5q': {
      'en': '2715 Ash Dr. San Jose, South ',
      'pt': '2715 Ash Dr. San Jose, Sul',
    },
    'bmdwe8zk': {
      'en': 'Date: 26 Jun 2022 - 7 Jul 2022',
      'pt': 'Data: 26 de junho de 2022 - 7 de julho de 2022',
    },
    '7doxwaiv': {
      'en': 'Day: 7 Day Pack',
      'pt': 'Dia: Pacote de 7 dias',
    },
    '9uno7412': {
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
    'hmto5jla': {
      'en': 'Name: Jack Song',
      'pt': 'Nome: Jack Song',
    },
    'shjtyzz9': {
      'en': '2715 Ash Dr. San Jose, South ',
      'pt': '2715 Ash Dr. San Jose, Sul',
    },
    'dokf2iqs': {
      'en': 'Date: 26 Jun 2022 - 7 Jul 2022',
      'pt': 'Data: 26 de junho de 2022 - 7 de julho de 2022',
    },
    'gigt4qpv': {
      'en': 'Day: 4 Day Pack',
      'pt': 'Dia: Pacote de 4 dias',
    },
    'rbc9thgd': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    'l81xmn6w': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'vv3b9m29': {
      'en': 'General Ambulance',
      'pt': 'Ambulância Geral',
    },
    'cqf9c9ah': {
      'en': 'Pickup Point: 2715 Ash Dr. San',
      'pt': 'Ponto de coleta: 2715 Ash Dr. San',
    },
    'qt33gudr': {
      'en': 'Destination Point: 2715 Ash Dr. San',
      'pt': 'Ponto de destino: 2715 Ash Dr. San',
    },
    'fm4jibtk': {
      'en': 'Date: 26 Jun 2022',
      'pt': 'Data: 26 de junho de 2022',
    },
    'gqbma7qr': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    'yg0viiee': {
      'en': 'ICU Ambulance',
      'pt': 'Ambulância UTI',
    },
    'laprlri8': {
      'en': 'Pickup Point: 2715 Ash Dr. San',
      'pt': 'Ponto de coleta: 2715 Ash Dr. San',
    },
    'ha7ukox8': {
      'en': 'Destination Point: 2715 Ash Dr. San',
      'pt': 'Ponto de destino: 2715 Ash Dr. San',
    },
    '5cyw2380': {
      'en': 'Date: 26 Jun 2022',
      'pt': 'Data: 26 de junho de 2022',
    },
    'n8newp8v': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    '90y9h3rx': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    'ys1l8p08': {
      'en': 'Pickup Point: 2715 Ash Dr. San',
      'pt': 'Ponto de coleta: 2715 Ash Dr. San',
    },
    'ij9k1h51': {
      'en': 'Destination Point: 2715 Ash Dr. San',
      'pt': 'Ponto de destino: 2715 Ash Dr. San',
    },
    '6qutq7gs': {
      'en': 'Date: 26 Jun 2022',
      'pt': 'Data: 26 de junho de 2022',
    },
    '9jilpw3t': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    'zp70w3ju': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'cn0jb1j1': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    'rwahhoix': {
      'en': 'Pickup Point: 2715 Ash Dr. San',
      'pt': 'Ponto de coleta: 2715 Ash Dr. San',
    },
    '73ne4w47': {
      'en': 'Destination Point: 2715 Ash Dr. San',
      'pt': 'Ponto de destino: 2715 Ash Dr. San',
    },
    'u2vivubo': {
      'en': 'Date: 26 Jun 2022',
      'pt': 'Data: 26 de junho de 2022',
    },
    'tgmmz4r5': {
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
    'ejqsbs6n': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    '3eps06y9': {
      'en': 'Pickup Point: 2715 Ash Dr. San',
      'pt': 'Ponto de coleta: 2715 Ash Dr. San',
    },
    'xl14y3d2': {
      'en': 'Destination Point: 2715 Ash Dr. San',
      'pt': 'Ponto de destino: 2715 Ash Dr. San',
    },
    'zjb7u0i5': {
      'en': 'Date: 26 Jun 2022',
      'pt': 'Data: 26 de junho de 2022',
    },
    'oyoh0e06': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    'od7i2qx1': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'c8ao8jtt': {
      'en': 'Napa Extend Tablet',
      'pt': 'Tablet Napa Extend',
    },
    'qg94hums': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    'w2yduwz1': {
      'en': 'Amount: \$6.99',
      'pt': 'Valor: \$ 6,99',
    },
    'uh758c87': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    'y6z717kw': {
      'en': 'Processed',
      'pt': 'Processado',
    },
    '6o3i0k1o': {
      'en': 'Napa Extend Tablet',
      'pt': 'Tablet Napa Extend',
    },
    'gj2n7it4': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    '59fbapvs': {
      'en': 'Amount: \$6.99',
      'pt': 'Valor: \$ 6,99',
    },
    'n2g1ar93': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    '7rt9wbwc': {
      'en': 'Delivered',
      'pt': 'Entregue',
    },
    '4jgdrcwy': {
      'en': 'Napa Extend Tablet',
      'pt': 'Tablet Napa Extend',
    },
    'v9y698v2': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    '2rlvjpbd': {
      'en': 'Amount: \$6.99',
      'pt': 'Valor: \$ 6,99',
    },
    'xgfib715': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    'rvq6dewk': {
      'en': 'Delivered',
      'pt': 'Entregue',
    },
    '82h3c7u1': {
      'en': 'Today - 12 July 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'f074vljd': {
      'en': 'Napa Extend Tablet',
      'pt': 'Tablet Napa Extend',
    },
    'ils9ymq4': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    'zbp9oksu': {
      'en': 'Amount: \$6.99',
      'pt': 'Valor: \$ 6,99',
    },
    'ib02e46s': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    'zlzevde1': {
      'en': 'Canceled',
      'pt': 'Cancelado',
    },
    '52qx3fu5': {
      'en': 'Napa Extend Tablet',
      'pt': 'Tablet Napa Extend',
    },
    'ihe8wzwx': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    'ofmjmqh6': {
      'en': 'Amount: \$6.99',
      'pt': 'Valor: \$ 6,99',
    },
    'v8qvxtr2': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    'pzi8cf99': {
      'en': 'Canceled',
      'pt': 'Cancelado',
    },
    'q4fadpxh': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // OnlineAppointmentDetails
  {
    'fm8b9ktg': {
      'en': 'Online Appointments Details',
      'pt': 'Detalhes de consultas on-line',
    },
    '1n1ql3mr': {
      'en': 'Dr. Josiah Toor',
      'pt': 'Dr. Josias Toor',
    },
    'lvkv5t2p': {
      'en':
          'National Institute of Cardiology Research\n& Hospital, (Cardiology Specialist)',
      'pt':
          'Instituto Nacional de Pesquisa em Cardiologia\n& Hospital, (Especialista em Cardiologia)',
    },
    '3avnbtv0': {
      'en': 'Video call',
      'pt': 'Chamada de vídeo',
    },
    '6r9z48qp': {
      'en': 'Send message',
      'pt': 'Enviar mensagem',
    },
    '3t35qcy4': {
      'en': 'Hospital ',
      'pt': 'Hospital',
    },
    'p0c7sa8q': {
      'en': 'National Institute of Cancer Research& Hospital',
      'pt': 'Instituto Nacional de Pesquisa do Câncer e Hospital',
    },
    'db3ptipw': {
      'en': 'Visit time',
      'pt': 'Horário de visita',
    },
    'vb9kz3eo': {
      'en': 'Afternoon',
      'pt': 'Tarde',
    },
    'tovd0i66': {
      'en': 'Today - 12 July, 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'gymjiova': {
      'en': '01:00 PM',
      'pt': '01:00 PM',
    },
    'bp7gkf2g': {
      'en': 'Patient information',
      'pt': 'Informações do paciente',
    },
    'f2notu1y': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'imm3izzr': {
      'en': 'Age',
      'pt': 'Idade',
    },
    '3wq6shqe': {
      'en': 'Gender',
      'pt': 'Gênero',
    },
    'pd5wns6g': {
      'en': 'Phone',
      'pt': 'Telefone',
    },
    'pp3whtm3': {
      'en': ':',
      'pt': ':',
    },
    '3zjxiv5u': {
      'en': ':',
      'pt': ':',
    },
    'pak32lzj': {
      'en': ':',
      'pt': ':',
    },
    '3yy3pls7': {
      'en': ':',
      'pt': ':',
    },
    'zmhxj424': {
      'en': 'Guy Hawkins',
      'pt': 'Cara Hawkins',
    },
    'zlec6s44': {
      'en': '25',
      'pt': '25',
    },
    '4ikgpizb': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'k47s3sab': {
      'en': '01855671645',
      'pt': '01855671645',
    },
    't9yi14at': {
      'en': 'Consultation Fees',
      'pt': 'Honorários de consulta',
    },
    '3timwudc': {
      'en': 'Paid',
      'pt': 'Pago',
    },
    's8p7k29j': {
      'en': 'Fees',
      'pt': 'Tarifas',
    },
    't2ovz4s5': {
      'en': ':',
      'pt': ':',
    },
    '64vncg6d': {
      'en': ':',
      'pt': ':',
    },
    'vjl9vk7u': {
      'en': 'Video Call',
      'pt': 'Chamada de vídeo',
    },
    'y03ify98': {
      'en': '\$15',
      'pt': '\$15',
    },
    '20447oz4': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'e8yscac4': {
      'en': 'Reschedule',
      'pt': 'Reprogramar',
    },
    'ijzbippy': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Chat
  {
    'dk4s962e': {
      'en': 'Dr. Josiah Toor',
      'pt': 'Dr. Josias Toor',
    },
    'z7m356xv': {
      'en': '•Online',
      'pt': '•On-line',
    },
    'xdc3u5dk': {
      'en': 'Hi, dont worry I am here. Let me know your situation now.',
      'pt': 'Olá, não se preocupe, estou aqui. Conte-me sua situação agora.',
    },
    'i8rtp9ip': {
      'en': '09:41 AM',
      'pt': '09:41 da manhã',
    },
    'olisagb8': {
      'en': 'Hi Doctor, I am a fever patient. This is my prescription',
      'pt': 'Olá Doutor, sou um paciente com febre. Esta é minha receita',
    },
    'bccehpix': {
      'en': '09:43 AM',
      'pt': '09:43 da manhã',
    },
    '92fw7t0c': {
      'en': '',
      'pt': '',
    },
    'f42kyklt': {
      'en': '|  Message...',
      'pt': '| Mensagem...',
    },
    'b9mbzihf': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // VoiceCall
  {
    '743u6gys': {
      'en': 'Dr. Josiah Toor',
      'pt': 'Dr. Josias Toor',
    },
    '8s6cqh6v': {
      'en': 'Calling...',
      'pt': 'Ligando...',
    },
    'm1v76jlz': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // VideoCall
  {
    'b3g2v1hq': {
      'en': '12:08 Min',
      'pt': '12:08 minutos',
    },
    'a7vkuupo': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // CallEnded
  {
    'cowwi70a': {
      'en': 'Dr. Josiah Toor',
      'pt': 'Dr. Josias Toor',
    },
    'c6es9fi7': {
      'en': 'Time end for video calling appointment ',
      'pt': 'Fim do prazo para consulta por videochamada',
    },
    '18mh4f2u': {
      'en': '12:08 min',
      'pt': '12:08 minutos',
    },
    'ns9lsk8t': {
      'en': 'Write a Review',
      'pt': 'Escreva uma avaliação',
    },
    'qfqroaxu': {
      'en': 'Back to Home',
      'pt': 'Voltar para casa',
    },
    '22w3w4va': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // WriteReview
  {
    'ke8tzi2b': {
      'en': 'Write a Review',
      'pt': 'Escreva uma avaliação',
    },
    'lpwxhj9d': {
      'en': 'haw was your exprience with ',
      'pt': 'como foi sua experiência com',
    },
    '04ybgdn1': {
      'en': 'Select Rating',
      'pt': 'Selecione a classificação',
    },
    'jrh9vbui': {
      'en': 'Write a Comment',
      'pt': 'Escreva um comentário',
    },
    'vt7dtz95': {
      'en': 'Review',
      'pt': 'Análise',
    },
    'whg6o6q8': {
      'en': 'Submit Review',
      'pt': 'Enviar avaliação',
    },
    'hhpt050p': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // nearbyPharmacy
  {
    '6g5nif0q': {
      'en': 'Nearby Pharmacy',
      'pt': 'Farmácia próxima',
    },
    '5j14kre3': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // pharmacyCategories
  {
    'lpp8cjzv': {
      'en': 'Categories',
      'pt': 'Categorias',
    },
    'l1dtaquy': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PharmacyDiagnosticDetails
  {
    '02e6p1c8': {
      'en': '4.5 (100+ Ratings)',
      'pt': '4,5 (mais de 100 avaliações)',
    },
    'xvkwrxj4': {
      'en': 'Free delivery',
      'pt': 'Entrega grátis',
    },
    'nh3qtylg': {
      'en': 'Map Direction',
      'pt': 'Direção do mapa',
    },
    '6ksd2g34': {
      'en': 'Medicine',
      'pt': 'Medicamento',
    },
    'nooqs2ys': {
      'en': 'Search',
      'pt': 'Procurar',
    },
    'numdgyiw': {
      'en': 'About Us',
      'pt': 'Sobre nós',
    },
    '35ksu6bc': {
      'en': 'About Us',
      'pt': 'Sobre nós',
    },
    '00bku2px': {
      'en':
          'Pellentesque egestas sit tincidunt porta leo a con se ctetur. At nisl semper urna vitae sed\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Odio vitae scelerisque sed ut. Tellus viverra facil isi sagittis hac. Ac imperdiet ultrices fringilla curabit ur nullam nibh amet, eu. \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Et consequat aliquet massa mattis nec, suscipit erat. Cras dui, purus neque consectetur. Lectus non ac tempus aliquam urna, sit donec. Eu aliquet et eget penatibus egestas mattis sed. Dolor ipsum eu et molestie. Neque nibh vulputate molestie amet morbi odio. At elementum, rhoncus, magna ipsum, et morbi dictum porttitor. Tincidunt imperdiet bibendum nec volutpat amet, sed pulvinar pellentesque consectetur. Urna nunc, id nibh facilisis amet urna non. Nisi justo, eu risus id. Ut duis faucibus arcu nibh.',
      'pt':
          'Pellentesque egestas sit tincidunt porta leo a con se ctetur. At nisl sempre urna vitae sed Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio vitae scelerisque sed ut. Tellus viverra facil isi sagittis hac. Ac imperdiet ultrices fringilla curabit ur nullam nibh amet, eu. \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Et consequat aliquet massa mattis nec, suscipit erat. Cras dui, purus neque consectetur. Lectus non ac tempus aliquam urna, sit donec. Eu aliquet et eget penatibus egestas mattis sed. Dolor ipsum eu et molestie. Neque nibh vulputate molestie amet morbi odio. At elementum, rhoncus, magna ipsum, et morbi dictum porttitor. Tincidunt imperdiet bibendum nec volutpat amet, sed pulvinar pellentesque consectetur. Urna nunc, id nibh facilisis amet urna non. Nisi justo, eu risus id. Ut duis faucibus arcu nibh.',
    },
    'x61mr3ku': {
      'en': 'Open and Closed',
      'pt': 'Aberto e Fechado',
    },
    'c7n8t35a': {
      'en': 'Open - Closed',
      'pt': 'Aberto - Fechado',
    },
    'sqdxdhai': {
      'en': 'Monday',
      'pt': 'Segunda-feira',
    },
    'zzfc9hjk': {
      'en': 'Tuesday',
      'pt': 'Terça-feira',
    },
    'ocv91md4': {
      'en': 'Wednesday',
      'pt': 'Quarta-feira',
    },
    'r5v6t3ta': {
      'en': 'Thursday',
      'pt': 'Quinta-feira',
    },
    '3ifzb1q9': {
      'en': 'Friday',
      'pt': 'Sexta-feira',
    },
    '7uyb80dj': {
      'en': 'Saturday',
      'pt': 'Sábado',
    },
    '20qf8bf0': {
      'en': 'Sunday',
      'pt': 'Domingo',
    },
    'aly1r7od': {
      'en': '10:00 AM - 10:00 PM',
      'pt': '10:00 AM - 10:00 PM',
    },
    '4yxfjbdr': {
      'en': '10:00 AM - 10:00 PM',
      'pt': '10:00 AM - 10:00 PM',
    },
    '7ulusekf': {
      'en': '10:00 AM - 10:00 PM',
      'pt': '10:00 AM - 10:00 PM',
    },
    'tchz9k4u': {
      'en': '10:00 AM - 10:00 PM',
      'pt': '10:00 AM - 10:00 PM',
    },
    '6h88fh54': {
      'en': '10:00 AM - 10:00 PM',
      'pt': '10:00 AM - 10:00 PM',
    },
    'g0v1dvao': {
      'en': '10:00 AM - 10:00 PM',
      'pt': '10:00 AM - 10:00 PM',
    },
    '6v3mvbwh': {
      'en': 'Closed',
      'pt': 'Fechado',
    },
    'fus1osix': {
      'en': 'Rating',
      'pt': 'Avaliação',
    },
    'ku3pfc4o': {
      'en': 'Reviews(60)',
      'pt': 'Avaliações(60)',
    },
    'awpzfqn5': {
      'en': '4.9',
      'pt': '4.9',
    },
    'q6rx04mc': {
      'en': 'Upload Prescription',
      'pt': 'Carregar receita',
    },
    'x084fvcq': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // MedicineDetails
  {
    'kjo1nlea': {
      'en': 'Get 10% OFF',
      'pt': 'Ganhe 10% DE DESCONTO',
    },
    'mxquixi1': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    'sr4i1vg4': {
      'en': '10 Tablets',
      'pt': '10 comprimidos',
    },
    'ovemhpzy': {
      'en': '20 Tablets',
      'pt': '20 comprimidos',
    },
    '5jb2jib4': {
      'en': '30 Tablets',
      'pt': '30 comprimidos',
    },
    'hmlx35h7': {
      'en': '40 Tablets',
      'pt': '40 comprimidos',
    },
    'q3x4ze91': {
      'en': 'Please select...',
      'pt': 'Por favor selecione...',
    },
    'xe1hrlt8': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'yryfqqw8': {
      'en': '• Fever',
      'pt': '• Febre',
    },
    '8afkcieb': {
      'en': '• No common side effects seen',
      'pt': '• Nenhum efeito colateral comum observado',
    },
    '5cvlwbg5': {
      'en':
          'Take this medicine in the dose and duration as advised by your doctor. Swallow it as a whole. Do not chew, crush or break it. Napa Extend is to be taken with food.',
      'pt':
          'Tome este medicamento na dose e duração conforme recomendado pelo seu médico. Engula-o inteiro. Não mastigue, esmague ou quebre. O Napa Extend deve ser tomado com alimentos.',
    },
    'tdbilx59': {
      'en': 'View Cart',
      'pt': 'Ver carrinho',
    },
    '2o5kom9d': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // MyCart
  {
    'o2h0zgub': {
      'en': 'My Cart',
      'pt': 'Meu carrinho',
    },
    '6x6maynk': {
      'en': 'Total 2 items',
      'pt': 'Total de 2 itens',
    },
    '8ch1rmd8': {
      'en': 'Cancel ',
      'pt': 'Cancelar',
    },
    '0z9lkn1s': {
      'en': 'Edit',
      'pt': 'Editar',
    },
    '7mak5qom': {
      'en': 'Promo Code',
      'pt': 'Código Promocional',
    },
    '3uyv33cm': {
      'en': 'Coupon code',
      'pt': 'Código de cupom',
    },
    'z0x52z7a': {
      'en': 'Apply',
      'pt': 'Aplicar',
    },
    'mltw77vp': {
      'en': 'Subtotal',
      'pt': 'Subtotal',
    },
    'tvqzrequ': {
      'en': '\$12.98',
      'pt': 'US\$ 12,98',
    },
    'bv8us8yp': {
      'en': 'Delivery Fee',
      'pt': 'Taxa de entrega',
    },
    'op3449fz': {
      'en': '\$2.00',
      'pt': '\$ 2,00',
    },
    'aqif8229': {
      'en': 'VAT',
      'pt': 'CUBA',
    },
    'hxzmmzrb': {
      'en': '\$0.00',
      'pt': '\$ 0,00',
    },
    '9xjdm7w5': {
      'en': 'Total Amount',
      'pt': 'Montante total',
    },
    'ly9n5w4f': {
      'en': '\$14.98',
      'pt': 'US\$ 14,98',
    },
    '66kyypcw': {
      'en': 'Check out',
      'pt': 'Confira',
    },
    'bc0lzp4h': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // CheckOut
  {
    'cl5ft3by': {
      'en': 'Check Out',
      'pt': 'Confira',
    },
    'ztzz6ch0': {
      'en': 'Shipping Address',
      'pt': 'Endereço para envio',
    },
    'deb3prpo': {
      'en': 'John Doe',
      'pt': 'João Ninguém',
    },
    '4qdy581f': {
      'en': 'Change',
      'pt': 'Mudar',
    },
    '3v08zxz5': {
      'en': '8 Bukit Batok Street 41, Bangladesh, \n361025',
      'pt': 'Rua Bukit Batok 41, Bangladesh, 361025',
    },
    'i9knjo3j': {
      'en': 'Payment Methord',
      'pt': 'Método de pagamento',
    },
    'vcqqw8n5': {
      'en': 'Change',
      'pt': 'Mudar',
    },
    '73hrho6i': {
      'en': 'Your Order',
      'pt': 'Seu pedido',
    },
    '9us8z6n1': {
      'en': 'Subtotal',
      'pt': 'Subtotal',
    },
    'tld509wa': {
      'en': '\$12.98',
      'pt': 'US\$ 12,98',
    },
    '3r36ur4f': {
      'en': 'Delivery Fee',
      'pt': 'Taxa de entrega',
    },
    'u1cn988b': {
      'en': '\$2.00',
      'pt': '\$ 2,00',
    },
    'doiln86j': {
      'en': 'VAT',
      'pt': 'CUBA',
    },
    'bp5jybj6': {
      'en': '\$0.00',
      'pt': '\$ 0,00',
    },
    'efjcq3o3': {
      'en': 'Total Amount',
      'pt': 'Montante total',
    },
    '8ycnbjv1': {
      'en': '\$14.98',
      'pt': 'US\$ 14,98',
    },
    'y2u5zyye': {
      'en': 'Place Order',
      'pt': 'Fazer pedido',
    },
    '64bdioac': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // ShippingAddress
  {
    'yw0e1bof': {
      'en': 'Shipping Address',
      'pt': 'Endereço para envio',
    },
    'rp2gjfqh': {
      'en': 'Select Shipping Address',
      'pt': 'Selecione o endereço de entrega',
    },
    'vx7rbstl': {
      'en': 'Change',
      'pt': 'Mudar',
    },
    'oia33tlx': {
      'en': 'Add New Address',
      'pt': 'Adicionar novo endereço',
    },
    '2b5mjcpx': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // PaymentMethod
  {
    'cyl0kesa': {
      'en': 'Payment Methord',
      'pt': 'Método de pagamento',
    },
    'ooxguc7y': {
      'en': 'Your Payment Cards',
      'pt': 'Seus cartões de pagamento',
    },
    'ta5lhl39': {
      'en': 'Use as the payment methord',
      'pt': 'Usar como método de pagamento',
    },
    '15wjzecp': {
      'en': 'Use as the payment methord',
      'pt': 'Usar como método de pagamento',
    },
    'y594tq7z': {
      'en': 'Add New Card',
      'pt': 'Adicionar novo cartão',
    },
    '4wgu5aaa': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // ConfirmYourOrder
  {
    '47j7ke1b': {
      'en': 'Confirm Your Order',
      'pt': 'Confirme seu pedido',
    },
    'bkubs7lk': {
      'en': 'Total Item (3)',
      'pt': 'Total de itens (3)',
    },
    '2vkze9mg': {
      'en': '01 Bottel',
      'pt': '01 Garrafa',
    },
    '73qeggki': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    'qv86886v': {
      'en': 'Pharmacy ',
      'pt': 'Farmácia',
    },
    'r01z84fh': {
      'en': 'Maan Pharmacy Ltd.',
      'pt': 'Farmácia Maan Ltda.',
    },
    'ricdwz67': {
      'en': ' 2715 Ash Dr. San Jose, South Dakota 83475',
      'pt': '2715 Ash Dr. San José, Dakota do Sul 83475',
    },
    'unlz2hzq': {
      'en': 'Shipping Address ',
      'pt': 'Endereço para envio',
    },
    'ia8z11nn': {
      'en': 'Change',
      'pt': 'Mudar',
    },
    '32gw54nd': {
      'en': '8 Bukit Batok Street 41, Bangladesh, \n361025',
      'pt': 'Rua Bukit Batok 41, Bangladesh, 361025',
    },
    'r432ww5s': {
      'en': 'Payment Method',
      'pt': 'Método de pagamento',
    },
    'ndzwnqca': {
      'en': 'Change',
      'pt': 'Mudar',
    },
    'ypv7l480': {
      'en': 'Your Order',
      'pt': 'Seu pedido',
    },
    'y2l4qbm5': {
      'en': 'Subtotal',
      'pt': 'Subtotal',
    },
    'ehkj1cck': {
      'en': '\$12.98',
      'pt': 'US\$ 12,98',
    },
    'klz4z2mm': {
      'en': 'Delivery Fee',
      'pt': 'Taxa de entrega',
    },
    'alrc4smx': {
      'en': '\$2.00',
      'pt': '\$ 2,00',
    },
    'ztxbcy5y': {
      'en': 'VAT',
      'pt': 'CUBA',
    },
    '5an4auat': {
      'en': '\$0.00',
      'pt': '\$ 0,00',
    },
    'xfmikmt4': {
      'en': 'Total Amount',
      'pt': 'Montante total',
    },
    '2928rko8': {
      'en': '\$14.98',
      'pt': 'US\$ 14,98',
    },
    'usyllm3p': {
      'en': 'Place Order',
      'pt': 'Fazer pedido',
    },
    '0n2bhgh9': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // YourOrderSuccessfully
  {
    'yenhlqod': {
      'en': 'Your Order Successfully Placed!',
      'pt': 'Seu pedido foi feito com sucesso!',
    },
    'vv5ze004': {
      'en': 'Estimated Delivery Time',
      'pt': 'Tempo estimado de entrega',
    },
    'z3u2jtmb': {
      'en': '35 - 50 Mins',
      'pt': '35 - 50 minutos',
    },
    'iiy134u5': {
      'en': 'Order Details',
      'pt': 'Detalhes do pedido',
    },
    'c28beo0m': {
      'en': 'Your order Number:',
      'pt': 'Número do seu pedido:',
    },
    'ndipnqao': {
      'en': '#s5jc-226',
      'pt': '#s5jc-226',
    },
    'sd3i9cy7': {
      'en': 'Your order from:',
      'pt': 'Seu pedido de:',
    },
    '2tz1v961': {
      'en': 'Maan Pharmacy Ltd.',
      'pt': 'Farmácia Maan Ltda.',
    },
    'wrh2s5ks': {
      'en': 'Delivery Addesss:',
      'pt': 'Endereço de entrega:',
    },
    'upt00ojd': {
      'en': '8 Bukit Batok Street 41, \nBangladesh, 361025',
      'pt': 'Rua Bukit Batok 41, Bangladesh, 361025',
    },
    'ulu7jbkt': {
      'en': 'Total (incl. VAT)',
      'pt': 'Total (incl. IVA)',
    },
    'vv0nmqpg': {
      'en': '\$13.59',
      'pt': '\$ 13,59',
    },
    '8n3mztd9': {
      'en': 'View Details (3 items)',
      'pt': 'Ver detalhes (3 itens)',
    },
    'gadgnx0y': {
      'en': 'Track My Order',
      'pt': 'Rastrear meu pedido',
    },
    'flqjz6k4': {
      'en': 'Back to Home',
      'pt': 'Voltar para casa',
    },
    '3op2m9wu': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // TrackMyOrder
  {
    '3x3hhtew': {
      'en': 'Track My Order',
      'pt': 'Rastrear meu pedido',
    },
    '0jzcdl7s': {
      'en': 'Ibne Riead',
      'pt': 'Ibne Riead',
    },
    'nlmlr8do': {
      'en': 'Pharmecy Courier',
      'pt': 'Farmácia Correio',
    },
    '5v313t6o': {
      'en': '4.9 (60)',
      'pt': '4.9 (60)',
    },
    'th2phk6c': {
      'en': 'Address',
      'pt': 'Endereço',
    },
    'jk7wulab': {
      'en': '421 Duke street, M54ader',
      'pt': '421 Duke Street, M54ader',
    },
    'hizftnsn': {
      'en': 'Delivery Time',
      'pt': 'Prazo de entrega',
    },
    'pq0bl62u': {
      'en': '20-30 minutes',
      'pt': '20-30 minutos',
    },
    'wmvxjjbk': {
      'en': 'Order# ',
      'pt': 'Ordem#',
    },
    '1vym53sf': {
      'en': '141428',
      'pt': '141428',
    },
    'eto0k5r7': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // OrderDetails
  {
    'tvrq9w8o': {
      'en': 'Order Details',
      'pt': 'Detalhes do pedido',
    },
    '4u1qwjxb': {
      'en': '12 February, 2024',
      'pt': '12 de fevereiro de 2024',
    },
    'e76m4b9a': {
      'en': '01 Bottel',
      'pt': '01 Garrafa',
    },
    'i4oi5jn5': {
      'en': 'Qty: 01',
      'pt': 'Qtd: 01',
    },
    'iiffg6xc': {
      'en': 'Order Details',
      'pt': 'Detalhes do pedido',
    },
    'jmmsv2kn': {
      'en': 'Your order Number:',
      'pt': 'Número do seu pedido:',
    },
    '5ydl6tyg': {
      'en': '#s5jc-226',
      'pt': '#s5jc-226',
    },
    '3ht6jymf': {
      'en': 'Your order from:',
      'pt': 'Seu pedido de:',
    },
    '8fvi1ziq': {
      'en': 'Maan Pharmacy Ltd.',
      'pt': 'Farmácia Maan Ltda.',
    },
    'w83y3a0r': {
      'en': 'Delivery Addesss:',
      'pt': 'Endereço de entrega:',
    },
    '1k4e7zgp': {
      'en': '8 Bukit Batok Street 41, \nBangladesh, 361025',
      'pt': 'Rua Bukit Batok 41, Bangladesh, 361025',
    },
    '0b6tz2pe': {
      'en': 'Payment Method',
      'pt': 'Método de pagamento',
    },
    'zalv515w': {
      'en': 'Total (incl. VAT)',
      'pt': 'Total (incl. IVA)',
    },
    'ul3t4yke': {
      'en': '\$14.98',
      'pt': 'US\$ 14,98',
    },
    '10x7p44o': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'z2mos9w7': {
      'en': 'Track My Order',
      'pt': 'Rastrear meu pedido',
    },
    '6p2ur6t1': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Diagnostics
  {
    '2bw5uy00': {
      'en': 'Diagnostics',
      'pt': 'Diagnóstico',
    },
    'c97y5v6w': {
      'en': 'Services Up To',
      'pt': 'Serviços até',
    },
    '4j1vjeeu': {
      'en': '30% OFF',
      'pt': '30% DE DESCONTO',
    },
    '7q833ft9': {
      'en': 'View More',
      'pt': 'Ver mais',
    },
    'phwgnuou': {
      'en': 'Categories',
      'pt': 'Categorias',
    },
    'uhhjs686': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    '9xmm1pxo': {
      'en': 'Nearby Diagnostics',
      'pt': 'Diagnósticos Próximos',
    },
    'gq33r05u': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'yggj7g6e': {
      'en': 'Popular Diagnostics',
      'pt': 'Diagnósticos populares',
    },
    'mrm8gey2': {
      'en': 'View All',
      'pt': 'Ver tudo',
    },
    'r9xkeoom': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // History
  {
    'fp9rorcz': {
      'en': 'My History',
      'pt': 'Minha História',
    },
    'mpaat22s': {
      'en': 'Appointment History',
      'pt': 'Histórico de compromissos',
    },
    'tbz2fb1p': {
      'en': 'Diagnostic History',
      'pt': 'Histórico de diagnóstico',
    },
    '579ae3bv': {
      'en': 'Prescription History',
      'pt': 'Histórico de Prescrição',
    },
    '7whv352h': {
      'en': 'Nursing Care History',
      'pt': 'Histórico de cuidados de enfermagem',
    },
    '13u2fay5': {
      'en': 'Ambulance History',
      'pt': 'História da Ambulância',
    },
    'd21vbswe': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Profile
  {
    'mmx8sl3t': {
      'en': 'Profile',
      'pt': 'Perfil',
    },
    'tb6mie2u': {
      'en': 'Ibne Riead',
      'pt': 'Ibne Riead',
    },
    'tp73t6t2': {
      'en': 'Phone Number: 01855671615',
      'pt': 'Número de telefone: 01855671615',
    },
    'jk5bot1m': {
      'en': 'User ID: #74957485',
      'pt': 'ID do usuário: #74957485',
    },
    'b7kk4ax2': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    'r7bhu1gq': {
      'en': 'History',
      'pt': 'História',
    },
    'ug0j8tj6': {
      'en': 'Language',
      'pt': 'Linguagem',
    },
    '3od7x9b1': {
      'en': 'Weekly checkup',
      'pt': 'Check-up semanal',
    },
    'xem2swn4': {
      'en': 'Medicine Reminders',
      'pt': 'Lembretes de medicamentos',
    },
    'e7448whm': {
      'en': 'Rate Us',
      'pt': 'Avalie-nos',
    },
    'iyn0ruv6': {
      'en': 'About Us',
      'pt': 'Sobre nós',
    },
    'q91m6o0k': {
      'en': 'Log Out',
      'pt': 'Sair',
    },
    '9dpfkwxn': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // BookAppointmentDiagnostics
  {
    'l4xihj0l': {
      'en': 'Book Appointment',
      'pt': 'Agendar consulta',
    },
    'miyrj3ac': {
      'en': 'Specialist Doctor',
      'pt': 'Médico especialista',
    },
    'q19nvhv4': {
      'en': '12 July, 2022',
      'pt': '12 de julho de 2022',
    },
    'ipk7j3kp': {
      'en': 'Available Time',
      'pt': 'Tempo disponível',
    },
    'jmiqmv2a': {
      'en': 'Morning',
      'pt': 'Manhã',
    },
    'zipnkspp': {
      'en': 'Afternoon',
      'pt': 'Tarde',
    },
    'jkvzstnj': {
      'en': 'Evening',
      'pt': 'Noite',
    },
    'u9enx1ic': {
      'en': 'Check-up Fees',
      'pt': 'Taxas de check-up',
    },
    'i05qzhf8': {
      'en': 'Covid RT PCR',
      'pt': 'PCR RT Covid-19',
    },
    '6guzs8a0': {
      'en': '5\$',
      'pt': '5\$',
    },
    'j4nmax3b': {
      'en': 'Your Preferred Service',
      'pt': 'Seu serviço preferido',
    },
    'cdtnwrnk': {
      'en': 'Through Hospital (Physically I will come and give my test sample)',
      'pt':
          'Através do Hospital (Fisicamente irei e darei minha amostra de teste)',
    },
    'xkhvdmwf': {
      'en': 'Home Service (Collect my test sample)',
      'pt': 'Serviço em domicílio (Colete minha amostra de teste)',
    },
    'p4ead67u': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'k9hak05u': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // DiagnosticsDetils
  {
    'uodom7ci': {
      'en': 'Diagnostics Details',
      'pt': 'Detalhes do diagnóstico',
    },
    'eybe5186': {
      'en': '25 May 22 - 10:00 AM',
      'pt': '25 de maio de 22 - 10:00 AM',
    },
    'b2sf94je': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    'nij4u0w2': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    's609s70w': {
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
    'qb87jc8n': {
      'en': 'Covid RT PCR',
      'pt': 'PCR RT Covid-19',
    },
    '51ejjuxj': {
      'en': 'Hospital ',
      'pt': 'Hospital',
    },
    'mgtw8r1d': {
      'en': 'National Institute of Cancer Research& Hospital',
      'pt': 'Instituto Nacional de Pesquisa do Câncer e Hospital',
    },
    '87wto9qf': {
      'en': 'Visit time',
      'pt': 'Horário de visita',
    },
    'ojq9v7a8': {
      'en': 'Afternoon',
      'pt': 'Tarde',
    },
    'ujm1xr7d': {
      'en': 'Today - 12 July, 2022',
      'pt': 'Hoje - 12 de julho de 2022',
    },
    'yzdlqiix': {
      'en': '01:00 PM',
      'pt': '01:00 PM',
    },
    'rj6ai8d7': {
      'en': 'Patient information',
      'pt': 'Informações do paciente',
    },
    '4niakphc': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'xc242nm0': {
      'en': 'Age',
      'pt': 'Idade',
    },
    'e9bmvo0g': {
      'en': 'Gender',
      'pt': 'Gênero',
    },
    'h7mvx1il': {
      'en': 'Phone',
      'pt': 'Telefone',
    },
    'oh47ydmo': {
      'en': ':',
      'pt': ':',
    },
    'knltqblv': {
      'en': ':',
      'pt': ':',
    },
    '79form6q': {
      'en': ':',
      'pt': ':',
    },
    'qn1d98oo': {
      'en': ':',
      'pt': ':',
    },
    'frwh9ogr': {
      'en': 'Guy Hawkins',
      'pt': 'Cara Hawkins',
    },
    'ly40il9z': {
      'en': '25',
      'pt': '25',
    },
    '3l90i1g5': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'ahq0n4nw': {
      'en': '01855671645',
      'pt': '01855671645',
    },
    'ipodpq55': {
      'en': 'Consultation Fees',
      'pt': 'Honorários de consulta',
    },
    '1ze8pol0': {
      'en': 'Paid',
      'pt': 'Pago',
    },
    'kebc7vmv': {
      'en': 'Fees',
      'pt': 'Tarifas',
    },
    'd2rr2ror': {
      'en': ':',
      'pt': ':',
    },
    '0t2bqwyu': {
      'en': ':',
      'pt': ':',
    },
    '8lmrigzg': {
      'en': 'Video Call',
      'pt': 'Chamada de vídeo',
    },
    'ynr0gix6': {
      'en': '\$15',
      'pt': '\$15',
    },
    'pqndz53f': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    '422xd3v6': {
      'en': 'Write a Review',
      'pt': 'Escreva uma avaliação',
    },
    'lfe6wgiz': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Ambulance
  {
    'hrzufdwd': {
      'en': 'General Ambulance',
      'pt': 'Ambulância Geral',
    },
    'xdz1eilu': {
      'en': 'ICU Ambulance',
      'pt': 'Ambulância UTI',
    },
    'vc30ddqt': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    'yw8vwoxn': {
      'en': 'Ambulance',
      'pt': 'Ambulância',
    },
    'xydiisv9': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // BookAmbulance
  {
    'e3k1bm3n': {
      'en': 'General Ambulance',
      'pt': 'Ambulância Geral',
    },
    'y237dikd': {
      'en': 'ICU Ambulance',
      'pt': 'Ambulância UTI',
    },
    'w4e0he3x': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    'yg7suksw': {
      'en': 'Pickup Point',
      'pt': 'Ponto de coleta',
    },
    'rzb0gb2a': {
      'en': 'Badda',
      'pt': 'Badda',
    },
    '2dt8lq2e': {
      'en': 'Bangshal',
      'pt': 'Bangshal',
    },
    '03ly5g05': {
      'en': 'Biman Bandar',
      'pt': 'Biman Bandar',
    },
    '9m3vnjl8': {
      'en': 'Dhanmondi',
      'pt': 'Dhanmondi',
    },
    'oq9fw6rv': {
      'en': 'Canteonment',
      'pt': 'Canteonment',
    },
    '9gj7k6l5': {
      'en': 'Select Area',
      'pt': 'Selecione a área',
    },
    'ibf2e7j8': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'ichfe6ox': {
      'en': 'Detail Address ',
      'pt': 'Endereço detalhado',
    },
    '9mzlt2bd': {
      'en': 'Enter your address',
      'pt': 'Insira seu endereço',
    },
    '4qvoq6ns': {
      'en': 'Destination Point',
      'pt': 'Ponto de destino',
    },
    'zt7uxtyi': {
      'en': 'Badda',
      'pt': 'Badda',
    },
    '0undds87': {
      'en': 'Bangshal',
      'pt': 'Bangshal',
    },
    'f95ziqss': {
      'en': 'Biman Bandar',
      'pt': 'Biman Bandar',
    },
    'd89kv0u8': {
      'en': 'Dhanmondi',
      'pt': 'Dhanmondi',
    },
    '3pea3ak3': {
      'en': 'Canteonment',
      'pt': 'Canteonment',
    },
    '4c70buzw': {
      'en': 'Select Area',
      'pt': 'Selecione a área',
    },
    '7fmqm1jz': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    's3cxp54v': {
      'en': 'Detail Address ',
      'pt': 'Endereço detalhado',
    },
    'p6hgx32h': {
      'en': 'Enter your address',
      'pt': 'Insira seu endereço',
    },
    '4ytef93z': {
      'en': 'Total Payable',
      'pt': 'Total a Pagar',
    },
    'w0s2mdo0': {
      'en': '\$250.00',
      'pt': '\$ 250,00',
    },
    'xy8whkms': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    '939wv37s': {
      'en': 'Book Ambulance',
      'pt': 'Livro Ambulância',
    },
    'evhuv3ek': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // ConfirmAmbulanceBook
  {
    'wyhyu60h': {
      'en': 'General Ambulance',
      'pt': 'Ambulância Geral',
    },
    's65wyxms': {
      'en': 'ICU Ambulance',
      'pt': 'Ambulância UTI',
    },
    'apwuqlph': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    '9hw9w21w': {
      'en': 'Map Direction ',
      'pt': 'Direção do mapa',
    },
    'ofyiw0s7': {
      'en': 'Pickup Point: ',
      'pt': 'Ponto de coleta:',
    },
    '0ecfkdqb': {
      'en': 'Badda, 8 Bukit Batok Street 41, Bangladesh, 361025',
      'pt': 'Badda, 8 Bukit Batok Street 41, Bangladesh, 361025',
    },
    'krhlv7ez': {
      'en': 'Destination Point:',
      'pt': 'Ponto de destino:',
    },
    '947jb9im': {
      'en': 'House # 34/35, Road # 14/A (New), Dhanmondi R/A, Dhaka-1209',
      'pt': 'Casa # 34/35, Estrada # 14/A (Nova), Dhanmondi R/A, Dhaka-1209',
    },
    'wtp2pjxz': {
      'en': 'Price',
      'pt': 'Preço',
    },
    'wl55jqfs': {
      'en': '\$250',
      'pt': '\$ 250',
    },
    'gn9v4v9c': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'jhbhsnyg': {
      'en': 'Confirm',
      'pt': 'Confirmar',
    },
    'fcwul6e9': {
      'en': 'Book Ambulance',
      'pt': 'Livro Ambulância',
    },
    'z382a4wb': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // NursingCare
  {
    '90t96nvr': {
      'en': 'About Nussing Care',
      'pt': 'Sobre o Nussing Care',
    },
    '14lru3sp': {
      'en': 'Lorem ipsum dolor sit amet i\ns consectetur adipiscin...',
      'pt': 'Lorem ipsum dolor sit amet i s consectetur adipiscin...',
    },
    'p5o6e8dl': {
      'en': 'Read More',
      'pt': 'Ler mais',
    },
    'fnfpck9k': {
      'en': 'Full Day Packs',
      'pt': 'Pacotes de dia inteiro',
    },
    '0gmb9nvs': {
      'en': 'Half Day Packs',
      'pt': 'Pacotes de meio dia',
    },
    '71d564lg': {
      'en': 'Nursing Care',
      'pt': 'Cuidados de Enfermagem',
    },
    'jx97zb6s': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // NursingPacks
  {
    '6yvrt9uv': {
      'en': '1 Day Packs',
      'pt': 'Pacotes de 1 dia',
    },
    '28bsd6ka': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    'bzyfe7cp': {
      'en': '\$500',
      'pt': '\$ 500',
    },
    'fws64ath': {
      'en': '3 Day Packs',
      'pt': 'Pacotes de 3 dias',
    },
    'p3sznkca': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    '0pwj8rrz': {
      'en': '\$700',
      'pt': '\$ 700',
    },
    'iixlqzqd': {
      'en': '5 Day Packs',
      'pt': 'Pacotes de 5 dias',
    },
    'a6x5rwlk': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    'majshcuu': {
      'en': '\$800',
      'pt': '\$ 800',
    },
    'slw560wu': {
      'en': '7 Day Packs',
      'pt': 'Pacotes de 7 dias',
    },
    'u98m9hh7': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    '0vulwu0v': {
      'en': '\$900',
      'pt': '\$ 900',
    },
    'vbvua26t': {
      'en': '10 Day Packs',
      'pt': 'Pacotes de 10 dias',
    },
    'aqugo4j7': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    '90y17a86': {
      'en': '\$1200',
      'pt': '\$ 1200',
    },
    '7h07wd14': {
      'en': '15 Day Packs',
      'pt': 'Pacotes de 15 dias',
    },
    'xmmtc4dk': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    'igmp35zq': {
      'en': '\$1500',
      'pt': '\$ 1500',
    },
    'heny57ic': {
      'en': '20 Day Packs',
      'pt': 'Pacotes de 20 dias',
    },
    '3qbo2ptu': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    'ugmlhk7t': {
      'en': '\$1700',
      'pt': '\$ 1700',
    },
    'tczm8qc7': {
      'en': '30 Day Packs',
      'pt': 'Pacotes de 30 dias',
    },
    '5uktrw6g': {
      'en': 'Price: ',
      'pt': 'Preço:',
    },
    'ajorz5yr': {
      'en': '\$2000',
      'pt': '\$ 2000',
    },
    'mzu0f19m': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // NurseDayPack
  {
    'vwak9h40': {
      'en': 'Select Service',
      'pt': 'Selecione o serviço',
    },
    'a9e1obd1': {
      'en': 'Home Care',
      'pt': 'Cuidados Domiciliares',
    },
    'zczd2fsm': {
      'en': 'Hospital Care',
      'pt': 'Cuidados hospitalares',
    },
    '05eyu7cw': {
      'en': 'Select Service',
      'pt': 'Selecione o serviço',
    },
    'tcd8fs1n': {
      'en': 'Nurse will be present in the workplace on time.',
      'pt':
          'O enfermeiro estará presente no local de trabalho no horário marcado.',
    },
    'f3tp21ou': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipisc ing elit. Felis volutpat dictumst',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipisc ing elit. Dito de Felis volutpat',
    },
    'o57c1xz3': {
      'en':
          'pellentesque enim, libero augue sed. Sagittis ult rices quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
      'pt':
          'pellentesque enim, libero augue sed. Sagittis ult arrozes quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
    },
    'k9c7e3jo': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipisc ing elit. Felis volutpat dictumst',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipisc ing elit. Dito de Felis volutpat',
    },
    'y2qp1pvd': {
      'en':
          'pellentesque enim, libero augue sed. Sagittis ult rices quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
      'pt':
          'pellentesque enim, libero augue sed. Sagittis ult arrozes quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
    },
    'i09kc8xm': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipisc ing elit. Felis volutpat dictumst',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipisc ing elit. Dito de Felis volutpat',
    },
    'upydyeyd': {
      'en': 'Nurse will be present in the workplace on time.',
      'pt':
          'O enfermeiro estará presente no local de trabalho no horário marcado.',
    },
    'i0xi597o': {
      'en':
          'pellentesque enim, libero augue sed. Sagittis ult rices quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
      'pt':
          'pellentesque enim, libero augue sed. Sagittis ult arrozes quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
    },
    'uk3o832z': {
      'en':
          'pellentesque enim, libero augue sed. Sagittis ult rices quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
      'pt':
          'pellentesque enim, libero augue sed. Sagittis ult arrozes quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
    },
    's7jco4dm': {
      'en':
          'pellentesque enim, libero augue sed. Sagittis ult rices quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
      'pt':
          'pellentesque enim, libero augue sed. Sagittis ult arrozes quisque purus id euismod diam orci cura bitur sodales Et sollicitudin',
    },
    'iing0mpa': {
      'en': '\n',
      'pt': '',
    },
    'nav9tzuv': {
      'en': 'Book Now',
      'pt': 'Reserve agora',
    },
    'umonwj00': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // NurseBook
  {
    '23w5ovk4': {
      'en': 'Book Nurse',
      'pt': 'Enfermeira do livro',
    },
    '8qto8a3u': {
      'en': 'Select Date',
      'pt': 'Selecione a data',
    },
    '8oysqae6': {
      'en': 'Start Date',
      'pt': 'Data de início',
    },
    '8trwh5iq': {
      'en': '',
      'pt': '',
    },
    'jqtxbnef': {
      'en': 'End Date',
      'pt': 'Data de término',
    },
    'tvvhgqm1': {
      'en': '',
      'pt': '',
    },
    'zhqf88pj': {
      'en': 'Phone Number*',
      'pt': 'Número de telefone*',
    },
    'gs1b4unw': {
      'en': 'Enter your phone number',
      'pt': 'Insira seu número de telefone',
    },
    '9gd3qv6e': {
      'en': 'Email (optional)',
      'pt': 'E-mail (opcional)',
    },
    '8aojd9gk': {
      'en': 'Enter your email',
      'pt': 'Insira seu e-mail',
    },
    'dw6ttymr': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'psips4a0': {
      'en': 'Female',
      'pt': 'Fêmea',
    },
    '69poq74i': {
      'en': 'Select gender',
      'pt': 'Selecione gênero',
    },
    'qgoayme5': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'pl3w2djx': {
      'en': '0-10',
      'pt': '0-10',
    },
    'acfg1olu': {
      'en': '11-18',
      'pt': '11-18',
    },
    'dvwfjs9o': {
      'en': '19-35',
      'pt': '19-35',
    },
    'mufl5we5': {
      'en': '36-58',
      'pt': '36-58',
    },
    'toye0ypd': {
      'en': '58-75',
      'pt': '58-75',
    },
    '1wcdr98u': {
      'en': '76+',
      'pt': '76+',
    },
    'zozkir2i': {
      'en': 'Select age',
      'pt': 'Selecione a idade',
    },
    'ex8a4zbw': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'p8cxsejt': {
      'en': 'Enter your address',
      'pt': 'Insira seu endereço',
    },
    'vqf5o7pe': {
      'en': 'Address*',
      'pt': 'Endereço*',
    },
    'w34f0h92': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'uase515s': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // NursingCareDetails
  {
    'ma0w2khr': {
      'en': 'Nursing Care Details',
      'pt': 'Detalhes dos cuidados de enfermagem',
    },
    'rwvkhmon': {
      'en': 'Your Service',
      'pt': 'Seu serviço',
    },
    '68cmb1t3': {
      'en': 'Package Type',
      'pt': 'Tipo de pacote',
    },
    'zv6jy3vc': {
      'en': 'Package Name',
      'pt': 'Nome do pacote',
    },
    'n8uysmi3': {
      'en': ':',
      'pt': ':',
    },
    'pql5kfut': {
      'en': ':',
      'pt': ':',
    },
    'snkh5un4': {
      'en': 'Home Care',
      'pt': 'Cuidados Domiciliares',
    },
    'o1lkug04': {
      'en': '1 Day Pack',
      'pt': 'Pacote de 1 dia',
    },
    'gv31u9qz': {
      'en': 'Order Details',
      'pt': 'Detalhes do pedido',
    },
    'xhjix6v2': {
      'en': 'Patient Name',
      'pt': 'Nome do paciente',
    },
    'gs8swru3': {
      'en': 'Date',
      'pt': 'Data',
    },
    'bd82mkvf': {
      'en': 'Total Day',
      'pt': 'Dia total',
    },
    '30l12pdy': {
      'en': 'Address',
      'pt': 'Endereço',
    },
    '9z92qai1': {
      'en': ':',
      'pt': ':',
    },
    'h6y0hdau': {
      'en': ':',
      'pt': ':',
    },
    'csum4404': {
      'en': ':',
      'pt': ':',
    },
    '0g6jmy5j': {
      'en': ':',
      'pt': ':',
    },
    'z1axzadh': {
      'en': 'Guy Hawkins',
      'pt': 'Cara Hawkins',
    },
    'lrtm3fie': {
      'en': '26 Jun2022 - 26 Jun 2022',
      'pt': '26 Jun2022 - 26 Jun 2022',
    },
    '3pv6wvh2': {
      'en': '1 Day',
      'pt': '1 dia',
    },
    '2figjygc': {
      'en': 'House # 34/35',
      'pt': 'Casa # 34/35',
    },
    'd2xnbq23': {
      'en': 'Select Payment Methord',
      'pt': 'Selecione o método de pagamento',
    },
    'o5aik8an': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'lznhhdgt': {
      'en': 'Reschedule',
      'pt': 'Reprogramar',
    },
    'ji3o7bw1': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // AmbulanceDetails
  {
    '944uhzo7': {
      'en': 'General Ambulance',
      'pt': 'Ambulância Geral',
    },
    'qx6kc0fo': {
      'en': 'ICU Ambulance',
      'pt': 'Ambulância UTI',
    },
    '6e5a4yeg': {
      'en': 'Freezing Ambulance',
      'pt': 'Ambulância Congelante',
    },
    'e62t0ps4': {
      'en': 'Map Direction ',
      'pt': 'Direção do mapa',
    },
    'jzys7vby': {
      'en': 'Pickup Point: ',
      'pt': 'Ponto de coleta:',
    },
    'c9riuhkv': {
      'en': 'Badda, 8 Bukit Batok Street 41, Bangladesh, 361025',
      'pt': 'Badda, 8 Bukit Batok Street 41, Bangladesh, 361025',
    },
    'sxgd05qv': {
      'en': 'Destination Point:',
      'pt': 'Ponto de destino:',
    },
    '6knd912r': {
      'en': 'House # 34/35, Road # 14/A (New), Dhanmondi R/A, Dhaka-1209',
      'pt': 'Casa # 34/35, Estrada # 14/A (Nova), Dhanmondi R/A, Dhaka-1209',
    },
    'ig8ow4g0': {
      'en': 'Price',
      'pt': 'Preço',
    },
    'wcuq41gt': {
      'en': '\$250',
      'pt': '\$ 250',
    },
    'qufwclg7': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    's5pj0ity': {
      'en': 'Reschedule',
      'pt': 'Reprogramar',
    },
    'x53wwmiz': {
      'en': 'Book Ambulance',
      'pt': 'Livro Ambulância',
    },
    'dd3fnp5l': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // AboutUs
  {
    'arcz9jfs': {
      'en': 'About Us',
      'pt': 'Sobre nós',
    },
    '845n6joz': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris Mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime',
    },
    'ilpua4ne': {
      'en': 'Our Vision',
      'pt': 'Nossa Visão',
    },
    'tyyjz72n': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris Mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris Mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime',
    },
    '1gealgrf': {
      'en': 'Our Mission',
      'pt': 'Nossa Missão',
    },
    'yars4i4d': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris Mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec tincidunt lectus turpis feugiat amet, nibh. Mauris Mattis aliquam et, amet, consequat vulputate. Est condimentum a ut condime',
    },
    'gmw2mnva': {
      'en': 'About Us',
      'pt': 'Sobre nós',
    },
    'cpjmpb44': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // EditProfile
  {
    'zxg6ygue': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'v46sff7z': {
      'en': 'Ibne Riead',
      'pt': 'Ibne Riead',
    },
    '6u38j20c': {
      'en': 'Phone Number: 01855671615',
      'pt': 'Número de telefone: 01855671615',
    },
    '9b3tvph3': {
      'en': 'User ID: #74957485',
      'pt': 'ID do usuário: #74957485',
    },
    'o5mktuyd': {
      'en': 'Personal Details',
      'pt': 'Dados pessoais',
    },
    '681q0uf0': {
      'en': 'Full Name*',
      'pt': 'Nome completo*',
    },
    'kxts2s98': {
      'en': 'Enter your full name',
      'pt': 'Digite seu nome completo',
    },
    'c3zbtxgg': {
      'en': 'Ibne Riead',
      'pt': 'Ibne Riead',
    },
    'jvbnmu20': {
      'en': 'Email (optional)',
      'pt': 'E-mail (opcional)',
    },
    'v49e08s3': {
      'en': 'Enter your email',
      'pt': 'Insira seu e-mail',
    },
    'v8z936t1': {
      'en': 'ibneriead@mail.com',
      'pt': 'ibneriead@mail.com',
    },
    '3yhsy9n2': {
      'en': 'Phone Number*',
      'pt': 'Número de telefone*',
    },
    'i1gn5by5': {
      'en': 'Enter your phone number',
      'pt': 'Insira seu número de telefone',
    },
    '6kn6uxch': {
      'en': '2365 2568 5645',
      'pt': '2365 2568 5645',
    },
    'h5ezsg9y': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'caebz5lq': {
      'en': 'Male',
      'pt': 'Macho',
    },
    'g030pf70': {
      'en': 'Female',
      'pt': 'Fêmea',
    },
    'kn6s5z8p': {
      'en': 'Select gender',
      'pt': 'Selecione gênero',
    },
    'tpy4dhpz': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'wbk3q8qa': {
      'en': '0-10',
      'pt': '0-10',
    },
    'prjy6cn6': {
      'en': '11-18',
      'pt': '11-18',
    },
    '3vvhyni6': {
      'en': '19-35',
      'pt': '19-35',
    },
    'zdz8wr6p': {
      'en': '36-58',
      'pt': '36-58',
    },
    'pr7xm7au': {
      'en': '58-75',
      'pt': '58-75',
    },
    'td599n7i': {
      'en': '76+',
      'pt': '76+',
    },
    'buhke55d': {
      'en': 'Select age',
      'pt': 'Selecione a idade',
    },
    'fk4ofpsc': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    're7cl5pn': {
      'en': 'A+',
      'pt': 'Um+',
    },
    '3071gc2h': {
      'en': 'A-',
      'pt': 'UM-',
    },
    'bz7y76g9': {
      'en': 'B+',
      'pt': 'B+',
    },
    'y3sinue7': {
      'en': 'B-',
      'pt': 'B-',
    },
    'jxv4h4e8': {
      'en': '0+',
      'pt': '0+',
    },
    '75yzln5i': {
      'en': '0-',
      'pt': '0-',
    },
    'l227er8k': {
      'en': 'AB+',
      'pt': 'AB+',
    },
    'j5kd9yom': {
      'en': 'AB-',
      'pt': 'AB-',
    },
    'riypvsj5': {
      'en': 'Blood Group',
      'pt': 'Grupo sanguíneo',
    },
    'b967iw04': {
      'en': 'Search for an item...',
      'pt': 'Pesquisar um item...',
    },
    'h7w7u98f': {
      'en': 'Weight',
      'pt': 'Peso',
    },
    'gnucbhyx': {
      'en': 'Enter your weight',
      'pt': 'Insira seu peso',
    },
    '83xy3ogq': {
      'en': 'Height',
      'pt': 'Altura',
    },
    'vcefxznn': {
      'en': 'Enter your Height',
      'pt': 'Insira sua altura',
    },
    'ncrx91as': {
      'en': 'Update',
      'pt': 'Atualizar',
    },
    'dz2c85bd': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // MedicineReminders
  {
    'fe96xl9s': {
      'en': 'Medicine Reminders',
      'pt': 'Lembretes de medicamentos',
    },
    'fxzmmngd': {
      'en': '12 July, 2022',
      'pt': '12 de julho de 2022',
    },
    'btcr6ait': {
      'en': 'Today',
      'pt': 'Hoje',
    },
    'q10vykvw': {
      'en': 'Week',
      'pt': 'Semana',
    },
    'zqydsurt': {
      'en': 'Month',
      'pt': 'Mês',
    },
    'n0klnr11': {
      'en': 'Omega 3',
      'pt': 'Ômega 3',
    },
    '3mh1atdd': {
      'en': '1 capsule  | 300 mg',
      'pt': '1 cápsula | 300 mg',
    },
    'r2l6ftky': {
      'en': 'Before Eating',
      'pt': 'Antes de comer',
    },
    'qqskc3ys': {
      'en': 'Breakfast',
      'pt': 'Café da manhã',
    },
    'gq85as8c': {
      'en': 'View Details',
      'pt': 'Ver detalhes',
    },
    'sibbhzeh': {
      'en': 'Multi Vitamin',
      'pt': 'Multivitamínico',
    },
    'wn3aiiul': {
      'en': '2 capsule  | 300 mg',
      'pt': '2 cápsulas | 300 mg',
    },
    'pkxzvj37': {
      'en': 'Before Eating',
      'pt': 'Antes de comer',
    },
    'iccbwzbr': {
      'en': 'Lunch',
      'pt': 'Almoço',
    },
    'kjpyan4z': {
      'en': 'View Details',
      'pt': 'Ver detalhes',
    },
    'acsb4mr8': {
      'en': 'Magnesium',
      'pt': 'Magnésio',
    },
    '4zic4x97': {
      'en': '1 capsule  | 400 mg',
      'pt': '1 cápsula | 400 mg',
    },
    'u9znx2fl': {
      'en': 'After Eating',
      'pt': 'Depois de comer',
    },
    'e7r2ksa6': {
      'en': 'Dinner',
      'pt': 'Jantar',
    },
    '0bu5aoo3': {
      'en': 'View Details',
      'pt': 'Ver detalhes',
    },
    '5qfwg0nd': {
      'en': 'Zink',
      'pt': 'Zinco',
    },
    '7gzhrees': {
      'en': '1 capsule  | 400 mg',
      'pt': '1 cápsula | 400 mg',
    },
    'y7m4zv20': {
      'en': 'Before Eating',
      'pt': 'Antes de comer',
    },
    'nybzdftf': {
      'en': 'Breakfast',
      'pt': 'Café da manhã',
    },
    'adoi98tk': {
      'en': 'View Details',
      'pt': 'Ver detalhes',
    },
    'sznsdy85': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // RateUs
  {
    'fdf69w2g': {
      'en': 'Rate Us',
      'pt': 'Avalie-nos',
    },
    '4iqn9gta': {
      'en': 'How was your exprience with ',
      'pt': 'Como foi sua experiência com',
    },
    'zcp3yw93': {
      'en': 'Doctor Appontmet App?',
      'pt': 'Aplicativo para consulta médica?',
    },
    '9gn8thpe': {
      'en': 'Select Rating',
      'pt': 'Selecione a classificação',
    },
    'cqw8j60o': {
      'en': 'Write a Comment',
      'pt': 'Escreva um comentário',
    },
    'bnd82u3k': {
      'en': 'Review',
      'pt': 'Análise',
    },
    'cf6e2fyq': {
      'en': 'Submit Review',
      'pt': 'Enviar avaliação',
    },
    'q1w22ay7': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // WeeklyCheckup
  {
    'ffprq52z': {
      'en': 'Weekly Checkup',
      'pt': 'Check-up semanal',
    },
    '98injida': {
      'en': 'Select Current Symptoms',
      'pt': 'Selecione os sintomas atuais',
    },
    'o1v4j01r': {
      'en': 'Cough',
      'pt': 'Tosse',
    },
    'g5f31rrk': {
      'en': 'Pain',
      'pt': 'Dor',
    },
    'vlg6rcsy': {
      'en': 'Fever',
      'pt': 'Febre',
    },
    'x02sykjf': {
      'en': 'Heart',
      'pt': 'Coração',
    },
    'ukv9xeb0': {
      'en': 'Kidney',
      'pt': 'Rim',
    },
    'kz1vipk4': {
      'en': 'Dental',
      'pt': 'Dental',
    },
    '5f59q5ht': {
      'en': 'Lungs',
      'pt': 'Pulmões',
    },
    'ne1j73e3': {
      'en': 'Liver',
      'pt': 'Fígado',
    },
    'o4xsbvin': {
      'en': 'Asthma',
      'pt': 'Asma',
    },
    '3gmeg8bh': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Language
  {
    'ymbi1d6w': {
      'en': 'Language',
      'pt': 'Linguagem',
    },
    '9wok7o10': {
      'en': 'English',
      'pt': 'Inglês',
    },
    '4fqdty30': {
      'en': 'Spanish',
      'pt': 'Espanhol',
    },
    'k2jetuk1': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // redirectUber
  {
    'koudbzwj': {
      'en': 'My History',
      'pt': '',
    },
    'z62j0pnr': {
      'en': 'Appointment History',
      'pt': '',
    },
    '4xfz4wrq': {
      'en': 'Diagnostic History',
      'pt': '',
    },
    'ew27s45x': {
      'en': 'Prescription History',
      'pt': '',
    },
    '447ihidx': {
      'en': 'Nursing Care History',
      'pt': '',
    },
    'mow0b3si': {
      'en': 'Ambulance History',
      'pt': '',
    },
    'x476e4yh': {
      'en': 'Home',
      'pt': '',
    },
  },
  // PopularDoctorItem
  {
    'n6w9ooel': {
      'en': 'Book Now',
      'pt': 'Reserve agora',
    },
  },
  // DiagnosticsItem
  {
    'rjx6uzso': {
      'en': 'Book Now',
      'pt': 'Reserve agora',
    },
  },
  // ProductItem
  {
    'lrm4bzqu': {
      'en': 'Relapsing Multiple Sclerosis',
      'pt': 'Esclerose múltipla recorrente',
    },
    'jt6tq88z': {
      'en': '\$6.99',
      'pt': 'US\$ 6,99',
    },
    'ec5d8wjl': {
      'en': '\$6.99',
      'pt': 'US\$ 6,99',
    },
    'bad81ekg': {
      'en': 'Order now',
      'pt': 'Peça agora',
    },
  },
  // HospitalItem
  {
    'uweot2ah': {
      'en': 'Order now',
      'pt': 'Peça agora',
    },
  },
  // DoctorItemVerticalView
  {
    '6uct7v9e': {
      'en': 'Book Now',
      'pt': 'Reserve agora',
    },
  },
  // congratulations
  {
    'xyxn4exj': {
      'en': 'Congratulation!',
      'pt': 'Parabéns!',
    },
    'yjknbl7d': {
      'en': 'Your appointment booking completed. ',
      'pt': 'Seu agendamento foi concluído.',
    },
    '2ynfqy21': {
      'en': 'Dr. Josiah Toor ',
      'pt': 'Dr. Josias Toor',
    },
    'gp5wxhkg': {
      'en': 'will video call you soon.',
      'pt': 'farei uma videochamada com você em breve.',
    },
    'l66ic36f': {
      'en': 'Guy Hawkins',
      'pt': 'Cara Hawkins',
    },
    'erl1gi5a': {
      'en': '\$15 USD',
      'pt': 'US\$ 15',
    },
    'khs8d3xv': {
      'en': '12 July 2022',
      'pt': '12 de julho de 2022',
    },
    'eu1arv3a': {
      'en': '01:00 PM',
      'pt': '01:00 PM',
    },
    'e9t5y7fs': {
      'en': 'See Appointment',
      'pt': 'Ver Compromisso',
    },
    'tb0h1cjj': {
      'en': 'Back to Home',
      'pt': 'Voltar para casa',
    },
  },
  // pharmacyItem
  {
    '8bspgq7k': {
      'en': 'Free delivery',
      'pt': 'Entrega grátis',
    },
    'dpyz8x7t': {
      'en': '4.5',
      'pt': '4.5',
    },
  },
  // pharmacyProductItem
  {
    'c8tm5tl7': {
      'en': 'Per Pice ',
      'pt': 'Por Pice',
    },
    'cm2sa4tr': {
      'en': 'Add to Cart',
      'pt': 'adicionar ao carrinho',
    },
  },
  // cartProduct
  {
    'ye71kpt9': {
      'en': '01 Bottel',
      'pt': '01 Garrafa',
    },
  },
  // newAddress
  {
    '6ditxw9z': {
      'en': 'Add New Address',
      'pt': 'Adicionar novo endereço',
    },
    't7biget4': {
      'en': 'Full Name',
      'pt': 'Nome completo',
    },
    'y7p7vgpf': {
      'en': 'Country',
      'pt': 'País',
    },
    '3t5e8m8e': {
      'en': 'Street Address',
      'pt': 'Endereço da Rua',
    },
    '4gdj9aa7': {
      'en': 'Town / City',
      'pt': 'Cidade / Vila',
    },
    'r8ncphds': {
      'en': 'Postcode',
      'pt': 'Código postal',
    },
    '2q8p1box': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'h8l1kb5p': {
      'en': 'Mobile Number',
      'pt': 'Número de telemóvel',
    },
    'x1kk0a6y': {
      'en': 'Use as Billing address',
      'pt': 'Usar como endereço de cobrança',
    },
    'c856oa6t': {
      'en': 'Save',
      'pt': 'Salvar',
    },
  },
  // newCard
  {
    '17qwbt0w': {
      'en': 'Add New Card',
      'pt': 'Adicionar novo cartão',
    },
    'manh1584': {
      'en': 'Full Name',
      'pt': 'Nome completo',
    },
    '25tcc8qh': {
      'en': 'Card Number',
      'pt': 'Número do cartão',
    },
    '7hafhz75': {
      'en': 'Expire Date',
      'pt': 'Data de expiração',
    },
    'i6enuas6': {
      'en': 'CVV',
      'pt': 'CVV',
    },
    'pfnraslu': {
      'en': 'Save',
      'pt': 'Salvar',
    },
  },
  // appointmentItem
  {
    '813dzdk9': {
      'en': '25 May 22 - 10:00 AM',
      'pt': '25 de maio de 22 - 10:00 AM',
    },
    '5owwzik5': {
      'en': 'Video Call - ',
      'pt': 'Chamada de vídeo -',
    },
    'hicdhjxa': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    '1t3ak6jw': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    'y0cl61b6': {
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
  },
  // reviewItem
  {
    'j3kqgpbd': {
      'en': '31 Min Ago',
      'pt': '31 Minutos Atrás',
    },
  },
  // diagnosticsItemHistory
  {
    'ff6lloft': {
      'en': '25 May 22 - 10:00 AM',
      'pt': '25 de maio de 22 - 10:00 AM',
    },
    '8gwjm0kx': {
      'en': 'Accepted',
      'pt': 'Aceito',
    },
    '54wjty6r': {
      'en': 'In Progress',
      'pt': 'Em andamento',
    },
    '94ok29uh': {
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
  },
  // bookSuccess
  {
    'pgfxz55r': {
      'en': 'Success!',
      'pt': 'Sucesso!',
    },
    't0t5dqj7': {
      'en': 'Your booking was successful.',
      'pt': 'Sua reserva foi realizada com sucesso.',
    },
    '6s0jlw2y': {
      'en': 'Back to Home',
      'pt': 'Voltar para casa',
    },
  },
  // logOut
  {
    'lvg4l13y': {
      'en': 'Log Out',
      'pt': 'Sair',
    },
    '6ry5ls85': {
      'en': 'Are you sure you want to Log Out?',
      'pt': 'Tem certeza de que deseja sair?',
    },
    'bpk22kd9': {
      'en': 'Log Out',
      'pt': 'Sair',
    },
    'jel8l9cc': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // checkStock
  {
    '3rujmlr4': {
      'en': 'Check Stock',
      'pt': 'Verificar estoque',
    },
    '4g9ngkjy': {
      'en': 'Program',
      'pt': 'Programa',
    },
    'pajp0da7': {
      'en': 'Total 4 weeks | 1 week left',
      'pt': 'Total de 4 semanas | 1 semana restante',
    },
    '3ovz78sl': {
      'en': 'Quantity',
      'pt': 'Quantidade',
    },
    'paovg5kt': {
      'en': 'Total 120 capsules | 40 capsules left',
      'pt': 'Total 120 cápsulas | Restam 40 cápsulas',
    },
    'ans4nrcr': {
      'en': 'Add Stock',
      'pt': 'Adicionar estoque',
    },
  },
  // Miscellaneous
  {
    '8dnhpmn8': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'iktk8llb': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'yadr35x4': {
      'en': 'Label here...',
      'pt': 'Coloque uma etiqueta aqui...',
    },
    'yascgbgs': {
      'en': 'Back to Home',
      'pt': 'Voltar para casa',
    },
    'oao2m6ma': {
      'en': '',
      'pt': '',
    },
    '8u44aqc3': {
      'en': '',
      'pt': '',
    },
    'qwerwu39': {
      'en': '',
      'pt': '',
    },
    '0knsp3ub': {
      'en': '',
      'pt': '',
    },
    'a557k631': {
      'en': '',
      'pt': '',
    },
    '4a5v8x2v': {
      'en': '',
      'pt': '',
    },
    'kz4zhs7e': {
      'en': '',
      'pt': '',
    },
    '1ib5h1m3': {
      'en': '',
      'pt': '',
    },
    'mlilp9uw': {
      'en': '',
      'pt': '',
    },
    '2tr4yxtt': {
      'en': '',
      'pt': '',
    },
    'nluek24m': {
      'en': '',
      'pt': '',
    },
    'r6oyvuft': {
      'en': '',
      'pt': '',
    },
    'td6fl58s': {
      'en': '',
      'pt': '',
    },
    'lo7ygbod': {
      'en': '',
      'pt': '',
    },
    'uiqbwhk0': {
      'en': '',
      'pt': '',
    },
    'roy5cjuj': {
      'en': '',
      'pt': '',
    },
    'ohognchu': {
      'en': '',
      'pt': '',
    },
    'sbyy983x': {
      'en': '',
      'pt': '',
    },
    '2zzv35i3': {
      'en': '',
      'pt': '',
    },
    'of1tn0gf': {
      'en': '',
      'pt': '',
    },
    't0sex2ls': {
      'en': '',
      'pt': '',
    },
    '9stz98oy': {
      'en': '',
      'pt': '',
    },
    'k2vdonlh': {
      'en': '',
      'pt': '',
    },
    'b3jmntj7': {
      'en': '',
      'pt': '',
    },
    'cv4sfk35': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
