% Recording parameters
fs = 1000;        % sampling rate
duration = 10;    % seconds
channels = 2;     % stereo

fprintf('Prepare your phone function generator app\n');
fprintf('Set frequencies to 200Hz and 350Hz\n');
fprintf('Position phone speakers near microphone\n');
input('Press Enter when ready...');

fprintf('Recording will start in 3 seconds...\n');
pause(3);

fprintf('Recording started!\n');

try
    % Create audio recorder object
    recObj = audiorecorder(fs, 16, channels);
    
    % Start recording
    recordblocking(recObj, duration);
    
    % Get the recorded data
    data = getaudiodata(recObj);
    
    fprintf('Recording completed!\n');
    
    % Save to CSV
    csvwrite('wavdata.csv', data);
    fprintf('Data saved to wavdata.csv\n');
    
    % Display statistics
    fprintf('Shape: %dx%d\n', size(data,1), size(data,2));
    fprintf('Duration: %.2f seconds\n', length(data)/fs);
    fprintf('Min: %.6f, Max: %.6f\n', min(data(:)), max(data(:)));
    
catch ME
    fprintf('Recording failed: %s\n', ME.message);
end
