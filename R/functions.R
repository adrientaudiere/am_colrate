# Colonization Rate Computation Functions
# These functions compute various metrics for arbuscular mycorrhizal fungi

#' Compute colonization rate
#' 
#' @param colonized_intersections Number of colonized intersections
#' @param total_intersections Total number of intersections observed
#' @return Colonization rate as a percentage
compute_colonization_rate <- function(colonized_intersections, total_intersections) {
  if (total_intersections == 0) {
    return(0)
  }
  return((colonized_intersections / total_intersections) * 100)
}

#' Compute arbuscule frequency
#' 
#' @param arbuscules Number of arbuscules observed
#' @param total_intersections Total number of intersections observed
#' @return Arbuscule frequency as a percentage
compute_arbuscule_frequency <- function(arbuscules, total_intersections) {
  if (total_intersections == 0) {
    return(0)
  }
  return((arbuscules / total_intersections) * 100)
}

#' Compute vesicle frequency
#' 
#' @param vesicles Number of vesicles observed
#' @param total_intersections Total number of intersections observed
#' @return Vesicle frequency as a percentage
compute_vesicle_frequency <- function(vesicles, total_intersections) {
  if (total_intersections == 0) {
    return(0)
  }
  return((vesicles / total_intersections) * 100)
}

#' Compute all metrics for a dataset
#' 
#' @param data A data frame with columns: sample_id, total_intersections, 
#'   colonized_intersections, arbuscules, vesicles
#' @return A data frame with computed metrics added
compute_metrics <- function(data) {
  data$colonization_rate <- mapply(
    compute_colonization_rate,
    data$colonized_intersections,
    data$total_intersections
  )
  
  data$arbuscule_frequency <- mapply(
    compute_arbuscule_frequency,
    data$arbuscules,
    data$total_intersections
  )
  
  data$vesicle_frequency <- mapply(
    compute_vesicle_frequency,
    data$vesicles,
    data$total_intersections
  )
  
  return(data)
}
