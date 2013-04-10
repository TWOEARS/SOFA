function [Obj,Var,DataVar] = SOFAgetConventions(sofaconventions,flags)
%SOFAGETVARIABLES
%   Obj = SOFAgetConventions(sofaconventions,flags) returns a list of variables and attributes.

% SOFA API - function SOFAgetConventions
% Copyright (C) 2012-2013 Acoustics Research Institute - Austrian Academy of Sciences
% Licensed under the EUPL, Version 1.1 or � as soon they will be approved by the European Commission - subsequent versions of the EUPL (the "Licence")
% You may not use this work except in compliance with the Licence.
% You may obtain a copy of the Licence at: http://joinup.ec.europa.eu/software/page/eupl
% Unless required by applicable law or agreed to in writing, software distributed under the Licence is distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the Licence for the specific language governing  permissions and limitations under the Licence. 

% Last Update: Michael Mihocic, 04.2013


if ~exist('flags','var')
    flags='m';
end

%% ---------------------- return specified variables ----------------------
%% SimpleFreeFieldHRIR
switch sofaconventions
    case 'SimpleFreeFieldHRIR'
        % name, value, flags, dimensions
        % flags: m: mandatory, r: readonly
        metadataarray={ ...
         'GLOBAL_Conventions' 'SOFA' 'r'  ''; ...
         'GLOBAL_SOFAConventions' sofaconventions 'rm'  ''; ...
         'GLOBAL_SOFAConventionVersion' '0.0.1' 'rm'  ''; ...
         'GLOBAL_APIName' 'Matlab ARI' 'rm'  ''; ...
         'GLOBAL_APIVersion' '0.0.1' 'rm'  ''; ...
         'GLOBAL_ApplicationName' '' 'm'  ''; ...
         'GLOBAL_ApplicationVersion' '' 'm'  ''; ...
         'GLOBAL_AuthorContact' 'sofaconventions' 'm'  ''; ...
         'GLOBAL_Licence' 'CC BY-SA 3.0' 'm'  ''; ...
         'GLOBAL_Organization' '' 'm'  ''; ...
         'GLOBAL_DatabaseName' '' 'm'  ''; ...
         'GLOBAL_SubjectID' '' 'm'  ''; ...
         'GLOBAL_RoomType' 'free field' 'm'  ''; ...
         'GLOBAL_DataType' 'FIR' 'm'  ''; ...
         'R' NaN 'm'  ''; ...
         'E' NaN 'm'  ''; ...
         'N' NaN 'm'  ''; ...
         'M' NaN 'm'  ''; ...
         'C' 3 'rm'  ''; ...
         'R_LongName' 'number of receivers' 'm'  ''; ...
         'E_LongName' 'number of emitters' 'm'  ''; ...
         'M_LongName' 'number of measurements' 'm'  ''; ...
         'C_LongName' 'coordinate triplet' 'm'  ''; ...
         'N_LongName' 'time' 'm'  ''; ...
         'N_Units' 'samples' 'm'  ''; ...
         'ListenerPosition' NaN(1,3) 'm'  {'C','MC'}; ...
         'ListenerPosition_Type' 'cartesian' 'm'  ''; ...
         'ListenerPosition_Units' 'meter' 'm'  ''; ...
         'ListenerUp' NaN(1,3) 'm'  {'C','MC'}; ...
         'ListenerUp_Type' 'cartesian' 'm'  ''; ...
         'ListenerUp_Units' 'meter' 'm'  ''; ...
         'ListenerView' NaN(1,3) 'm'  {'C','MC'}; ...
         'ListenerView_Type' 'cartesian' 'm'  ''; ...
         'ListenerView_Units' 'meter' 'm'  ''; ...
         'ListenerRotation' NaN(1,3) 'm'  {'C','MC'}; ...
         'ReceiverRotation_Type' 'din9300' 'm'  ''; ...
         'ReceiverRotation_Units' 'degrees' 'm'  ''; ...
         'ReceiverPosition' NaN(2,3) 'm'  {'RC','RCM'}; ...
         'ReceiverPosition_Type' 'cartesian' 'm'  ''; ...
         'ReceiverPosition_Units' 'meter' 'm'  ''; ...
         'SourcePosition' NaN(1,3) 'm'  ''; ...
         'SourcePosition_Type' 'cartesian' 'm'  ''; ...
         'SourcePosition_Units' 'meter' 'm'  ''; ...
         'SourceUp' NaN(1,3) 'm'  ''; ...
         'SourceUp_Type' 'cartesian' 'm'  ''; ...
         'SourceUp_Units' 'meter' 'm'  ''; ...
         'SourceView' NaN(1,3) 'm'  ''; ...
         'SourceView_Type' 'cartesian' 'm'  ''; ...
         'SourceView_Units' 'meter' 'm'  ''; ...         
         'EmitterPosition' NaN(1,3) 'm'  {'RC','RCM'}; ...
         'EmitterPosition_Type' 'cartesian' 'm'  ''; ...
         'EmitterPosition_Units' 'meter' 'm'  ''; ...         
        }; 
    dataarray={ ...
         'IR' zeros(3,2,1) 'm'  'mRn'; ...
         'SamplingRate' 48000 'm'  ''; ...
         'SamplingRate_Units' 'hertz' 'm'  ''; ...
     };
%     f={'varname', 'varvalue', 'm', 'readonly'};
                  
 
    case 'SimpleDRIRMicArray'
%% SimpleDRIRMicArray  

%         GLOBAL_Conventions='SOFA';
%         GLOBAL_SOFAConventions=sofaconventions;
%         GLOBAL_SOFAConventionVersion='0.0.1';
%         GLOBAL_APIName='Matlab ARI';
%         GLOBAL_APIVersion='0.0.1';
%         GLOBAL_ApplicationName='';
%         GLOBAL_ApplicationVersion='';
%         GLOBAL_AuthorContact='';
%         GLOBAL_Licence='CC BY-SA 3.0';
%         GLOBAL_Organization='';
%         GLOBAL_DatabaseName='';
%         GLOBAL_SubjectID='';
%         
%         R=NaN;
%         E=NaN;
%         N=NaN;
%         M=NaN;
%         C=3;
%         R_LongName='number of receivers';
%         E_LongName='number of emitters';
%         M_LongName='number of measurements';
%         C_LongName='coordinate triplet';
%         RoomType='dae';
% 
% % Data-type        
%         Data.IR = zeros(3,2,1);
%         DataType = 'FIR';
%         Data.SamplingRate = 48000;
%         Data.SamplingRate_Units = 'hertz';
%         N_LongName='time';
%         N_Units='samples';
% 
% %  Listener
%         ListenerPosition = NaN(1,3);
%         ListenerPosition_Type = 'cartesian';
%         ListenerPosition_Units = 'meter';
%         ListenerUp = NaN(1,3);
%         ListenerUp_Type = 'cartesian';
%         ListenerUp_Units = 'meter';
%         ListenerView = NaN(1,3);
%         ListenerView_Type = 'cartesian';
%         ListenerView_Units = 'meter';
% 
% % Receivers        
% %         ReceiverPosition = [0 -0.09 0; 0 0.09 0];
%         ReceiverPosition = NaN(2,3);
%         ReceiverPosition_Type = 'spherical';
%         ReceiverPosition_Units = 'degrees';        
%         
% % Source        
%         SourcePosition = NaN(1,3);
%         SourcePosition_Type = 'cartesian';
%         SourcePosition_Units = 'meter';          
%         SourceUp = NaN(1,3);
%         SourceUp_Type = 'cartesian';
%         SourceUp_Units = 'meter'; 
%         SourceView = NaN(1,3);
%         SourceView_Type = 'cartesian';
%         SourceView_Units = 'meter'; 
%         
% % Emitters
%         EmitterPosition = NaN(1,3);
%         EmitterPosition_Type = 'cartesian';
%         EmitterPosition_Units = 'meter';    
%     
%         RoomDAEFileName = 'room';
%         RoomDAEFileName_Description = 'a room';
    otherwise 
end


%     switch varargin{jj}
%         case 'm'
%% create metadata structure
for ii=1:size(metadataarray,1)
    skip=0;
    for jj=1:size(flags,2)
%         strfind(varNames{ii},'_'),2) > 1
        if size( strfind( metadataarray{ii,3},flags(jj)),2 )==0;
            skip=1;
        end
    end
    if skip==0
        Obj.(metadataarray{ii,1})=metadataarray{ii,2};
        if size(strfind(metadataarray{ii,1},'_'),2)==0;
            Var.(metadataarray{ii,1})=metadataarray{ii,4};
        end
    end
end

%% create data structure
for ii=1:size(dataarray,1)
    skip=0;
    for jj=1:size(flags,2)
%         strfind(varNames{ii},'_'),2) > 1
        if size( strfind( dataarray{ii,3},flags(jj)),2 )==0;
            skip=1;
        end
    end
    if skip==0
        Obj.(dataarray{ii,1})=dataarray{ii,2};
%         DataVar.(dataarray{ii,1})=dataarray{ii,4};
        if size(strfind(dataarray{ii,1},'_'),2)==0;
            DataVar.(dataarray{ii,1})=dataarray{ii,4};
        end
    end
end

end %of function