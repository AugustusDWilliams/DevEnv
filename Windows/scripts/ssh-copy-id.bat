SET RSA_FILE = %1
SET USER = %2
SET HOST = %3
::cat ~/.ssh/id_rsa.pub | ssh user@123.45.67.89 "cat >> ~/.ssh/authorized_keys"
cat %RSA_FILE% | ssh %USER%@%HOST% "cat >> ~/.ssh/authorized_keys"