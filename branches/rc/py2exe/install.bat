@echo sc stop GAppProxy > Register_As_Server.bat
@echo sc delete GAppProxy >> Register_As_Server.bat
@echo sc create GAppProxy binPath= %cd%\srvany.exe start= auto >> Register_As_Server.bat
@echo sc description GAppProxy "HTTP ������� - GAppProxy Ϊ��Ч�͡�" >> Register_As_Server.bat
@echo reg add HKLM\SYSTEM\CurrentControlSet\Services\GAppProxy\Parameters /v Application /d %cd%\proxy.exe >> Register_As_Server.bat /f
@echo reg add HKLM\SYSTEM\CurrentControlSet\Services\GAppProxy\Parameters /v AppDirectory /d %cd% >> Register_As_Server.bat /f
@echo sc start GAppProxy >> Register_As_Server.bat

@echo sc stop GAppProxy > Delete_GAppProxy_Server.bat
@echo sc delete GAppProxy >> Delete_GAppProxy_Server.bat

@echo �ɹ��ˡ���
@echo.
@echo ������� *����Ա���* ��������ļ���Register_As_Server.bat
@echo.
@pause