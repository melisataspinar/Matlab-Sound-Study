notename = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"];
song = ["E", "A", "D", "B", "A", "C#", "B", "C#", "C#", "D", "F#", "C#", "E", "B", "E", "A"];
songidx = ones(1,length(song));
for k1 = 1:length(song)
    idx = strcmp(song(k1), notename);
    songidx(k1) = find(idx);
end
dur = 0.3*8192;

songnote = [songnote; [notecreate(songidx(5),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(6),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(7),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(8),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(9),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(10),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(11),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(12),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(13),dur) zeros(1,75)]'];
songnote = [songnote; [notecreate(songidx(14),dur) zeros(1,75)]'];
soundsc(songnote, 8192)