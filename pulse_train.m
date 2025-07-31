function [dt pav ep prf ru] = pulse_train(tau, pri, p_peak)
    % Computes the duty cycle, average transmitted power, pulse energy, and the
    % pulse repetition frequency. It is given in Listing 1.1 in Section 8; its
    %
    %
    %   tau : pulse width   (seconds) -> input
    %   pri :     PRI       (seconds) -> input
    % p_peak: peak power    (Watts)   -> input
    %   dt  : duty cycle    (none)    <- output
    %  pav  : avg. XMT pwr  (Watts)   <- output
    %   ep  : pulse energy  (Joules)  <- output
    %  prf  :     PRF         (Hz)    <- output
    %   ru  : unambig. Rng.   (Km)    <- output
    % ---------------------------------------------------------------
    
    c = 2.99792458e8;
    dt = tau / pri;
    prf = 1  / pri;
    pav = p_peak * dt;
    ep = p_peak * tau;
    ru = 1.0e-3 * c * pri / 2.0;

end
