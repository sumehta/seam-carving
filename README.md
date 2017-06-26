# Seam Carving

Seam carving (or liquid rescaling) is an algorithm for content-aware image resizing, developed by Shai Avidan, of Mitsubishi Electric Research Laboratories (MERL), and Ariel Shamir, of the Interdisciplinary Center and MERL. It functions by establishing a number of seams (paths of least energy) in an image and automatically removes seams to reduce image size or inserts seams to extend it.


# Example

Remove vertical seams from this image to reduce the distance between the girl and the cliff ends.

Size: 500x500

![Original][images/sc1.pnghttps://github.com/sumehta/seam-carving/blob/master/Images/sc1.png] 

Size: 500x470

![Width reduced by 30 pixels][https://github.com/sumehta/seam-carving/blob/master/Images/sc2.png]

Size: 500x440

![Width reduced by 60 pixels][https://github.com/sumehta/seam-carving/blob/master/Images/sc3.png] 

Size: 500x420

![Width reduced by 80 pixels][https://github.com/sumehta/seam-carving/blob/master/Images/sc4.png]
