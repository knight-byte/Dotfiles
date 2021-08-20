#!/usr/bin/python
'''
Created by    : Abunachar
Language used : Python3
Editor Used   : Vim
'''

        
import os
import shutil
import sys
import time



change_dir = ''
try:
    path = sys.argv[1]
    os.chdir(path)
    change_dir = os.getcwd()
    # print(os.getcwd())
except:
    print('Unable to Locate the Directory :(')
    time.sleep(2)
    sys.exit()


# print('sorting...')
''' EXTENTION '''
# image extension
image_ext = ['png', 'jpg', 'jpeg', 'bmp', 'tiff',
             'psd', 'ai', 'raw', 'svg', 'gif', 'icon']
# video extention
vid_ext = ['mp4', 'flv', 'mkv', 'mov', 'wmv', 'flv', 'avi', 'webm']
# audio extention
aud_ext = ['m4a', 'mp3', 'flac', 'wav', 'wma', 'aac']
# textDoc extention
doc_type = ['ppt', 'doc', 'pptx', 'docx', 'pdf', 'txt', 'xls', 'xlsx','epub']
# program and executable extention
prog_type = ['py', 'ipynb', 'java', 'jar', 'class', 'css',
             'html', 'xhtml', 'scss', 'c', 'cpp', 'cxx', 'js',
             'xml', 'json', 'csv', 'exe', 'bat', 'sh']
# zip file extention
zip_file = ['zip', 'rar', 'bz2', '7z', 'gz', 'tar']


try:
    all_dir_and_file = os.listdir()

    # Main Folder Sort
    for i in all_dir_and_file:
        if i == 'RandomFileGenrator.py':
            continue
        extention = i.split('.')
        ext = extention[len(extention)-1]

        # image_Type
        if ext in image_ext:
            if not os.path.isdir(change_dir+'/Images'):
                os.mkdir('Images')
            shutil.move(i, 'Images/'+i)

        # Video type sort
        elif ext in vid_ext:
            if not os.path.isdir(change_dir+'/Videos'):
                os.mkdir('Videos')
            shutil.move(i, 'Videos/'+i)

        # audio type sort
        elif ext in aud_ext:
            if not os.path.isdir(change_dir+'/Audios'):
                os.mkdir('Audios')
            shutil.move(i, 'Audios/'+i)

        # all doc type sort
        elif ext in doc_type:
            if not os.path.isdir(change_dir+'/Documents'):
                os.mkdir('Documents')
            shutil.move(i, 'Documents/'+i)

        # all program type sort
        elif ext in prog_type:
            if not os.path.isdir(change_dir+'/Program'):
                os.mkdir('Program')
            shutil.move(i, 'Program/'+i)

        # zip file sort
        elif ext in zip_file:
            if not os.path.isdir(change_dir+'/Zip'):
                os.mkdir('Zip')
            shutil.move(i, 'Zip/'+i)

except Exception as e:
    print(e)
    print('Error occured ,Please try again')
    time.sleep(6)
    sys.exit()


# Documents file inner sort
try:
    os.chdir(change_dir+'/Documents')
    up_dir = os.getcwd()
    doc_dir_list = os.listdir()
    for i in doc_dir_list:

        extention = i.split('.')
        ext = extention[len(extention)-1]

        # doc type
        if ext in ['doc', 'docx', 'txt', 'pdf','epub']:
            if not os.path.isdir(up_dir+'/TextDoc'):
                os.mkdir('TextDoc')
            shutil.move(i, 'TextDoc/'+i)

        # presentation type
        elif ext in ['ppt', 'pptx']:
            if not os.path.isdir(up_dir+'/Ppts'):
                os.mkdir('Ppts')
            shutil.move(i, 'Ppts/'+i)

        # excelsheet type
        elif ext in ['xls', 'xlsx']:
            if not os.path.isdir(up_dir+'/ExcelSheet'):
                os.mkdir('ExcelSheet')
            shutil.move(i, 'ExcelSheet/'+i)

    os.chdir(change_dir)
except:
    os.chdir(change_dir)
    pass


# program file inner Sorting
try:
    os.chdir(change_dir+'/Program')
    up_dir = os.getcwd()
    prog_dir_list = os.listdir(up_dir)
    for i in prog_dir_list:

        # extention separater
        extention = i.split('.')
        ext = extention[len(extention)-1]

        # python file
        if ext in ['py', 'ipynb']:
            if not os.path.isdir(up_dir+'/Python'):
                os.mkdir('Python')
            shutil.move(i, 'Python/'+i)

        # Java file
        elif ext in ['java', 'jar', 'class']:
            if not os.path.isdir(up_dir+'/Java'):
                os.mkdir('Java')
            shutil.move(i, 'Java/'+i)

        # html css file
        elif ext in ['css', 'scss', 'html', 'xhtml']:
            if not os.path.isdir(up_dir+'/HtmlCss'):
                os.mkdir('HtmlCss')
            shutil.move(i, 'HtmlCss/'+i)

        # javascript file
        elif ext in ['js']:
            if not os.path.isdir(up_dir+'/JavaScript'):
                os.mkdir('JavaScript')
            shutil.move(i, 'JavaScript/'+i)

        # C and C++ file sort
        elif ext in ['c', 'cpp', 'cxx']:
            if not os.path.isdir(up_dir+'/C&Cpp'):
                os.mkdir('C&Cpp')
            shutil.move(i, 'C&Cpp/'+i)

        # data format file
        elif ext in ['xml', 'csv', 'json']:
            if not os.path.isdir(up_dir+'/dataFormat'):
                os.mkdir('dataFormat')
            shutil.move(i, 'dataFormat/'+i)

        # Executable program
        elif ext in ['bat', 'exe', 'sh']:
            if not os.path.isdir(up_dir+'/Executable'):
                os.mkdir('Executable')
            shutil.move(i, 'Executable/'+i)

    # changing to default/original directory
    os.chdir(change_dir)
except:
    os.chdir(change_dir)
    pass

print("DONE :)")
