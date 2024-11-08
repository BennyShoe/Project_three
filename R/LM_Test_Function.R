#' Crates various linear model tests to see if your data is normally disturbed
#'
#' @param data The dataset you wish to use
#' @param responce_var Variable you want to select as the response
#' @param predictor_var Variable you want to select as the predictor
#'
#' @return Creates a summery of the linear model and Shapiro-Wilk test
#' @export
LM_Function <- function(data, responce_var, predictor_var){
       LM_formula <- as.formula(paste(responce_var, "~", predictor_var))
       lm_model_fit <- lm(LM_formula, data = data)
       print(summary(lm_model_fit))

         lm_augmented_fit <- broom::augment(lm_model_fit)
         qqnorm(lm_augmented_fit$.resid)
         qqline(lm_augmented_fit$.resid, col = "red")

           shapiro_test <- shapiro.test(lm_augmented_fit$.resid)
           print(shapiro_test)

             return(list(model = lm_model_fit, shapiro_test = shapiro_test))
       }
