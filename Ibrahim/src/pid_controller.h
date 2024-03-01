/**
 * @file pid_controller.h
 * @brief Driver for pid controller.
 *
 * @author Robert Wilcox
 * @email wilcox6@pdx.edu
 * @date 2024-02-26
 */

// pid_controller.h
#ifndef PID_CONTROLLER_H
#define PID_CONTROLLER_H

typedef double real_t;

// PID structure
typedef struct {
    real_t derState; // Last position input
    real_t integratState; // Integrator state
    real_t integratMax, integratMin; // max & min allowable integrator state
    real_t integratGain, propGain, derGain; // gains
} SPid;

// Function prototype for the PID update function
real_t UpdatePID(SPid *pid, real_t error, real_t position);

#endif // PID_CONTROLLER_H
