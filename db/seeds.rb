# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


### Ministry/Department/Apex body ###
puts "Filling Governments and corresponding public authorities, collected from RTI request form"

govt = Government.new(name: "Government of India")
govt.save!

########
pa = PublicAuthority.new(name: "Cabinet Secretariat")
pa.government = govt
pa.save!


########
pa = PublicAuthority.new(name: "Department of Administrative Reforms & PG")
pa.government = govt
pa.save!


#######
pa = PublicAuthority.new(name: "Department of Agricultural Research & Education")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Indian Council of Agricultural Research (ICAR) Hqrs.")
pa.government = govt
pa.save!


#######
pa = PublicAuthority.new(name: "Department of Agriculture & Cooperation")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate of Economics and  Statistics")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Commission for Agricultural Cost & Prices(CACP)")
pa.government = govt
pa.save!


#######
pa = PublicAuthority.new(name: "Department of Animal Husbandry, Dairying and Fisheries")
pa.government = govt
pa.save!


#######
pa = PublicAuthority.new(name: "Department of Atomic Energy")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of AYUSH")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Bio-Technology")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Chemicals & Petrochemicals")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Commerce")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate General of Foreign Trade")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Spices Board India")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Consumer Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Defence")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Defence Production")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Bharat Dynamics Ltd.")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "BEML Limited")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Hindustan Aeronautics Ltd.")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Bharat Electronics Ltd.")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate General of Quality Assurance")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Disinvestment")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Economic Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Electronics & Information Technology")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Standardization, Testing and Quality Certification (STQC)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Electronics & Information Technology")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Expenditure")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Pension Accounting Office")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Ex-Servicemen Welfare")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Fertilisers")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Financial Services")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Reserve Bank of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Oriental Insurance Company Ltd.")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Food & Public Distribution")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate of Vananspati, Vegetable Oils & Fats")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Sugar Institute, Kanpur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Food Corporation of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Warehousing Corporation<")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Health & Family Welfare")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Health & Family Welfare")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Pharmacy Council of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Dental Council of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Indian Council of Medical Research")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Medical Council of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National AIDS Control Organization (NACO)")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Health Research")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Heavy Industries")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Higher Education")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Jawaharlal Nehru University, New Delhi")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Motilal Nehru National Institute of Technology Allahabad")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Maulana Azad National Institute of Technology, Bhopal")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Calicut")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Durgapur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Hamirpur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Malavya National Institute of Technology, Jaipur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Dr. B.R. Ambedkar National Institute of Technology, Jallandhar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Jamshedpur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Kurukshetra")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Visvesvaraya National Institute of Technology, Nagpur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Patna")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Raipur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Rourkela")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Silchar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Srinagar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "S.V. National Institute of Technology, Surat")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Surthkal")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "All India Council for Technical Education (AICTE)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Agartala")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Warangal")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Tiruchirappalli")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "University Grants Commission (UGC)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Arunachal Pradesh")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Nagaland")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Manipur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Mizoram")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Uttarakhand")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Goa")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Delhi")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Institute of Technology, Puducherry")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Industrial Policy & Promotion")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Justice")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Legal Affairs")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "The International Centre for Alternative Dispute Resolution")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Pensions & Pensioners Welfare")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Personnel & Training")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Information Commission")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Union Public Service Commission")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Institute of Secretariat Training and Management (ISTM)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission - HQ")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission - Northern Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission, Allahabad")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission,Bengaluru")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission, Western Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission, Southern Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission, North Eastern Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission, Eastern Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission,North Western Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Staff Selection Commission, Raipur")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Pharmaceuticals")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Posts")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Public Enterprises")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Revenue")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Board of Direct Taxes")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Board of Excise and Customs - Central Excise")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Chief Commissioner, Central Excise & Service Tax,  Ranchi Zone,Patna")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Board of Excise and Customs - Customs")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate General of Income Tax (Intelligence & Criminal Investigations)")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of School Education and Literacy")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Science & Technology")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Scientific & Industrial Research")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CSIR-NEERI,Nagpur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CSIR Hqrs.,New Delhi")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Space")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Department of Telecommunications")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Bharat Sanchar Nigam Limited - HQ")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Legislative Department")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Lok Sabha Secretariat")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Civil Aviation")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Director General of Civil Aviation")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Coal")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Coal India Limited")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Corporate Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Culture")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Archives of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National School of Drama")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Gandhi Smriti Darshan Samiti")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Centre for Cultural Resources and Training.")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Indira Gandhi National Centre for the Arts")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Development of North Eastern Region")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Drinking Water and Sanitation")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Earth Sciences")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Environment & Forests")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of External Affairs")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "MEA - Indian Council of World Affairs")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "MEA - Indian Council for Cultural Relations")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "MEA - Consular, Passport & Visa Division (CPV)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Mexico")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Minsk")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Moscow")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Munich")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Muscat")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Nairobi")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Osaka- Kobe")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Oslo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Kingston")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Khartoum")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Kathmandu")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Kampala")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Kuala Lumpur")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Kuwait")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Kyiv")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Lima")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI London")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Luanda")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Madrid")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Male")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Melbourne")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Hamburg")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Harare, Zimbabwe, E/I")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Helsinki, Finland, E/I")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Ho Chi Minh City, Vietnam, CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Hong Kong, CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Houston, CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Islamabad, Pakistan, HCI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Istanbul, Turkey, CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Jakarta, Indonesia, E/I")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Jeddah, CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Kandy, Sri Lanka, HCI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Hambantota, Sri Lanka CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Hanoi, Vietnam, E/I")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Abu Dhabi")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Abuja")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Addis Ababa")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Algiers")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Amman")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Ankara")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Antananarivo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Astana")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Athens")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Baghdad")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Baku")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Bali")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Bandar Abbas")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Bangkok")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Beijing")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Belgrade")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Berlin")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Berne")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Birgunj")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Birmingham")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Bishkek")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Manila")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Seoul")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Sofia")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI St. Petersburg")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Stockholm")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Sydney")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Tashkent")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Tehran")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Tel Aviv")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Thimphu")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Tokyo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Toronto")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Tunis")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Ulaanbaatar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Vanacouver")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Victoria")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Vienna")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Vientiane")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Warsaw")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Washington DC")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Wellington")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, BratislavaÂ&nbsp;")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Brunei")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Brussels")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Bucharest")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Budapest")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Buenos Aires")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Cairo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Canberra")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Cape Town")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Caracas")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Chicago")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "AHCI, Chittagong")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Colombo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Copenhagen")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Dakar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Damascus")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Dar es Salaam")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Dhaka")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Doha")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Maputo, HCI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Medan, Indonesia,")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Mombasa")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "New York , USA, CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Nicosia, Cyprus, HCI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Ottawa")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Panama City")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Paris (E/I)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Perth")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Phnom Penh")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Phuentsholing CGI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Port Louis")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Port Moresby")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Prague")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Pretoria")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Pyongyang E/I")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Rabat")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Rajshahi")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Reykjavik")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Riyadh")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Saint Denis")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Sanaa")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Santiago")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I,Paramaribo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Rome, Italy")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Port of Spain")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Windhoek")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Yangon")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Zagreb")
pa.government = govt
pa.save!

pa = PublicAuthority.new(nampublic_authority_ide: "CGI Zanzibar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Vladivostok")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Milan, Italy")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Lusaka, Zambia")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Ljubljana")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Abidjan")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Accra")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Beirut")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Ashgabat")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Atlanta")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Bahrain")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Bogota")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Dubai")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Dublin")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Durban")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI,  Edinburgh")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Gaborone")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "PMI, Geneva")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/ I, Havana")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Johannesburg")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Kabul")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Lagos")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "New York, PMI")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Yerevan")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Niamey")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Lilongwe")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Mazar-e-sharif")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Brasilia")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Frankfurt")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Georgetown")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Guangzhou")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Guatemala")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Herat")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Jaffna")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Jalalabad")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Juba")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Kandahar")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, Kinshasa")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Lisbon")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Mandalay")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Ramallah City")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, San Francisco")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Sao Paulo")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI, Shanghai")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI, Singapore")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "HCI Suva")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I, The Hague")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "E/I Tripoli")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CGI Zahidan")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Food Processing Industries")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Home Affairs")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate of Coordination Police Wireless")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Human Rights Commission")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Delhi Police")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Housing & Urban Poverty Alleviation")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Information & Broadcasting")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "All India Radio")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Doordarshan")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate of Advertising and Visual Publicity")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Registrar of Newspapers of India")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Press Information Bureau")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate of Field Publicity")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Photo Division")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "New Media Wing")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Labour & Employment")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Employees Provident Fund Organisation")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Office of The Chief Labour Commissioner (Central)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Directorate General of Employment and Training")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Micro, Small and Medium Enterprises")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Mines")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Minority Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of New & Renewable Energy")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Overseas Indian Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Panchayati Raj")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Parliamentary Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Petroleum & Natural Gas")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Petroleum Conservation & Research Association (PCRA)")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Power")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Thermal Power Corporation")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Power Grid Corporation of India Ltd.")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Rural Electrification Corporation Ltd.")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Power Finance Corporation Ltd.")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Railways")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Road Transport & Highways")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Highways Authority of India (NHAI)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Indian Academy of Highway Engineers (IAHE)")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Rural Development")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Shipping")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Social Justice & Empowerment")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Statistics & Programme Implementation")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Steel")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Steel Authority of India Ltd. (SAIL)")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Textiles")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Tourism")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "National Council for Hotel Management & Catering Technology (NCHMCT)")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Tribal Affairs")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Urban Development")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Delhi Development Authority")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CPWD-Headquarters")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CPWD-Delhi Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CPWD-Eastern Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CPWD-Western Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CPWD-Northern Region")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "CPWD-Southern Region")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Water Resources, River Development & Ganga Rejuvenation")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Central Soil & Materials Research Station")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Upper Yamuna River Board")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Women & Child Development")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Ministry of Youth Affairs & Sports")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "National Institution for Transforming India (NITI Aayog)")
pa.government = govt
pa.save!

pa = PublicAuthority.new(name: "Unique Identification Authority of India")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "President Secretariat")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Prime Minister's Office")
pa.government = govt
pa.save!


######
pa = PublicAuthority.new(name: "Vice-President Secretariat")
pa.government = govt
pa.save!



puts "Done.. :)"
