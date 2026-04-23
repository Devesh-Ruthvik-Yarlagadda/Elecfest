Using the LCCDE (Linear Constant Coefficient Differential Equation) form, we have:
$$RC\frac{dy}{dt} + y = x \implies P(D)y = Q(D)x$$
We know that $H(s) = \frac{Q(s)}{P(s)}$, so for a low pass filter (where $s = j\omega$):
$$H(s) = \frac{1}{RCs + 1}$$
For a high pass filter, the LCCDE form of the system is:
$$\frac{dy}{dt} + \frac{y}{RC} = \frac{dx}{dt}$$
Here, $Q(D) = \frac{d}{dt}$ and $P(D) = \frac{d}{dt} + \frac{1}{RC}$, so:
$$H(s) = \frac{s}{s + \frac{1}{RC}} \implies H(s) = \frac{sRC}{sRC + 1}$$
Now, we are adding a second low pass filter to this, so we can just multiply the transfer functions of the two filters to get the total transfer function of the band pass filter. This is possible because we take it to be an eigenfunction for an exponential input, resulting in:
$$H(s) = \frac{sR_1C_1}{(sR_1C_1 + 1)(sR_2C_2 + 1)}$$
This is the overall transfer function for the band pass filter (where $s = j\omega$).
