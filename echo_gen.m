function output = echo_gen (input, fs, delay, amp)
ds = floor(round(fs*delay)); %data samples for delay
signal = zeros(length(input)+ds,1); %signal length with zeros
signal(1:length(input)) = input;
echo = zeros(length(input)+ds,1);
echo(ds+(1:length(input*amp))) = input*amp;
output = signal + echo;
p=max(abs(output));
if p>1
    output = output ./ p;
end
end