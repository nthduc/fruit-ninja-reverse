.class public Lcom/ironsource/environment/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static final CACHED_UUID_KEY:Ljava/lang/String; = "cachedUUID"

.field private static final DEVICE_OS:Ljava/lang/String; = "android"

.field private static final GOOGLE_PLAY_SERVICES_CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"

.field private static final GOOGLE_PLAY_SERVICES_GET_AID_INFO_METHOD_NAME:Ljava/lang/String; = "getAdvertisingIdInfo"

.field private static final GOOGLE_PLAY_SERVICES_GET_AID_METHOD_NAME:Ljava/lang/String; = "getId"

.field private static final GOOGLE_PLAY_SERVICES_IS_LIMITED_AD_TRACKING_METHOD_NAME:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static final MEDIATION_SHARED_PREFS:Ljava/lang/String; = "Mediation_Shared_Preferences"

.field public static final UUID_ENABLED:Ljava/lang/String; = "uuidEnabled"

.field private static uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chargingType(Landroid/content/Context;)I
    .registers 3

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "plugged"

    const/4 v1, -0x1

    .line 177
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static findBinary(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/sbin/"

    const-string v2, "/system/bin/"

    const-string v3, "/system/xbin/"

    const-string v4, "/data/local/xbin/"

    const-string v5, "/data/local/bin/"

    const-string v6, "/system/sd/xbin/"

    const-string v7, "/system/bin/failsafe/"

    const-string v8, "/data/local/"

    .line 264
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 266
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_3b

    aget-object v4, v1, v3

    .line 267
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_3b

    if-eqz v4, :cond_38

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_3b

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :catch_3b
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static getActivityRequestedOrientation(Landroid/content/Context;)I
    .registers 2

    .line 374
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/app/Activity;

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getAdvertisingIdInfo"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 88
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "getId"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const-string v5, "isLimitAdTrackingEnabled"

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v2, 0x2

    .line 96
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    return-object v2
.end method

.method public static getAndroidAPIVersion()I
    .registers 1

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAndroidOsVersion()Ljava/lang/String;
    .registers 1

    .line 223
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationRotation(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public static getAvailableExternalMemorySizeInMegaBytes()J
    .registers 2

    .line 490
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isExternalMemoryAvailableWritable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 491
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 492
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0
.end method

.method public static getAvailableInternalMemorySizeInMegaBytes()J
    .registers 2

    .line 473
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J
    .registers 3

    .line 482
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 516
    :try_start_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    const-string v2, "level"

    .line 517
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz p0, :cond_20

    const-string v0, "scale"

    .line 518
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_2e

    :cond_20
    if-eq v2, v1, :cond_32

    if-eq v0, v1, :cond_32

    int-to-float p0, v2

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    move v1, p0

    goto :goto_32

    :catch_2e
    move-exception p0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    return v1
.end method

.method public static getDeviceDefaultOrientation(Landroid/content/Context;)I
    .registers 5

    .line 386
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 387
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    if-ne v0, v1, :cond_f

    :cond_d
    if-eq p0, v1, :cond_19

    :cond_f
    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v3, 0x3

    if-ne v0, v3, :cond_18

    :cond_15
    if-ne p0, v2, :cond_18

    goto :goto_19

    :cond_18
    return v2

    :cond_19
    :goto_19
    return v1
.end method

.method public static getDeviceDensity()F
    .registers 1

    .line 414
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 415
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDeviceHeight()I
    .registers 1

    .line 362
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayHeight()I

    move-result v0

    return v0
.end method

.method public static getDeviceLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceLocalTime()J
    .registers 2

    .line 59
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .registers 1

    .line 237
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceOEM()Ljava/lang/String;
    .registers 1

    .line 244
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)I
    .registers 1

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public static getDeviceOs()Ljava/lang/String;
    .registers 1

    const-string v0, "android"

    return-object v0
.end method

.method public static getDeviceTimeZoneOffsetInMinutes()I
    .registers 3

    .line 69
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceLocalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public static getDeviceWidth()I
    .registers 1

    .line 353
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayWidth()I

    move-result v0

    return v0
.end method

.method public static getDisplayHeight()I
    .registers 1

    .line 343
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 344
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getDisplayWidth()I
    .registers 1

    .line 333
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 334
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getFreeStorageInBytes(Ljava/io/File;)J
    .registers 6

    .line 131
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 132
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge p0, v1, :cond_1a

    .line 133
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    goto :goto_22

    .line 135
    :cond_1a
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    :goto_22
    mul-long v1, v1, v3

    const-wide/32 v3, 0x100000

    .line 138
    div-long/2addr v1, v3

    return-wide v1
.end method

.method public static getInstalledApplications(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static getIsTablet(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "window"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 112
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v1

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public static getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/ironsource/environment/DeviceStatus;

    monitor-enter v0

    .line 536
    :try_start_3
    sget-object v1, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 537
    sget-object p0, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_51

    monitor-exit v0

    return-object p0

    :cond_f
    :try_start_f
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    .line 540
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "uuidEnabled"

    const/4 v2, 0x1

    .line 541
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "cachedUUID"

    const-string v2, ""

    .line 543
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 545
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    .line 546
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "cachedUUID"

    .line 547
    sget-object v2, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4d

    .line 550
    :cond_46
    sput-object v1, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_48} :catch_49
    .catchall {:try_start_f .. :try_end_48} :catchall_51

    goto :goto_4d

    :catch_49
    move-exception p0

    .line 553
    :try_start_4a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    :cond_4d
    :goto_4d
    sget-object p0, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_51

    monitor-exit v0

    return-object p0

    :catchall_51
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSystemVolumePercent(Landroid/content/Context;)F
    .registers 3

    const-string v0, "audio"

    .line 323
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 324
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method public static getTotalDeviceRAM(Landroid/content/Context;)J
    .registers 3

    const-string v0, "activity"

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 154
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 156
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :catch_f
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isCharging(Landroid/content/Context;)Z
    .registers 3

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "status"

    const/4 v1, -0x1

    .line 166
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method public static isDeviceOrientationLocked(Landroid/content/Context;)Z
    .registers 3

    .line 438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accelerometer_rotation"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public static isExternalMemoryAvailableWritable()Z
    .registers 2

    .line 145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isImmersiveSupported(Landroid/app/Activity;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 v0, p0, 0x1000

    if-eq v0, p0, :cond_17

    or-int/lit16 v0, p0, 0x800

    if-ne v0, p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 3

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_16

    .line 285
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isRootedDevice()Z
    .registers 1

    const-string v0, "su"

    .line 258
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStayOnWhenPluggedIn(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 200
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_19

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    :catch_15
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    return v0
.end method
