.class public Lcom/ironsource/sdk/utils/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKUtils"

.field private static mAdvertisingId:Ljava/lang/String; = null

.field private static mControllerConfig:Ljava/lang/String; = null

.field private static mControllerUrl:Ljava/lang/String; = null

.field private static mDebugMode:I = 0x0

.field private static mInitSDKParams:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsLimitedTrackingEnabled:Z = true

.field private static mUserGroup:Ljava/lang/String; = ""

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPx(I)I
    .registers 3

    int-to-float p0, p0

    .line 119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static convertPxToDp(I)I
    .registers 3

    int-to-float p0, p0

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 107
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 259
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    const/4 v1, 0x0

    .line 265
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/FileWriter;

    invoke-direct {p3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 269
    :try_start_19
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_55

    .line 270
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    :goto_2a
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 276
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_53

    .line 281
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    .line 284
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_4f

    .line 287
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 290
    :cond_4f
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    return-object v1

    :catchall_53
    move-exception v1

    goto :goto_59

    :catchall_55
    move-exception p3

    move-object v4, v1

    move-object v1, p3

    move-object p3, v4

    :goto_59
    if-eqz p3, :cond_5e

    .line 281
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    .line 284
    :cond_5e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_66

    .line 287
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 290
    :cond_66
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    .line 291
    throw v1

    return-void
.end method

.method public static createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s Failure occurred during initiation at: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "UTF-8"

    .line 313
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_24

    :catch_7
    move-exception p0

    .line 315
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed decoding string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_24
    return-object p0
.end method

.method public static dpToPx(J)I
    .registers 3

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    long-to-float p0, p0

    .line 101
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 300
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_11

    :catch_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA-1"

    .line 227
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_18

    .line 229
    :try_start_7
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    const-string v2, "UTF-8"

    .line 231
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_13} :catch_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_23

    :catch_14
    move-exception p0

    goto :goto_1a

    :catch_16
    move-exception p0

    goto :goto_20

    :catch_18
    move-exception p0

    move-object v1, v0

    .line 236
    :goto_1a
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_23

    :catch_1e
    move-exception p0

    move-object v1, v0

    .line 234
    :goto_20
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_23
    if-eqz v1, :cond_2a

    .line 240
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :cond_2a
    return-object v0
.end method

.method public static fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;
    .registers 1

    .line 601
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    const-string v0, "demandSourceId"

    .line 605
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_13

    :cond_d
    const-string v0, "demandSourceName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public static flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 565
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_4e

    .line 567
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 568
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 569
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 571
    :try_start_1b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2e} :catch_2f

    goto :goto_4a

    :catch_2f
    move-exception v1

    .line 573
    sget-object v2, Lcom/ironsource/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flatMapToJsonAsStringfailed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 579
    :cond_4e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateViewId()I
    .registers 2

    .line 497
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_b

    .line 498
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewIdForOldOS()I

    move-result v0

    return v0

    .line 500
    :cond_b
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method private static generateViewIdForOldOS()I
    .registers 3

    .line 480
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_e

    const/4 v1, 0x1

    .line 484
    :cond_e
    sget-object v2, Lcom/ironsource/sdk/utils/SDKUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method public static getActivityUIFlags(Z)I
    .registers 4

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 462
    :goto_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_11

    or-int/lit16 v0, v0, 0x704

    .line 465
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1b

    if-eqz p0, :cond_1b

    or-int/lit16 v0, v0, 0x1000

    :cond_1b
    return v0
.end method

.method public static getAdvertiserId()Ljava/lang/String;
    .registers 1

    .line 371
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public static getControllerConfig()Ljava/lang/String;
    .registers 1

    .line 403
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mControllerConfig:Ljava/lang/String;

    return-object v0
.end method

.method public static getControllerConfigAsJSONObject()Lorg/json/JSONObject;
    .registers 2

    .line 505
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    .line 507
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    return-object v1

    :catch_a
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public static getControllerUrl()Ljava/lang/String;
    .registers 1

    .line 384
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mControllerUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 385
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mControllerUrl:Ljava/lang/String;

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static getCurrentTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getDebugMode()I
    .registers 1

    .line 420
    sget v0, Lcom/ironsource/sdk/utils/SDKUtils;->mDebugMode:I

    return v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 76
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 77
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    const-string v0, "\\?"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 81
    aget-object p0, p0, v0

    :try_start_14
    const-string v0, "UTF-8"

    .line 85
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public static getInitSDKParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mInitSDKParams:Ljava/util/Map;

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    .line 327
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 329
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    .line 330
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 332
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_34

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_33} :catch_35

    goto :goto_1a

    :cond_34
    return-object p0

    :catch_35
    move-exception p0

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    return-void
.end method

.method public static getMinOSVersionSupport()I
    .registers 2

    .line 583
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "minOSVersionSupport"

    .line 584
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNetworkConfiguration()Lorg/json/JSONObject;
    .registers 3

    .line 626
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 629
    :try_start_5
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "networkConfig"

    .line 630
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v1

    .line 632
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-object v0
.end method

.method public static getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "orientation"

    .line 177
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/ironsource/sdk/utils/SDKUtils;->translateOrientation(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 179
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_17
    return-object v0
.end method

.method public static getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 2

    .line 516
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 517
    sget-object p0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_2e

    .line 518
    :cond_f
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 519
    sget-object p0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_2e

    .line 520
    :cond_1e
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 521
    sget-object p0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return-object p0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "5.87"

    return-object v0
.end method

.method public static getTesterParameters()Ljava/lang/String;
    .registers 1

    .line 531
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mUserGroup:Ljava/lang/String;

    return-object v0
.end method

.method public static getValueFromJsonObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 435
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p0, 0x0

    :goto_b
    return-object p0
.end method

.method public static isApplicationVisible(Landroid/content/Context;)Z
    .registers 4

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    .line 198
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 199
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 203
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static isExternalStorageAvailable()Z
    .registers 2

    .line 448
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 449
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static isIronSourceActivity(Landroid/app/Activity;)Z
    .registers 2

    .line 621
    instance-of v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;

    if-nez v0, :cond_b

    instance-of p0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .registers 1

    .line 380
    sget-boolean v0, Lcom/ironsource/sdk/utils/SDKUtils;->mIsLimitedTrackingEnabled:Z

    return v0
.end method

.method public static loadGoogleAdvertiserInfo(Landroid/content/Context;)V
    .registers 5

    .line 346
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 347
    aget-object v0, p0, v0

    sput-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->mAdvertisingId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 348
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/ironsource/sdk/utils/SDKUtils;->mIsLimitedTrackingEnabled:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_19
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_6e

    :catchall_17
    move-exception p0

    .line 362
    throw p0

    :catch_19
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    if-eqz v0, :cond_45

    .line 356
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 359
    sget-object v0, Lcom/ironsource/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 592
    :cond_8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    if-eqz v3, :cond_13

    .line 594
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v0
.end method

.method public static mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 543
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_15

    .line 546
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_15
    if-eqz p1, :cond_1b

    .line 550
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    :cond_1b
    if-eqz v1, :cond_32

    const/4 p0, 0x0

    .line 554
    :goto_1e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_32

    .line 555
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 557
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_32
    return-object v0
.end method

.method public static pxToDp(J)I
    .registers 3

    .line 94
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    long-to-float p0, p0

    .line 95
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static requireNonEmptyOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    .line 616
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 611
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setControllerConfig(Ljava/lang/String;)V
    .registers 1

    .line 407
    sput-object p0, Lcom/ironsource/sdk/utils/SDKUtils;->mControllerConfig:Ljava/lang/String;

    return-void
.end method

.method public static setControllerUrl(Ljava/lang/String;)V
    .registers 1

    .line 399
    sput-object p0, Lcom/ironsource/sdk/utils/SDKUtils;->mControllerUrl:Ljava/lang/String;

    return-void
.end method

.method public static setDebugMode(I)V
    .registers 1

    .line 429
    sput p0, Lcom/ironsource/sdk/utils/SDKUtils;->mDebugMode:I

    return-void
.end method

.method public static setInitSDKParams(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 412
    sput-object p0, Lcom/ironsource/sdk/utils/SDKUtils;->mInitSDKParams:Ljava/util/Map;

    return-void
.end method

.method public static setTesterParameters(Ljava/lang/String;)V
    .registers 1

    .line 527
    sput-object p0, Lcom/ironsource/sdk/utils/SDKUtils;->mUserGroup:Ljava/lang/String;

    return-void
.end method

.method public static showNoInternetDialog(Landroid/content/Context;)V
    .registers 3

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "No Internet Connection"

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/ironsource/sdk/utils/SDKUtils$1;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/SDKUtils$1;-><init>()V

    const-string v1, "Ok"

    .line 213
    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static translateOrientation(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const-string p0, "none"

    goto :goto_e

    :cond_9
    const-string p0, "landscape"

    goto :goto_e

    :cond_c
    const-string p0, "portrait"

    :goto_e
    return-object p0
.end method

.method public static translateRequestedOrientation(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/16 v0, 0xb

    if-eq p0, v0, :cond_16

    const/16 v0, 0xc

    if-eq p0, v0, :cond_13

    packed-switch p0, :pswitch_data_1a

    const-string p0, "none"

    goto :goto_18

    :cond_13
    :pswitch_13
    const-string p0, "portrait"

    goto :goto_18

    :cond_16
    :pswitch_16
    const-string p0, "landscape"

    :goto_18
    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x6
        :pswitch_16
        :pswitch_13
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method
