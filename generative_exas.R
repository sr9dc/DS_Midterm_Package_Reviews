library(generativeart)

# set the paths
IMG_DIR <- "img/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "handpicked/"
IMG_PATH <- paste0(IMG_DIR, IMG_SUBDIR)

LOGFILE_DIR <- "logfile/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, LOGFILE)

# create the directory structure
generativeart::setup_directories(IMG_DIR, IMG_SUBDIR, IMG_SUBDIR2, LOGFILE_DIR)



# include a specific formula, for example:
my_formula <- list(
    x = quote(x_i^2 - runif(1, -1, 1)*sin(y_i^1)),
    y = quote(runif(1, -1, 1) * y_i^2 - cos(x_i^2))
)

# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = my_formula, nr_of_img = 3, polar = TRUE, filetype = "png", color = "#FF4000", background_color = "#FEEFDD")

