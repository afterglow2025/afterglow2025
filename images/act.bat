@echo off
cd /d C:\afterglow\images

mkdir compressed

for %%f in (*.webp) do (
    magick "%%f" -resize 50%% -quality 70 "compressed\%%~nf.webp"
)

echo 압축 완료! compressed 폴더를 확인하세요.
pause
