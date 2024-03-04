/**
 * @file pid_controller.h
 * @brief Interface for PID controller.
 *
 * This header file provides the structure and prototype for a proportional-integral-derivative (PID) controller.
 * It defines the `SPid` structure for storing PID controller parameters and state, along with the `UpdatePID` function
 * for computing the control effort based on the current error and position.
 *
 * @author Robert Wilcox, based on code from Tim Wescott
 * @email wilcox6@pdx.edu
 * @date 2024-02-26
 */

#ifndef PID_CONTROLLER_H
#define PID_CONTROLLER_H

typedef double real_t; // Type definition for the real number data type used in PID calculations. 
                       // Tim says this should be a double.

/**
 * @struct SPid
 * @brief Structure to hold PID controller state and parameters.
 *
 * Contains state variables for the integrator and derivative calculations, limits for the integrator to prevent
 * windup, and gains for the proportional, integral, and derivative components of the PID controller.
 */
typedef struct {
    real_t derState; // Last position input for derivative calculation.
    real_t integratState; // Current state of the integrator.
    real_t integratMax; // Maximum allowed value for the integrator state.
    real_t integratMin; // Minimum allowed value for the integrator state.
    real_t integratGain; // Gain for the integral term.
    real_t propGain; // Gain for the proportional term.
    real_t derGain; // Gain for the derivative term.
} SPid;

/**
 * Updates the PID controller state and calculates the control signal.
 * 
 * This function computes the PID control signal using the current error and position,
 * updating the internal state of the PID controller as necessary. It limits the integrator
 * state to prevent windup and uses the derivative of the position for the D-term calculation.
 *
 * @param pid Pointer to an SPid structure containing PID parameters and state.
 * @param error The current error (setpoint - measurement).
 * @param position The current position, used for the derivative calculation.
 * @return The control signal to be applied to the plant.
 */
real_t UpdatePID(SPid *pid, real_t error, real_t position);

#endif // PID_CONTROLLER_H
