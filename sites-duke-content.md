# Sites@Duke Express — paste-ready content
# Request a site: https://sites.duke.edu/wp-signup.php  (NetID + Duo login)
# Suggested site name: jiashuo-fan      →  https://sites.duke.edu/jiashuo-fan/
# Suggested site title: Jiashuo Fan

================================================================
SITE TITLE / TAGLINE
================================================================
Title:   Jiashuo Fan
Tagline: Machine learning for medical imaging — label-efficient segmentation, image–report models, evaluation across sites

================================================================
PAGE 1 — "About"  (set as the site's front page)
================================================================
Jiashuo Fan
Incoming Assistant Professor, Duke University
jf381@duke.edu

I am an incoming Assistant Professor at Duke University. I work on learning when labels are scarce, and on
connecting language to pixels — and I am most interested in the version of those
problems that appears in medical imaging, where annotation costs clinician hours, the
text that accompanies an image is a report rather than a caption, and a wrong answer
has a patient attached to it.

My published work so far covers uncertainty-guided co-training for semi-supervised
segmentation (CVPR 2022), novel-object captioning and referring-expression grounding
(ICCV 2023, ACM MM 2023), 3D instance segmentation from click-level annotations,
in-context semi-supervised learning, and generative models for reconstructing tissue
structure (bioRxiv 2025).

Links
- Scholars@Duke: https://scholars.duke.edu/person/jiashuo.fan
- Google Scholar: https://scholar.google.com/citations?user=M5wOsysAAAAJ&hl=en
- Email: jf381@duke.edu

================================================================
PAGE 2 — "Research"
================================================================
Thread 01 — Annotation cost
Segmentation when the only qualified annotator is a clinician

A dense 3D annotation of a CT or MR volume costs radiologist hours, so the useful
question is never how a model performs under full supervision — it is how much of the
label can be dropped before the model stops being trustworthy. My CVPR 2022 work used
disagreement between two prediction heads as an uncertainty signal for pseudo-labelling;
ClickSeg pushed the annotation budget for 3D instances down to single clicks. I am
carrying both into volumetric clinical data: organ and lesion delineation, longitudinal
follow-up, and the common case where the positive class is a handful of voxels.

Methods: co-training with uncertainty estimates, pseudo-label filtering, click- and
scribble-level supervision, in-context adaptation to a new site.
Data: CT / MR / PET volumes; DICOM to NIfTI pipelines that keep acquisition provenance.

Thread 02 — Reports, not captions
Findings that point back at the voxels that produced them

A radiology report is not a caption. It is a set of claims, and each one should be
traceable to evidence in the image — usually to a number a reader can check: a diameter,
a volume, a Hounsfield-unit range, an SUV. My work on novel-object captioning (ICCV
2023) and referring-expression comprehension (ACM MM 2023) was that alignment problem in
natural images; the clinical version adds calibration and auditing, which findings a
model invents and which it quietly misses.

Methods: contrastive alignment, anchor-based grounding, image-report pretraining,
calibrated uncertainty.
Metrics: per-finding sensitivity at fixed specificity, grounded-report accuracy,
calibration error.

Thread 03 — Generalization
Performance that survives a change of scanner

Most imaging models degrade on the first scanner they were not trained on. I want to
characterize that degradation across vendors, protocols, sites and patient subgroups,
and to adapt a model to a new site with a realistic label budget instead of retraining
it. A related thread is generative modeling of biological structure — reassembling
tissue organization from dissociated measurements (bioRxiv 2025).

Evaluation: Dice/DSC for localized structures, AUROC / AUPRC with 95% confidence
intervals, subgroup tables, external cohorts reported separately from the development
set.

================================================================
PAGE 3 — "Publications"
================================================================
2025 — In-Context Semi-Supervised Learning
Jiashuo Fan, Petru Rosu, Aaron T. Wang, Michael Li, Lawrence Carin, Xiang Cheng
arXiv:2512.15934 — https://arxiv.org/abs/2512.15934

2025 — Model Reprogramming Demystified: A Neural Tangent Kernel Perspective
Ming-Yu Chung, Jiashuo Fan, Hancheng Ye, Qinsi Wang, Wei Shen, Chia-Mu Yu,
Pin-Yu Chen, Sy-Yen Kuo
arXiv:2506.00620 — https://arxiv.org/abs/2506.00620

2025 — Tissue Reassembly with Generative AI
Tingyang Yu, Chanakya Ekbote, Nikita Morozov, Jiashuo Fan, et al.,
Pascal Frossard, Maria Brbić
bioRxiv — https://doi.org/10.1101/2025.02.13.638045

2023 — RCA-NOC: Relative Contrastive Alignment for Novel Object Captioning
Jiashuo Fan, Yaoyuan Liang, Leyao Liu, Shao-Lun Huang, Lei Zhang
ICCV 2023

2023 — LUNA: Language as Continuing Anchors for Referring Expression Comprehension
Yaoyuan Liang, Zhao Yang, Yansong Tang, Jiashuo Fan, Ziran Li, Jingang Wang,
Philip H. S. Torr, Shao-Lun Huang
ACM Multimedia 2023

2023 — ClickSeg: 3D Instance Segmentation with Click-Level Weak Annotations
Leyao Liu, Tao Kong, Minzhao Zhu, Jiashuo Fan, Lu Fang
arXiv:2307.09732 — https://arxiv.org/abs/2307.09732

2022 — UCC: Uncertainty Guided Cross-Head Co-Training for Semi-Supervised
Semantic Segmentation
Jiashuo Fan, Bin-Bin Gao, Huan Jin, Lihui Jiang
CVPR 2022 — https://doi.org/10.1109/CVPR52688.2022.00971 — arXiv:2205.10334

Full list: https://scholar.google.com/citations?user=M5wOsysAAAAJ&hl=en

================================================================
PAGE 4 — "Contact"
================================================================
Email: jf381@duke.edu — the fastest way to reach me.
Duke University, Durham, NC 27708

Happy to talk about medical image analysis — label-efficient segmentation, image-report
models, or evaluation across sites. Clinical collaborators: email me with the question
you want answered and roughly what data exists; early conversations are cheap and save
months.

================================================================
NOTES
================================================================
- Sites Express sites expire 2 years after creation; you get email notices 21 days
  before deletion. Renewal: https://oit.duke.edu/help/articles/kb0027897/
- Sites Express is not approved for sensitive or restricted data — do not upload
  patient data, PHI, or anything under Duke's restricted classification.
- Once the site is up, add its URL to your Scholars@Duke profile (Websites field),
  and link back to https://jason-fan20.github.io/lab/ if you want to keep both.
