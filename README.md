# Induction Motor Direct Vector Control

MATLAB/Simulink models for a three-phase induction motor, including direct field-oriented control and an open-loop startup/load-step study. The project explores dq transformations, current and flux regulation, speed control and field weakening.

## Tools used

MATLAB, Simulink and Simscape Electrical Specialized Power Systems blocks.

## How to run

1. Open this folder in MATLAB.
2. Run `induction_motor_parameters` to initialize the base workspace.
3. Open `induction_motor_foc.slx` for the controlled drive or `induction_motor_load_step.slx` for the startup/load study.
4. Review simulation settings and run the model. Inspect its scopes for speed, current, torque and flux response.

## Files

| File | Purpose |
| --- | --- |
| `induction_motor_parameters.m` | Machine parameters, matrices and controller gains |
| `induction_motor_foc.slx` | Direct field-oriented control model |
| `induction_motor_load_step.slx` | Startup and load-torque model |

## Limitations

Requires a MATLAB installation compatible with the referenced Specialized Power Systems libraries. The supplied controller gains are study parameters, not hardware commissioning settings.

## Project context

Prepared from academic project files. Collaborative work remains team work; personal names are omitted from this public copy. Original technical comments and interfaces may be in French. No new license has been assigned.

## Technical report

[Read the original French technical report](docs/induction-motor-vector-control-report.pdf). Personal names and document metadata were removed from this copy. Technical content is preserved and may describe earlier study settings.

## Verification status

Source structure and reference names were inspected. MATLAB startup did not complete in this environment, so MATLAB and Simulink execution could not be verified.
