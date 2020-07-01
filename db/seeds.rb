# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mushroom.destroy_all
HealthBenefit.destroy_all
MushHealthBenefit.destroy_all
Source.destroy_all
Comment.destroy_all
User.destroy_all
Like.destroy_all


##mushrooms
reishi = Mushroom.create(name: "Reishi a.k.a. 'lingzhi'", scientific_name: "Ganoderma lucidum", location: "Asia, southern Europe, and northeastern and southeastern United States", flavor: "bitter, earthy")
reishi.image.attach(
    io: File.open('./public/images/reishi_perfect.png'),
    filename: 'reishi_perfect.png',
    content_type: 'application/png'
)

lions_mane = Mushroom.create(name: "Lion's Mane", scientific_name: "Hericium erinaceus", location: "Asia, Canada, and northern United States", flavor: "savory, earthy")
lions_mane.image.attach(
    io: File.open('./public/images/lions_mane.png'),
    filename: 'lions_mane.png',
    content_type: 'application/png'
)

turkey_tail = Mushroom.create(name: 'Turkey Tail', scientific_name: 'Trametes versicolor', location:'Canada and the United States', flavor: 'slightly bitter')
turkey_tail.image.attach(
    io: File.open('./public/images/turkey_tail_perfect.png'),
    filename: 'turkey_tail_perfect.png',
    content_type: 'application/png'
)

chaga = Mushroom.create(name: 'Chaga', scientific_name: 'Inonotus obliquus', location: 'northern Europe, Asia, Canada, and northeastern United States', flavor: 'slightly bitter, coffee-like')
chaga.image.attach(
    io: File.open('./public/images/chaga_2.png'),
    filename: 'chaga_2.png',
    content_type: 'application/png'
)

cordyceps = Mushroom.create(name: "Cordyceps a.k.a. 'Caterpillar Fungus'", scientific_name: 'Ophiocordyceps sinensis', location: 'east and southeast Asia, Australia, Peru, Bolivia, and the United States', flavor: 'nutty, savory, and slightly salty')
cordyceps.image.attach(
    io: File.open('./public/images/cordyceps.png'),
    filename: 'cordyceps.png',
    content_type: 'application/png'
)

shiitake = Mushroom.create(name: 'Shiitake', scientific_name: 'Lentinula edodes', location:'southeast Asia', flavor: 'slightly spicy, earthy')
shiitake.image.attach(
    io: File.open('./public/images/shiitake.png'),
    filename: 'shiitake.png',
    content_type: 'application/png'
)

maitake = Mushroom.create(name: "Maitake a.k.a. 'Hen of the Woods'", scientific_name: 'Grifola frondosa', location: 'China, Japan, and northeastern United States', flavor: 'spicy and earthy')      
maitake.image.attach(
    io: File.open('./public/images/maitake.png'),
    filename: 'maitake.png',
    content_type: 'application/png'
)

##health benefits
immune_system_boost = HealthBenefit.create(name: 'immune system boost')
cancer_fighting_effects = HealthBenefit.create(name: 'cancer-fighting effects')
anti_viral_effects = HealthBenefit.create(name: 'anti-viral effects')
blood_glucose_reg = HealthBenefit.create(name: 'blood glucose regulation')
lower_cholesterol = HealthBenefit.create(name: 'lower cholesterol')
improved_brain_func = HealthBenefit.create(name: 'improved brain function')
reduced_dep_anx = HealthBenefit.create(name: 'reduced depression & anxiety')
liver_health = HealthBenefit.create(name: 'liver health')
performance_enhancing = HealthBenefit.create(name: 'performance-enhancing effects')
asthma_relief = HealthBenefit.create(name: 'asthma relief')
gut_health = HealthBenefit.create(name: 'gut health')
hpv = HealthBenefit.create(name: 'HPV-fighting effects')
lower_hbp = HealthBenefit.create(name: 'lower high blood pressure')
improved_ovu_pcos = HealthBenefit.create(name: 'improved ovulation PCOS')
prevent_gingivitis = HealthBenefit.create(name: 'prevent gingivitis')
lower_risk_prostate_cancer = HealthBenefit.create(name: 'lower risk of prostate cancer')


##MushHealthBenefit

reishi_isb = MushHealthBenefit.create(mushroom: reishi, health_benefit: immune_system_boost)
reishi_cfe = MushHealthBenefit.create(mushroom: reishi, health_benefit: cancer_fighting_effects)
reishi_ave = MushHealthBenefit.create(mushroom: reishi, health_benefit: anti_viral_effects)
reishi_bgr = MushHealthBenefit.create(mushroom: reishi, health_benefit: blood_glucose_reg)
reishi_lc = MushHealthBenefit.create(mushroom: reishi, health_benefit: lower_cholesterol)

lions_mane_ibf = MushHealthBenefit.create(mushroom: lions_mane, health_benefit: improved_brain_func)
lions_mane_rda = MushHealthBenefit.create(mushroom: lions_mane, health_benefit: reduced_dep_anx)
lions_mane_cfe = MushHealthBenefit.create(mushroom: lions_mane, health_benefit: cancer_fighting_effects)

chaga_isb = MushHealthBenefit.create(mushroom: chaga, health_benefit: immune_system_boost)
chaga_lh = MushHealthBenefit.create(mushroom: chaga, health_benefit: liver_health)
chaga_bgr = MushHealthBenefit.create(mushroom: chaga, health_benefit: blood_glucose_reg)
chaga_cfe = MushHealthBenefit.create(mushroom: chaga, health_benefit: cancer_fighting_effects)

cordyceps_pee = MushHealthBenefit.create(mushroom: cordyceps, health_benefit: performance_enhancing)
cordyceps_ar = MushHealthBenefit.create(mushroom: cordyceps, health_benefit: asthma_relief)
cordyceps_cfe = MushHealthBenefit.create(mushroom: cordyceps, health_benefit: cancer_fighting_effects)

turkey_tail_isb = MushHealthBenefit.create(mushroom: turkey_tail, health_benefit: immune_system_boost)
turkey_tail_cfe = MushHealthBenefit.create(mushroom: turkey_tail, health_benefit: cancer_fighting_effects)
turkey_tail_gh = MushHealthBenefit.create(mushroom: turkey_tail, health_benefit: gut_health)
turkey_tail_hpv = MushHealthBenefit.create(mushroom: turkey_tail, health_benefit: hpv)

maitake_cfe = MushHealthBenefit.create(mushroom: maitake, health_benefit: cancer_fighting_effects)
maitake_bgr = MushHealthBenefit.create(mushroom: maitake, health_benefit: blood_glucose_reg)
maitake_hbp = MushHealthBenefit.create(mushroom: maitake, health_benefit: lower_hbp)
maitake_pcos = MushHealthBenefit.create(mushroom: maitake, health_benefit: improved_ovu_pcos)

shiitake_lc = MushHealthBenefit.create(mushroom: shiitake, health_benefit: lower_cholesterol)
shiitake_pg = MushHealthBenefit.create(mushroom: shiitake, health_benefit: prevent_gingivitis)
shiitake_lrpc = MushHealthBenefit.create(mushroom: shiitake, health_benefit: lower_risk_prostate_cancer)
shiitake_isb = MushHealthBenefit.create(mushroom: shiitake, health_benefit: immune_system_boost)


##Source

Source.create(mush_health_benefit: reishi_isb, citation: 'Lin Zhi-Bin. Cellular and Molecular Mechanisms of Immuno-Modulation by Ganoderma Lucidum. Journal of Pharmacological Sciences. 2005.')
Source.create(mush_health_benefit: reishi_cfe, citation: 'Santesso N, Wieland LS. A summary of a cochrane review: Ganoderma lucidum (Reishi mushroom) for the treatment of cancer. Eur J Integr Med. 2016.')
Source.create(mush_health_benefit: reishi_cfe, citation: 'Gao Yihuai et al. Effects of Ganopoly (A Ganoderma Lucidum Polysaccharide Extract) on the Immune Functions in Advanced-Stage Cancer Patients. Immunological Investigations. 2003.')
Source.create(mush_health_benefit: reishi_ave, citation: 'Benzie IFF, Wachtel-Galor S, editors. Herbal Medicine: Biomolecular and Clinical Aspects. 2nd edition. Boca Raton, FL: CRC Press/Taylor & Francis; 2011.')
Source.create(mush_health_benefit: reishi_bgr, citation: 'Gao Yihuai et al. A Phase I/II Study of Ling Zhi Mushroom Ganoderma lucidum (W.Curt.:Fr.)Lloyd (Aphyllophoromycetideae) Extract in Patients with Type II Diabetes Mellitus. International Journal of Medicinal Mushrooms. 2004.')
Source.create(mush_health_benefit: reishi_lc, citation: 'El Khoury D, Cuda C, Luhovyy BL, Anderson GH. Beta glucan: health benefits in obesity and metabolic syndrome. J Nutr Metab. 2012.')

Source.create(mush_health_benefit: lions_mane_ibf, citation: 'Mori K, Inatomi S, Ouchi K, Azumi Y, Tuchida T. Improving effects of the mushroom Yamabushitake (Hericium erinaceus) on mild cognitive impairment: A double-blind placebo-controlled clinical trial. Phytother Res. 2009.')
Source.create(mush_health_benefit: lions_mane_ibf, citation: 'Mori K, Obara Y, Moriya T, Inatomi S, Nakahata N. Effects of Hericium erinaceus on amyloid β(25-35) peptide-induced learning and memory deficits in mice. Biomed Res. 2011.')
Source.create(mush_health_benefit: lions_mane_ibf, citation: 'I-Chen Li, et al. Neurohealth Properties of Hericium erinaceus Mycelia Enriched with Erinacines. Neurol. 2018.')
Source.create(mush_health_benefit: lions_mane_rda, citation: 'Nagano M, Shimizu K, Kondo R, et al. Reduction of depression and anxiety by 4 weeks Hericium erinaceus intake. Biomed Res. 2010.')
Source.create(mush_health_benefit: lions_mane_cfe, citation: 'Kim SP, Kang MY, Choi YH, Kim JH, Nam SH, Friedman M. Mechanism of Hericium erinaceus (Yamabushitake) mushroom-induced apoptosis of U937 human monocytic leukemia cells. Food Funct. 2011.')
Source.create(mush_health_benefit: lions_mane_cfe, citation: 'Kim SP, Kang MY, Kim JH, Nam SH, Friedman M. Composition and mechanism of antitumor effects of Hericium erinaceus mushroom extracts in tumor-bearing mice. J Agric Food Chem. 2011.')
Source.create(mush_health_benefit: lions_mane_cfe, citation: "Kim SP, Nam SH, Friedman M. Hericium erinaceus (Lion's Mane) mushroom extracts inhibit metastasis of cancer cells to the lung in CT-26 colon cancer-transplanted mice. J Agric Food Chem. 2013.")

Source.create(mush_health_benefit: chaga_isb, citation: 'Kim Yeon-Ran. Immunomodulatory Activity of the Water Extract from Medicinal Mushroom Inonotus obliquus. Mycobiology. 2005.')
Source.create(mush_health_benefit: chaga_isb, citation: 'Ko Suk-kyung et al. Inonotus Obliquus Extracts Suppress Antigen-Specific IgE Production Through the Modulation of Th1/Th2 Cytokines in Ovalbumin-Sensitized Mice. Journal of Ethnopharmocology. 2011.')
Source.create(mush_health_benefit: chaga_lh, citation: 'Hong KB, Noh DO, Park Y, et al. Hepatoprotective activity of water extracts from chaga medicinal mushroom, inonotus obliquus (Higher basidiomycetes) against tert-butyl hydroperoxide–induced oxidative liver injury in primary cultured rat hepatocytes. Int J Med Mushrooms. 2015.')
Source.create(mush_health_benefit: chaga_bgr, citation: 'Diao BZ, Jin WR, Yu XJ. Protective Effect of Polysaccharides from Inonotus obliquus on Streptozotocin-Induced Diabetic Symptoms and Their Potential Mechanisms in Rats. Evid Based Complement Alternat Med. 2014.')
Source.create(mush_health_benefit: chaga_cfe, citation: 'Baek J, Roh HS, Baek KH, et al. Bioactivity-based analysis and chemical characterization of cytotoxic constituents from Chaga mushroom (Inonotus obliquus) that induce apoptosis in human lung adenocarcinoma cells. J Ethnopharmacol. 2018.')
Source.create(mush_health_benefit: chaga_cfe, citation: 'Arata Satoru et al. Continuous intake of the Chaga mushroom (Inonotus obliquus) aqueous extract suppresses cancer progression and maintains body temperature in mice. Heliyon. 2016.')

Source.create(mush_health_benefit: cordyceps_pee, citation: 'Chen, S.; Li, Z.; Krochmal, R. et al. Effect of Cs-4 (Cordyceps sinensis) on exercise performance in healthy older subjects: a double-blind, placebo-controlled trial. J Altern Complement Med. 2010.')
Source.create(mush_health_benefit: cordyceps_pee, citation: 'Hirsch KR, Smith-ryan AE, Roelofs EJ, Trexler ET, Mock MG. Cordyceps militaris Improves Tolerance to High-Intensity Exercise After Acute and Chronic Supplementation. J Diet Suppl. 2017.')
Source.create(mush_health_benefit: cordyceps_ar, citation: 'Wang N, Li J, Huang X, Chen W, Chen Y. Herbal Medicine Improves Health-Related Quality of Life in Moderate-to-Severe Asthma. Evid Based Complement Alternat Med. 2016.')
Source.create(mush_health_benefit: cordyceps_cfe, citation: 'Jin Y, Meng X, Qiu Z, Su Y, Yu P, Qu P. Anti-tumor and anti-metastatic roles of cordycepin, one bioactive compound of Cordyceps militaris. Saudi J Biol Sci. 2018.')

Source.create(mush_health_benefit: turkey_tail_isb, citation: 'Knezevic Aleksandar et al. Antigenotoxic Effect of Trametes spp. Extracts against DNA Damage on Human Peripheral White Blood Cells. Scientific World Journal. 2015.')
Source.create(mush_health_benefit: turkey_tail_isb, citation: 'Janjusevic Ljiljana et al. The lignicolous fungus Trametes versicolor (L.) Lloyd (1920): a promising natural source of antiradical and AChE inhibitory agents. Journal of Enzyme Inhibition and Medicinal Chemistry. 2017.')
Source.create(mush_health_benefit: turkey_tail_isb, citation: 'Blagodatski Artem et al. Medicinal mushrooms as an attractive new source of natural compounds for future cancer therapy. Oncotarget. 2018.')
Source.create(mush_health_benefit: turkey_tail_cfe, citation: 'Satoh Yoshiki et al. Polysaccharide K suppresses angiogenesis in colon cancer cells. Experimental and Therapeutic Medicine. 2012.')
Source.create(mush_health_benefit: turkey_tail_cfe, citation: 'Awadasseid Annoor et al. Purification, characterization, and antitumor activity of a novel glucan from the fruiting bodies of Coriolus Versicolor. PLOS ONE. 2017.')
Source.create(mush_health_benefit: turkey_tail_cfe, citation: 'Brown Dorothy Cimino et al. Single Agent Polysaccharopeptide Delays Metastases and Improves Survival in Naturally Occurring Hemangiosarcoma. Evidence-Based Complementary and Alternative Medicine. 2012.')
Source.create(mush_health_benefit: turkey_tail_cfe, citation: 'Wong LY Eliza et al. Efficacy of Yun Zhi (Coriolus Versicolor) on Survival in Cancer Patients: Systematic Review and Meta-Analysis. Recent Patents on Inflammation and Allergy Drug Discovery. 2012.')
Source.create(mush_health_benefit: turkey_tail_cfe, citation: 'Oba Koji et al. Efficacy of Adjuvant Immunochemotherapy With Polysaccharide K for Patients With Curative Resections of Gastric Cancer. Cancer Immunology; Immunotherapy. 2006.')
Source.create(mush_health_benefit: turkey_tail_cfe, citation: 'Torkelson Carolyn J. et al. Phase 1 Clinical Trial of Trametes versicolor in Women with Breast Cancer. ISRN Oncology. 2012.')
Source.create(mush_health_benefit: turkey_tail_gh, citation: 'Pallav Kumar et al. Effects of Polysaccharopeptide From Trametes Versicolor and Amoxicillin on the Gut Microbiome of Healthy Volunteers: A Randomized Clinical Trial. Gut Microbes. 2014.')
Source.create(mush_health_benefit: turkey_tail_gh, citation: 'Wong LY Eliza et al. Efficacy of Yun Zhi (Coriolus Versicolor) on Survival in Cancer Patients: Systematic Review and Meta-Analysis. Recent Patents on Inflammation and Allergy Drug Discovery. 2012.')
Source.create(mush_health_benefit: turkey_tail_hpv, citation: 'Donatini Bruno. Control of Oral Human Papillomavirus (HPV) by Medicinal Mushrooms, Trametes Versicolor and Ganoderma Lucidum: A Preliminary Clinical Trial. International Journal of Medicinal Mushrooms. 2014.')

Source.create(mush_health_benefit: maitake_cfe, citation: 'Alonso EN, Ferronato MJ, Fermento ME, et al. Antitumoral and antimetastatic activity of Maitake D-Fraction in triple-negative breast cancer cells. Oncotarget. 2018.')
Source.create(mush_health_benefit: maitake_bgr, citation: 'Chen Y-H, Lee C-H, Hsu T-H, Lo H-C. Submerged-Culture Mycelia and Broth of the Maitake Medicinal Mushroom Grifola frondosa (Higher Basidiomycetes) Alleviate Type 2 Diabetes-Induced Alterations in Immunocytic Function. Int J Med Mushrooms. 2015.')
Source.create(mush_health_benefit: maitake_hbp, citation: 'Preuss HG, Echard B, Bagchi D, Perricone NV. Maitake mushroom extracts ameliorate progressive hypertension and other chronic metabolic perturbations in aging female rats. Int J Med Sci. 2010.')
Source.create(mush_health_benefit: maitake_pcos, citation: 'Chen J-T, Tominaga K, Sato Y, Anzai H, Matsuoka R. Maitake mushroom (Grifola frondosa) extract induces ovulation in patients with polycystic ovary syndrome: a possible monotherapy and a combination therapy after failure with first-line clomiphene citrate. J Altern Complement Med. 2010.')

Source.create(mush_health_benefit: shiitake_lc, citation: 'Rop O, Mlcek J, Jurikova T. Beta-glucans in higher fungi and their health effects. Nutr Rev. 2009.')
Source.create(mush_health_benefit: shiitake_pg, citation: 'Ciric L, Tymon A, Zaura E, et al. In vitro assessment of shiitake mushroom (Lentinula edodes) extract for its antigingivitis activity. J Biomed Biotechnol. 2011.')
Source.create(mush_health_benefit: shiitake_lrpc, citation: 'Shu Zhang et al. Mushroom consumption and incident risk of prostate cancer in Japan: A pooled analysis of the Miyagi Cohort Study and the Ohsaki Cohort Study. International Journal of Cancer, 2019.')
Source.create(mush_health_benefit: shiitake_isb, citation: 'Dai Xiaoshuang et al. Consuming Lentinula Edodes (Shiitake) Mushrooms Daily Improves Human Immunity: A Randomized Dietary Intervention in Healthy Young Adults. Journal of the American College of Nutrition. 2015.')


user1 = User.create(username: 'funguy85', password: 'fanatic')
user1 = User.create(username: 'jambooey86', password: 'fanatic')
user1 = User.create(username: 'mariela210', password: 'fanatic')
user1 = User.create(username: 'albizu79', password: 'fanatic')
user1 = User.create(username: 'collita55', password: 'fanatic')
user1 = User.create(username: 'zenitram52', password: 'fanatic')
user1 = User.create(username: 'johnsonKow', password: 'fanatic')
user1 = User.create(username: 'nickEchevarria', password: 'fanatic')
user1 = User.create(username: 'vani13', password: 'fanatic')
user1 = User.create(username: 'willie863', password: 'fanatic')


#Comments
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Reishi a.k.a. 'lingzhi'").id, content: "I've been brewing reishi tea for years. I swear by its medicinal effects!")
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Lion's Mane").id, content: "I start every morning with a cup of Lion's Mane. It keeps me sharp!")
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Chaga").id, content: "It's easy to drink chaga tea instead of coffee. They taste similar.")
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Cordyceps a.k.a. 'Caterpillar Fungus'").id, content: "One cup is all I need to power me up for a workout.")
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Turkey Tail").id, content: "My grandmother's homeopathic doctor recommended she start drinking this tea during cancer therapy. So far so good.")
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Maitake a.k.a. 'Hen of the Woods'").id, content: "Keeps my blood pressure low. Highly recommend!")
Comment.create(user_id: User.all.sample.id, mushroom_id: Mushroom.all.find_by(name:"Shiitake").id, content: "Quick, easy way to lower your cholesterol. I don't mind the taste either.")


