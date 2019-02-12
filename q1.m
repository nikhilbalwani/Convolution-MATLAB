seq1 = input('Enter sequence 1:- ');
ref1 = input('Enter zeroeth index element number for sequence 1:- ');
seq2 = input('Enter sequence 2:- ');
ref2 = input('Enter zeroeth index element number for sequence 2:- ');

[seq_res, ref_res] = convolve(seq1, ref1, seq2, ref2);

disp(seq_res);
disp(ref_res);

x = [fliplr(ref_res-1:-1:1), ref_res:1:length(seq_res)];
stem(x - ref_res, seq_res);
legend('Output Sequence');