
# citation-diversity-tracking
# Author      Lioba Enk (enk@cbs.mpg.de)
# Last updated  10 Aug 2025

# VISUALISATION

library(ggplot2)

p_colours = c("#B94B00", "#D55E00", "#7F007D","#d6b4fc", "#116656")
ref_colour = "darkgrey" #"#dddddd"
p5_colour = "#2E2E2E"

# p2

p2_y_seqmax = 160

p2_theme = theme_classic()+
  theme(axis.title.x = element_blank(),
        axis.text.y = element_blank(),
        axis.title.y = element_text(size = rel(1.2)),
        axis.text.x = element_text(size = rel(1.3)))

# p3

p3_seqmax = 105

p3_scale_color_manual = scale_color_manual(
  name = "",
  labels = c("Top5 Benchmark\nDworkin et al. (Nat Neurosci 2020)", 
             "Top50 Benchmark\nHefter et al. (bioRxiv 2025)",
             paste(own_project," (",own_journal," ",own_year,")",sep=""),
             paste(own_project," excluding\nsingle-authored papers",sep="")),
  values=p_colours)
p3_scale_color_manual_review_ownciting = scale_color_manual(
  name = "",
  labels = c("Top5 Benchmark\nDworkin et al. (Nat Neurosci 2020)", 
             "Top50 Benchmark\nHefter et al. (bioRxiv 2025)",
             paste(own_project," (",own_journal," ",own_year,")",sep=""),
             paste(own_project," excluding\nsingle-authored papers",sep="")),
  values=p_colours)

p3_labels = labs(
  title="Citation behaviour", 
  subtitle = paste("as in Dworkin et al. (2020): including single-authored citations (MM/FF; n=",as.character(sum(your_summary$your_count_singleauthors)),") and",
                   "\nexcluding self-citations (n=",as.character(num_selfcitation),"). Gender-unknown citations (n=",as.character(nrow(n_unknown_pairs)),") excluded/not considered.",sep=""),
  x="Author pairs (at respective first and last postion)", 
  y = "Percent (%)")
p3_labels_review_ownciting = labs(
  title="Citation behaviour", 
  subtitle = paste("relative to Dworkin et al. (2020): including single-authored citations (MM/FF; n=",as.character(sum(your_summary$your_count_singleauthors)),"), yet not",
                   "\nexcluding (including!) self-citations (n=",as.character(num_selfcitation),"). Gender-unknown citations (n=",as.character(nrow(n_unknown_pairs)),") excluded/not considered.",sep=""),
  x="Author pairs (at respective first and last postion)", 
  y = "Percent (%)")
p3_labels_review_lit = labs(
  title="Gender composition across reviewed literature", 
  subtitle = paste("including single-authored references (MM/FF; n=",as.character(sum(your_summary$your_count_singleauthors)),
                   ") and references by our lab (n=",as.character(num_selfcitation),").\nGender-unknown citations (n=",as.character(nrow(n_unknown_pairs)),") excluded/not considered.",sep=""),
  x="Author pairs (at respective first and last postion)", 
  y = "Percent (%)")

p3_theme = theme_classic()+
  theme(title = element_text(size = rel(1.2)),
        axis.title = element_text(size = rel(0.9)),
        axis.text = element_text(size = rel(1.1)),
        legend.text = element_text(size = rel(1.1)),
        legend.position = c(0.01, 0.01), 
        legend.justification = c(0, 0),
        legend.key.size = unit(1.8, "lines"),
        legend.spacing.y = unit(0.9, "lines"))

p3_annotating_p2_inside_parameters = c(3, 4.2, 31, 63) 

# p4 p5

p45_seqmax = 40

p45_theme = theme_classic()+
  theme(axis.title.x = element_blank(),
        axis.text.y = element_text(size = rel(1.4)),
        axis.title.y = element_text(size = rel(1.2)),
        axis.text.x = element_text(size = rel(1.4)))


###########################