.class public Lcom/ironsource/mediationsdk/utils/IronSourceAES;
.super Ljava/lang/Object;
.source "IronSourceAES.java"


# static fields
.field private static mDidSendEncryptionFailEventInSession:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 60
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_75

    .line 61
    monitor-exit v0

    return-object p0

    .line 63
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p0, ""
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_75

    .line 64
    monitor-exit v0

    return-object p0

    :cond_17
    const/4 v1, 0x0

    .line 67
    :try_start_18
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const/16 v2, 0x10

    .line 70
    new-array v2, v2, [B

    .line 71
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 72
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 74
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v2, "AES/CBC/PKCS7Padding"

    .line 76
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v4, 0x2

    .line 77
    invoke-virtual {v2, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 80
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3f} :catch_41
    .catchall {:try_start_18 .. :try_end_3f} :catchall_75

    .line 82
    monitor-exit v0

    return-object p1

    :catch_41
    move-exception p0

    .line 85
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    sget-boolean p0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    if-nez p0, :cond_71

    const/4 p0, 0x1

    .line 89
    sput-boolean p0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    .line 90
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_75

    :try_start_50
    const-string v1, "status"

    const-string v2, "false"

    .line 92
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 93
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5c} :catch_5d
    .catchall {:try_start_50 .. :try_end_5c} :catchall_75

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 95
    :try_start_5e
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    :goto_61
    new-instance p0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x72

    invoke-direct {p0, v1, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 98
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    const-string v1, "https://outcome-ssp.supersonicads.com/mediation?adUnit=2"

    invoke-virtual {p1, p0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    :cond_71
    const-string p0, ""
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_75

    .line 102
    monitor-exit v0

    return-object p0

    :catchall_75
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 28
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_56

    .line 29
    monitor-exit v0

    return-object p0

    .line 31
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p0, ""
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_56

    .line 32
    monitor-exit v0

    return-object p0

    .line 35
    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const-string v1, "UTF8"

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v1, 0x10

    .line 39
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 40
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 41
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 44
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x1

    .line 45
    invoke-virtual {v1, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "line.separator"

    .line 48
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4c} :catch_4e
    .catchall {:try_start_17 .. :try_end_4c} :catchall_56

    .line 50
    monitor-exit v0

    return-object p0

    :catch_4e
    move-exception p0

    .line 53
    :try_start_4f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_56

    .line 56
    monitor-exit v0

    return-object p0

    :catchall_56
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 114
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 116
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "UTF-8"

    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 120
    array-length v2, p0

    array-length v3, v0

    if-ge v2, v3, :cond_14

    array-length v2, p0

    goto :goto_15

    :cond_14
    array-length v2, v0

    .line 121
    :goto_15
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
