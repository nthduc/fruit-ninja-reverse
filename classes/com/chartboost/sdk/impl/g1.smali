.class public Lcom/chartboost/sdk/impl/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x4

.field private static b:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 4
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_b

    return-object v0

    .line 8
    :cond_b
    invoke-static {p0}, Lcom/chartboost/sdk/impl/g1;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    .line 13
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_28

    :try_start_18
    const-string v1, "android_id"

    .line 16
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_28

    :try_start_1e
    const-string v1, "9774d56d682e549c"

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_27

    if-eqz v1, :cond_27

    goto :goto_28

    :catch_27
    :cond_27
    move-object v0, p0

    :catch_28
    :cond_28
    :goto_28
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/chartboost/sdk/impl/g1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_a

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    return-object v0

    .line 3
    :cond_a
    :goto_a
    invoke-static {p0}, Lcom/chartboost/sdk/impl/g1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    .line 3
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, p0

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_2b

    .line 6
    sget p0, Lcom/chartboost/sdk/impl/g1;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2b
    sget p0, Lcom/chartboost/sdk/impl/g1;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "cbPrefs"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_12

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 v0, 0x0

    const-string v1, "cbUUID"

    .line 6
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-object v0

    .line 11
    :cond_1c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 14
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_31
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const-string v2, "org.chromium.arc.device_management"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_77

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v2, :cond_38

    const-string v3, "chromium"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    :cond_38
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v2, :cond_45

    const-string v3, ".+_cheets"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_77

    :cond_45
    const-string v2, "android.hardware.type.watch"

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const/4 v2, 0x6

    if-ne v1, v2, :cond_51

    goto :goto_74

    :cond_51
    const-string v2, "android.hardware.type.television"

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5d

    goto :goto_71

    .line 20
    :cond_5d
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v1, :cond_69

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    :cond_69
    if-ne p0, v0, :cond_6e

    :cond_6b
    const-string p0, "tablet"

    return-object p0

    :cond_6e
    const-string p0, "phone"

    return-object p0

    :cond_71
    :goto_71
    const-string p0, "tv"

    return-object p0

    :cond_74
    :goto_74
    const-string p0, "watch"

    return-object p0

    :cond_77
    :goto_77
    const-string p0, "chromebook"

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "cb.limit.aid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    const/4 v0, 0x1

    if-ne p0, v0, :cond_24

    return v0

    :catch_24
    :cond_24
    const/4 p0, 0x0

    return p0
.end method
