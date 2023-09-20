function [note] = notecreate(frqno, dur)
    t = (1:dur);
    note = sin(2*pi*t/8192*(440*2.^((frqno-1)/12)));
end