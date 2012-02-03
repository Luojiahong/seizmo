function []=listfiles(data)
%LISTFILES    Lists files in SEIZMO structure
%
%    Usage:    listfiles(data)
%
%    Description:
%     LISTFILES(DATA) lists the associated path & filenames for each of
%     the records in SEIZMO structure DATA.  Convenient for quick
%     inspection.
%
%    Notes:
%
%    Examples:
%     % This is convenient to use with TABLEHEADER or QUERYHEADER:
%     queryheader(data,'a*');
%     listfiles(data);
%
%    See also: TABLEHEADER, QUERYHEADER, KEEPRECORDS, DELETERECORDS

%     Version History:
%        Jan. 30, 2012 - initial version
%
%     Written by Garrett Euler (ggeuler at wustl dot edu)
%     Last Updated Jan. 30, 2012 at 01:40 GMT

% todo:

% check nargin
error(nargchk(1,1,nargin));

% check data structure
error(seizmocheck(data));

% list file-lookup list
fprintf('RECORDS:\n')
fprintf('---------------------------\n')
for i=1:numel(data)
    fprintf('(%d) %s\n',i,fullfile(data(i).path,data(i).name));
end
fprintf('---------------------------\n')

end
