# citation-diversity-tracking
**Post-processing and visualising output from <ins>cleanBib</ins> (https://github.com/dalejn/cleanBib), a toolbox that utilises https://gender-api.com.**

### v2.0

### Relevant functionalities

+ :eyes: &nbsp; *B R O W S E* &nbsp; : &nbsp; check out datasets extracted from cleanBib, which formed the basis of published citation diversity analyses
  + /**manuscript-results**/ ...
    + [Marshall et al. (*Sci Rep* 2024)](https://github.com/liobaenk/citation-diversity-tracking/tree/main/manuscript-results/2024_marshall-et-al_distractor)
    + [Steinfath, Azanova, Kapralov et al. (*bioRxiv* 2025)](https://github.com/liobaenk/citation-diversity-tracking/tree/main/manuscript-results/2025_steinfath-et-al_hep-review/)
+ :bar_chart: &nbsp; *D O &nbsp; I T &nbsp; Y O U R S E L F* &nbsp; : &nbsp; conduct your own citation diversity analysis and report the results in your manuscript! *You can do so for your empirical papers as well as your systematic reviews*. In the case of reviews, I would suggest to distinguish between (a) the reviewed body of literature and (b) your (the author’s) citation behavior within the main text.
  + How to get you started:
    + (1) /**instr**/ instructions_how-to-use-cleanbib.pdf
    + (2) create a .bib file, and run it through **<ins>cleanBib</ins>**
    + (3) save **<ins>cleanBib</ins>** output (cleanedBib.csv, predictions.csv) in /**data**/ ... [input]
    + (4) have a look at the examples under **/output/example/...** (both for empirical paper & review)
    + (5) 'enk_citationdiversitytracking_v2.Rmd' # run this code on your own data!
    + (6) After .Rmd knitting, the output is automatically saved in /**output**/ ... [output]
  + Other folders
    + /**literature**/
    + /**templates**/ # use templates to quick-and-easy draft a results section for your manuscript <br />(under license CC0 1.0, no copy-right)
   
### Copyright / license

This work is licensed under a Creative Commons Attribution 4.0 International License. This means I kindly ask that you cite the following resources if you use or build upon this repo (see full references below):
+ https://github.com/liobaenk/citation-diversity-tracking (v2.0)
+ Dworkin, J. D., Linn, K. A., Teich, E. G., Zurn, P., Shinohara, R. T., & Bassett, D. S. (2020). The extent and drivers of gender imbalance in neuroscience reference lists. Nat Neurosci, 23(8), 918–926. https://doi.org/10.1038/s41593-020-0658-y
+ Zhou, D., Stiso, J., Bertolero, M., Cornblath, E., Teich, E., Sizemore Blevins, A., Murphy, K., Oudyk, K., Michael, C., Urai, A., Matelsky, J., Archila-Melendez, M. E. [virtualmarioe], Camp, C., Alacantra Castillo, R., Saxe, R., Dworkin, J., & Bassett, D. (2022). *dalejn/cleanBib: v1.1.3 (v1.1.3)*. Zenodo. https://doi.org/10.5281/zenodo.7375250
+ https://gender-api.com

### Q&A

+ (1) *Why should I track or even report my citation diversity in my manuscript/paper?* <br />Reporting citation diversity helps highlight and reduce bias in who gets cited, making research more fair and inclusive (Dworkin et al., 2020; Fulvio et al., 2021; Hefter et al., 2025). It’s a simple step that aligns with recent statements by publishing houses and journals in support of equity in science (*Springer Nature*: Hoving, 2024; Nature Reviews Bioengineering, 2023 | *Cell Press*: Sweet, 2021, 2022; *J Cogn Neurosci*: Fulvio, 2025; Fulvio et al., 2021).<br />
Overall, by doing so, you highlight underrepresented voices in the research you cite. You also support visibility and recognition for colleagues whose names may signal minority backgrounds in your local context. More importantly, it gives you, especially if you're early in your career, a way to <ins>actively</ins> promote diversity, equity and inclusion in science ❣️

+ (2) *Why is this folder called citation-diversity, if you only process gender diversity?* <br />The folder is called citation-diversity because gender is intended to be just the starting point — the broader aim is to eventually include other dimensions like ethnicity (as in Bertolero et al., 2020, for U.S.A.-based ethnic categories) or even age approximations (see more information in [3]).

+ (3) *CleanBib provides me with ethnicity information, why don't you use it (yet)?* <br />While tools like cleanBib offer ethnicity estimates, they rely on U.S.-centric categories ('Asian/Pacific Islander, non-Hispanic Black, non-Hispanic White, Hispanic', Bertolero et al., 2020) that do not apply well in European or international contexts. For now, I’ve chosen not to include them until I can integrate services that reflect more nuanced, multiethnic name patterns (e.g., individuals of Eastern European descent may face discrimination yet are classified as White by cleanBib). This ensures the analysis remains both accurate and locally sensitive.

+ (4) *What about Journal Eigenfactor related analyses?* <br />Hefter et al. (2025) recently conducted broader analysis spanning across the 50 top Neuroscience Journals to complement their previous findings (Dworkin et al., 2020) that had focused on the top 5 of that time (Brain, Nat Neurosci, J Neurosci, NeuroImage, Neuron). Their selection of Journals was based on Eigenfactor scores (Bergstrom et al., 2008) published in Clarivate's yearly Journal Citation Reports (JCR). They identified different patterns across 3 groups of Journals, and also discuss patterns of self-citation behaviour. For a systematic review (Steinfath, Azanova, Kapralov et al.) we recently submitted, I conducted further Journal Eigenfactor related analyses (using data from Clarivate, 2024). I hope to integrate those soon into the R Markdown file.

### References

Bergstrom, C. T., West, J. D., & Wiseman, M. A. (2008). The EigenfactorTM Metrics. *Journal of Neuroscience, 28*(45), 11433–11434. https://doi.org/10.1523/JNEUROSCI.0003-08.2008 

Bertolero, M. A., Dworkin, J. D., David, S. U., Lloreda, C. L., Srivastava, P., Stiso, J., ... & Bassett, D. S. (2020). Racial and ethnic imbalance in neuroscience reference lists and intersections with gender. *BioRxiv, 2020-10*. https://doi.org/10.1101/2020.10.12.336230

Citation diversity statement. (2023). *Nat Rev Bioeng, 1*(4), 227–227. https://doi.org/10.1038/s44222-023-00061-5

Clarivate. (2024). *Journal Citation Reports (JCR): Impact Factor 2024*. PDF (Web of Science). https://doi.org/10.13140/RG.2.2.34797.60640

Dworkin, J. D., Linn, K. A., Teich, E. G., Zurn, P., Shinohara, R. T., & Bassett, D. S. (2020). The extent and drivers of gender imbalance in neuroscience reference lists. *Nat Neurosci, 23*(8), 918–926. https://doi.org/10.1038/s41593-020-0658-y

Fulvio, J. M. (2025, June 02). *Gender bias in citation practices four year later – is it working?*. JoCN FORUM. https://doi.org/10.21428/8e6ba8ef.8c1e4630 [Retrieved on 2025, 07 August]

Fulvio, J. M., Akinnola, I., & Postle, B. R. (2021). Gender (Im)balance in Citation Practices in Cognitive Neuroscience. *J Cogn Neurosci, 33*(1), 3–7. https://doi.org/10.1162/jocn_a_01643 

Hefter, K., Teich, E. G., & Bassett, D. S. (2025). Gender imbalance in citations most pronounced in high-impact neuroscience journals. *bioRxiv, 2025-02*. https://doi.org/10.1101/2025.02.19.638905

Hoving, S. (2024, September 02). *What does putting DEI into practice at the Nature Reviews journals really look like?*. The Link (Springer Nature). https://www.springernature.com/gp/librarians/the-link/journals-blogpost/putting-dei-into-practice-at-nature-reviews/27507772 [Retrieved on 2025, February 23]

Sweet, D. J. (2021). New at Cell Press: The Inclusion and Diversity Statement. *Cell, 184*(1), 1–2. https://doi.org/10.1016/j.cell.2020.12.019

Sweet, D. J. (2022, January 31). *The inclusion and diversity statement – one year on*. Cell Press News, Inclusion & Diversity. https://www.cell.com/news-do/inclusion-and-diversity-statement-update-2022 [Retrieved on 2025, August 07]

Zhou, D., Stiso, J., Bertolero, M., Cornblath, E., Teich, E., Sizemore Blevins, A., Murphy, K., Oudyk, K., Michael, C., Urai, A., Matelsky, J., Archila-Melendez, M. E. [virtualmarioe], Camp, C., Alacantra Castillo, R., Saxe, R., Dworkin, J., & Bassett, D. (2022). *dalejn/cleanBib: v1.1.3 (v1.1.3)*. Zenodo. https://doi.org/10.5281/zenodo.7375250

#### with citation diversity statement

Marshall, A. C., Ren, Q., Enk, L., Liu, J., & Schütz-Bosbach, S. (2024). The effect of cardiac phase on distractor suppression and motor inhibition in a stop-signal task. *Scientific Reports, 14*(1), 29847. https://doi.org/10.1038/s41598-024-80742-2

Steinfath, P. &ast;, Azanova, M. &ast;, Kapralov, N. &ast;, Loesche, T., Enk, L., Nikulin, V. ° & Villringer, A. °. Heartbeat-evoked responses in M/EEG: A systematic review of methods with suggestions for analysis and reporting. *bioRxiv*, 2025-08. https://doi.org/10.1101/2025.08.08.668923

&ast; shared first authorship ° shared last authorship

---

&copy; Lioba Enk, last updated 10 August 2025
