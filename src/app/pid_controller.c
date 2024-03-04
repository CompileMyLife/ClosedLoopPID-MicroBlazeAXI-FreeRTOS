/**
 * @file pid_controller.c
 * @brief Implementation of a PID controller.
 *
 * This file contains the implementation of a Proportional-Integral-Derivative (PID) controller.
 * The PID controller is designed to compute an output value based on the proportional, integral,
 * and derivative terms derived from the error between a desired setpoint and a measured process variable.
 * The `UpdatePID` function updates the controller's state and calculates the new control input.
 * This implementation includes measures to prevent integral windup and ensures the stability of the control system.
 *
 * @author Robert Wilcox, based on code from Tim Wescott
 * @email wilcox6@pdx.edu
 * @date 2024-02-26
 */

#include "pid_controller.h" 

/**
 * Updates the PID controller with a new error signal and calculates the control effort.
 * 
 * This function takes the current error (difference between the setpoint and the actual position),
 * calculates the proportional, integral, and derivative terms based on the PID controller's
 * coefficients, and sums them to produce the control effort. This control effort is then applied
 * to the system to reduce the error. Integral windup is prevented by limiting the integral term
 * within predefined bounds. The derivative term is calculated based on the change in position.
 *
 * @param pid Pointer to an SPid struct that contains the PID controller's settings and state.
 * @param error The current error signal (setpoint - actual position).
 * @param position The current position of the system being controlled.
 * @return The control effort that should be applied to the system input to drive the error to zero.
 */
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

    // Calculate the new input
    return position + pTerm + iTerm + dTerm;

}
