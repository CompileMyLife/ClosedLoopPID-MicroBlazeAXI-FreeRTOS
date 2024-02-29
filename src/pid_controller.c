/**
 * @file pid_controller.c
 * @brief Driver for pid controller.
 *
 * @author Robert Wilcox, based on code from Tim Wescott
 * @email wilcox6@pdx.edu
 * @date 2024-02-26
 */

#include "pid_controller.h" 

// PID control function
real_t UpdatePID(SPid *pid, real_t error, real_t position) {
    real_t pTerm, dTerm, iTerm;

    // Calculate the proportional term
    pTerm = pid->propGain * error;

    // Update the integral state with the error
    pid->integratState += error;

    // Limit the integrator state to prevent integral windup
    if (pid->integratState > pid->integratMax) {
        pid->integratState = pid->integratMax;
    } else if (pid->integratState < pid->integratMin) {
        pid->integratState = pid->integratMin;
    }

    // Calculate the integral term
    iTerm = pid->integratGain * pid->integratState;

    // Calculate the derivative term
    dTerm = pid->derGain * (pid->derState - position);
    pid->derState = position; // Update the derivative state with the current position

    // Calculate the new inputt
    return pTerm + iTerm + dTerm;

}
