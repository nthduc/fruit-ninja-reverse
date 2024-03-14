.class public Lcom/facebook/appevents/ml/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "facebook_ml/"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMlDir()Ljava/io/File;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 58
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "facebook_ml/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_28

    if-eqz v2, :cond_26

    goto :goto_27

    :cond_26
    return-object v1

    :cond_27
    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    .line 62
    const-class v2, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 50
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    .line 52
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 53
    const-class v0, Lcom/facebook/appevents/ml/Utils;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static vectorize(Ljava/lang/String;I)[I
    .registers 7

    const-class v0, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 36
    :cond_a
    :try_start_a
    new-array v0, p1, [I

    .line 37
    invoke-static {p0}, Lcom/facebook/appevents/ml/Utils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    .line 38
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, p1, :cond_2d

    .line 40
    array-length v4, p0

    if-ge v3, v4, :cond_28

    .line 41
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v3

    goto :goto_2a

    .line 43
    :cond_28
    aput v2, v0, v3
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2a} :catch_2e

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2d
    return-object v0

    :catch_2e
    move-exception p0

    .line 46
    const-class p1, Lcom/facebook/appevents/ml/Utils;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
