
TARGET = DecTest
APK = $(TARGET).apk
SRC_DIR = build/$(TARGET)
SMALI_DIR = $(SRC_DIR)/smali
JAR = build/$(TARGET).jar

decode:
	java -jar ./tools/apktool.jar d -f $(APK)  $(SRC_DIR)
	./tools/dex2jar-0.0.9.15/d2j-dex2jar.bat --force $(APK) -o $(JAR)