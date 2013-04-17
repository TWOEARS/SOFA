function Obj = SOFAgetConventions(sofaconventions,flags)
%SOFAGETVARIABLES
%   Obj = SOFAgetConventions(sofaconventions,flags) returns a list of variables and attributes.

% SOFA API - function SOFAgetConventions
% Copyright (C) 2012-2013 Acoustics Research Institute - Austrian Academy of Sciences
% Licensed under the EUPL, Version 1.1 or � as soon they will be approved by the European Commission - subsequent versions of the EUPL (the "Licence")
% You may not use this work except in compliance with the Licence.
% You may obtain a copy of the Licence at: http://joinup.ec.europa.eu/software/page/eupl
% Unless required by applicable law or agreed to in writing, software distributed under the Licence is distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the Licence for the specific language governing  permissions and limitations under the Licence. 

if ~exist('flags','var')
    flags='a'; % flags: m: mandatory, r: readonly, a: all
end

dims={'I';'R';'E';'N';'M';'C';'Q'}; % dimensions
flagc=cellstr((flags)');

switch sofaconventions
%% SimpleFreeFieldHRIR
    case 'SimpleFreeFieldHRIR'
        % name, value, flags, dimensions
        metadataarray={ ...
         'GLOBAL_Conventions' 'SOFA' 'rma'  ''; ...
         'GLOBAL_SOFAConventions' 'SimpleFreeFieldHRIR' 'rma'  ''; ...
         'GLOBAL_SOFAConventionVersion' '0.0.1' 'rma'  ''; ...
         'GLOBAL_APIName' 'Matlab ARI' 'rma'  ''; ...
         'GLOBAL_APIVersion' '0.0.1' 'rma'  ''; ...
         'GLOBAL_ApplicationName' '' 'ma'  ''; ...
         'GLOBAL_ApplicationVersion' '' 'ma'  ''; ...
         'GLOBAL_AuthorContact' 'sofaconventions' 'ma'  ''; ...
         'GLOBAL_Licence' 'CC BY-SA 3.0' 'ma'  ''; ...
         'GLOBAL_Organization' '' 'ma'  ''; ...
         'GLOBAL_DatabaseName' '' 'ma'  ''; ...
         'GLOBAL_SubjectID' '' 'ma'  ''; ...
         'GLOBAL_RoomType' 'free field' 'ma'  ''; ...
         'GLOBAL_DataType' 'FIR' 'ma'  ''; ...
         'GLOBAL_History' '' 'a' ''; ...
         'GLOBAL_Comment' '' 'a' ''; ...
         'GLOBAL_DatabaseTimeCreated' '' 'ma' ''; ...
         'GLOBAL_DatabaseTimeModified' '' 'ma' ''; ...
         'I' 1 'rma' ''; ...			% used for the sIngleton dimension
         'R' 2 'ma'  ''; ...
         'E' 1 'ma'  ''; ...
         'N' 1 'ma'  ''; ...
         'M' 1 'ma'  ''; ...
         'C' 3 'rma'  ''; ...
         'I_LongName' 'singleton dimension' 'rma' ''; ...
         'R_LongName' 'number of receivers' 'rma'  ''; ...
         'E_LongName' 'number of emitters' 'rma'  ''; ...
         'M_LongName' 'number of measurements' 'rma'  ''; ...
         'C_LongName' 'coordinate triplet' 'rma'  ''; ...
         'N_LongName' 'time' 'ma'  ''; ...
         'N_Units' 'samples' 'ma'  ''; ...
         'ListenerPosition' [1 0 0] 'ma'  {'IC','MC'}; ...
         'ListenerPosition_Type' 'cartesian' 'ma'  ''; ...
         'ListenerPosition_Units' 'meter' 'ma'  ''; ...
         'ListenerUp' [1.2 0 1] 'ma'  {'IC','MC'}; ...
         'ListenerUp_Type' 'cartesian' 'ma'  ''; ...
         'ListenerUp_Units' 'meter' 'ma'  ''; ...
         'ListenerView' [0 0 0] 'ma'  {'IC','MC'}; ...
         'ListenerView_Type' 'cartesian' 'ma'  ''; ...
         'ListenerView_Units' 'meter' 'ma'  ''; ...
         'ListenerRotation' [0 0 0] 'ma'  {'IC','MC'}; ...
         'ListenerRotation_Type' 'din9300' 'ma'  ''; ...
         'ListenerRotation_Units' 'degrees' 'ma'  ''; ...
         'ReceiverPosition' [0 -0.09 0; 0 0.09 0] 'ma'  {'rCI','rCM'}; ...
         'ReceiverPosition_Type' 'cartesian' 'ma'  ''; ...
         'ReceiverPosition_Units' 'meter' 'ma'  ''; ...
         'SourcePosition' [0 0 0] 'ma'  {'IC','MC'}; ...
         'SourcePosition_Type' 'cartesian' 'ma'  ''; ...
         'SourcePosition_Units' 'meter' 'ma'  ''; ...
         'SourceUp' [0 0 1] 'ma'  {'IC','MC'}; ...
         'SourceUp_Type' 'cartesian' 'ma'  ''; ...
         'SourceUp_Units' 'meter' 'ma'  ''; ...
         'SourceView' [1 0 0] 'ma'  {'IC','MC'}; ...
         'SourceView_Type' 'cartesian' 'ma'  ''; ...
         'SourceView_Units' 'meter' 'ma'  ''; ...         
         'EmitterPosition' [0 0 0] 'ma'  {'eCI','eCM'}; ...
         'EmitterPosition_Type' 'cartesian' 'ma'  ''; ...
         'EmitterPosition_Units' 'meter' 'ma'  ''; ...         
        }; 
    dataarray={ ...
         'IR' [1 1] 'ma'  'mRn'; ...
         'SamplingRate' 48000 'ma'  'I'; ...
         'SamplingRate_Units' 'hertz' 'ma'  ''; ...
     };
                 
%% SimpleDRIRMicArray   
  case 'SimpleDRIRMicArray'
		error('Not defined yet.');		
	otherwise 
		error(['This API does not support the conventions "' sofaconventions '".']);
end


%% create metadata structure
for ii=1:size(metadataarray,1)
	if  ~isempty(cell2mat(regexp(metadataarray{ii,3},flagc)))
		Obj.(metadataarray{ii,1})=metadataarray{ii,2};
		if isempty(strfind(metadataarray{ii,1},'_')) && ~sum(strcmp(metadataarray{ii,1},dims))
				Obj.Dimensions.(metadataarray{ii,1})=metadataarray{ii,4};
		end
	end
end

%% create data structure
for ii=1:size(dataarray,1)
    if ~isempty(cell2mat(regexp(dataarray{ii,3},flagc)))
        Obj.Data.(dataarray{ii,1})=dataarray{ii,2};
        if isempty(strfind(dataarray{ii,1},'_'))
            Obj.Dimensions.Data.(dataarray{ii,1})=dataarray{ii,4};
        end
    end
end
%% Overwrite some special fields
if isfield(Obj,'GLOBAL_DatabaseTimeCreated'), Obj.GLOBAL_DatabaseTimeCreated=datestr(now,31); end
if isfield(Obj,'GLOBAL_APIVersion'), Obj.GLOBAL_APIVersion=SOFAgetVersion; end