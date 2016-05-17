%sample code is from http://www.mathworks.com/help/matlab/matlab_prog/cell-vs-struct-arrays.html?requestedDomain=www.mathworks.com
%Cell arrays contain data in cells that you access by numeric indexing. Common applications of cell arrays include storing separate pieces of text and storing heterogeneous data from spreadsheets.
%For example, store temperature data for three cities over time in a cell array.

temperature(1,:) = {'01-Jan-2010', [45, 49, 0]};
temperature(2,:) = {'03-Apr-2010', [54, 68, 21]};
temperature(3,:) = {'20-Jun-2010', [72, 85, 53]};
temperature(4,:) = {'15-Sep-2010', [63, 81, 56]};
temperature(5,:) = {'31-Dec-2010', [38, 54, 18]};
%Plot the temperatures for each city by date.

allTemps = cell2mat(temperature(:,2));
dates = datenum(temperature(:,1), 'dd-mmm-yyyy');

plot(dates,allTemps)
datetick('x','mmm')

%Differenct class type when access cell by {..} and (..)
get_cell=temperature(1,2)
get_mat=temperature{1,2}