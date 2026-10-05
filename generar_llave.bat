@echo off
echo ========================================================
echo   FORJA CUBICA BDH - GENERACION DE LLAVE CRIPTOGRAFICA
echo ========================================================
echo.
echo Forjando la llave maestra (llave_bdh.jks)...
echo.
:: Este comando usa la herramienta keytool de Java (que ya tienes) para crear la llave de autoridad.
keytool -genkey -v -keystore llave_bdh.jks -keyalg RSA -keysize 2048 -validity 10000 -alias lordbdh -dname "CN=Lord BDH, OU=BDH, O=BDH, L=Underworld, S=MX, C=MX" -storepass "bdh12345" -keypass "bdh12345"

echo.
echo Llave forjada con exito.
echo NOTA: Los comandos de compilacion (javac, d8, aapt2) requieren la ruta exacta de tu Android SDK.
echo.
pause
