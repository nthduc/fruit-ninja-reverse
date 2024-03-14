.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;,
        Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;
    }
.end annotation


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER:Ljava/lang/String; = "com.facebook.katana.provider.AttributionIdProvider"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI:Ljava/lang/String; = "com.facebook.wakizashi.provider.AttributionIdProvider"

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String; = "com.facebook.internal.AttributionIdentifiers"

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private androidInstallerPackage:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 3

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    .line 250
    sput-object p0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    return-object p0
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 2

    .line 75
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    if-nez v0, :cond_11

    .line 77
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    if-nez v0, :cond_11

    .line 79
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v0}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    :cond_11
    return-object v0
.end method

.method private static getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 8

    const/4 v0, 0x0

    .line 87
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    .line 91
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 92
    invoke-static {v1, v2, v4}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1b

    return-object v0

    .line 99
    :cond_1b
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_26

    return-object v0

    .line 104
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v1, :cond_61

    if-nez v2, :cond_43

    goto :goto_61

    .line 111
    :cond_43
    new-instance v3, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v3}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 112
    new-array v4, v6, [Ljava/lang/Object;

    .line 113
    invoke-static {p0, v1, v4}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 114
    new-array v1, v6, [Ljava/lang/Object;

    .line 115
    invoke-static {p0, v2, v1}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v3, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_62

    return-object v3

    :cond_61
    :goto_61
    return-object v0

    :catch_62
    move-exception p0

    const-string v1, "android_id"

    .line 119
    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 6

    .line 152
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;-><init>(Lcom/facebook/internal/AttributionIdentifiers$1;)V

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    .line 154
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 155
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 157
    :try_start_19
    new-instance v2, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;

    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 158
    new-instance v3, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v3}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 159
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 160
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->isTrackingLimited()Z

    move-result v2

    iput-boolean v2, v3, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_39
    .catchall {:try_start_19 .. :try_end_33} :catchall_37

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_37
    move-exception v1

    goto :goto_43

    :catch_39
    move-exception v2

    :try_start_3a
    const-string v3, "android_id"

    .line 163
    invoke-static {v3, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_47

    :goto_43
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 166
    throw v1

    :cond_47
    :goto_47
    return-object v1
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "limit_tracking"

    const-string v1, "androidid"

    const-string v2, "aid"

    .line 172
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    const/4 v4, 0x0

    .line 177
    :try_start_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_d5

    .line 182
    sget-object v5, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    if-eqz v5, :cond_2c

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-wide v7, v7, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x36ee80

    cmp-long v9, v5, v7

    if-gez v9, :cond_2c

    .line 185
    sget-object p0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    return-object p0

    .line 188
    :cond_2c
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.facebook.katana.provider.AttributionIdProvider"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v9, "com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 197
    invoke-virtual {v6, v9, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v5, :cond_57

    .line 198
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 199
    invoke-static {p0, v5}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    const-string v5, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 201
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_55
    move-object v6, v5

    goto :goto_69

    :cond_57
    if-eqz v6, :cond_68

    .line 202
    iget-object v5, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 203
    invoke-static {p0, v5}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    const-string v5, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 205
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_55

    :cond_68
    move-object v6, v4

    .line 207
    :goto_69
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 209
    iput-object v5, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    :cond_71
    if-nez v6, :cond_78

    .line 212
    invoke-static {v3}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object p0

    return-object p0

    .line 214
    :cond_78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_83} :catch_df
    .catchall {:try_start_b .. :try_end_83} :catchall_dd

    if-eqz p0, :cond_c2

    .line 215
    :try_start_85
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_8c

    goto :goto_c2

    .line 218
    :cond_8c
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 219
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 220
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    if-lez v1, :cond_b8

    if-lez v0, :cond_b8

    .line 228
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b8

    .line 229
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 230
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b8} :catch_d0
    .catchall {:try_start_85 .. :try_end_b8} :catchall_cc

    :cond_b8
    if-eqz p0, :cond_bd

    .line 237
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_bd
    invoke-static {v3}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object p0

    return-object p0

    .line 216
    :cond_c2
    :goto_c2
    :try_start_c2
    invoke-static {v3}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c6} :catch_d0
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_cc

    if-eqz p0, :cond_cb

    .line 237
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_cb
    return-object v0

    :catchall_cc
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    goto :goto_103

    :catch_d0
    move-exception v0

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    goto :goto_e1

    .line 178
    :cond_d5
    :try_start_d5
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "getAttributionIdentifiers cannot be called on the main thread."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_dd} :catch_df
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception p0

    goto :goto_103

    :catch_df
    move-exception p0

    move-object v0, v4

    .line 233
    :goto_e1
    :try_start_e1
    sget-object v1, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_e1 .. :try_end_fb} :catchall_101

    if-eqz v0, :cond_100

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_100
    return-object v4

    :catchall_101
    move-exception p0

    move-object v4, v0

    :goto_103
    if-eqz v4, :cond_108

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_108
    throw p0

    return-void
.end method

.method public static getCachedIdentifiers()Lcom/facebook/internal/AttributionIdentifiers;
    .registers 1

    .line 244
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    return-object v0
.end method

.method private static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    .line 132
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v4, "isGooglePlayServicesAvailable"

    .line 133
    invoke-static {v2, v4, v1}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_13

    return v3

    :cond_13
    const/4 v2, 0x0

    .line 142
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v2, v1, v4}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 143
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    check-cast p0, Ljava/lang/Integer;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v3
.end method

.method public static isTrackingLimited(Landroid/content/Context;)Z
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 128
    invoke-virtual {p0}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .registers 2

    .line 259
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/facebook/FacebookSdk;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 260
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndroidInstallerPackage()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingLimited()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    return v0
.end method
