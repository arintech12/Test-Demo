*** Settings ***
Library    Process
Library    pywinauto

*** Test Cases ***
Open Notepad And Type
    [Documentation]    Open Notepad and type text
    ${app}=    Run Process    notepad.exe    shell=True    stdout=PIPE
    Sleep    2s
    ${desktop}=    Evaluate    __import__('pywinauto').Application().connect(path="notepad.exe")
    ${notepad}=    Evaluate    ${desktop}.window(title_re=".*Notepad")
    ${notepad}.Edit.type_keys("Hello from Robot Framework!", with_spaces=True)
    Sleep    2s
    ${notepad}.menu_select("File->Exit")
    Sleep    1s
    ${close}=    Evaluate    ${desktop}.window(title_re=".*Notepad")
    ${close}.window(title_re=".*Notepad").child_window(title="Don't Save", control_type="Button").click()
