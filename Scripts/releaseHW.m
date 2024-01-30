clear, clc
%% get Project path
projObj = currentProject;
projPath = projObj.RootFolder;
codeFolder = fullfile(projPath,'code');
docsFolder = fullfile(projPath,"Documents");
scripts = fullfile(projPath,'Scripts','*');
functions = fullfile(projPath,'Functions','*');
copyfile(scripts,codeFolder,'f')
delete(fullfile(codeFolder,'releaseHW.m'));
copyfile(functions,codeFolder,'f')
sub_name = get_submission_name_from_doc(docsFolder);
codeFiles = fullfile(codeFolder,'*');
zip(sub_name,codeFiles);
zipFile = [sub_name '.zip'];
pdfFile = fullfile(docsFolder,[sub_name '.pdf']);
movefile(zipFile,"submission","f");
copyfile(pdfFile,"submission","f");

function zip_name = get_submission_name_from_doc(docsFolder)
    zip_name = '';
    docsnames = dir(docsFolder);
    for i = 1:length(docsnames)
        filename = docsnames(i).name;
        if contains(filename,'_305428815_322542804')
            name_split = strsplit(filename,'.');
            zip_name = name_split{1};
        end
    end
    if isempty(zip_name)
        error("didn't found pdf")
    end
end