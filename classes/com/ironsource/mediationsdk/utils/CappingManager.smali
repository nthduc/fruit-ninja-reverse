.class public Lcom/ironsource/mediationsdk/utils/CappingManager;
.super Ljava/lang/Object;
.source "CappingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    }
.end annotation


# static fields
.field private static final CAPPING_TIME_THRESHOLD:Ljava/lang/String; = "CappingManager.CAPPING_TIME_THRESHOLD"

.field private static final CAPPING_TYPE:Ljava/lang/String; = "CappingManager.CAPPING_TYPE"

.field private static final CURRENT_NUMBER_OF_SHOWS:Ljava/lang/String; = "CappingManager.CURRENT_NUMBER_OF_SHOWS"

.field private static final IS_CAPPING_ENABLED:Ljava/lang/String; = "CappingManager.IS_CAPPING_ENABLED"

.field private static final IS_DELIVERY_ENABLED:Ljava/lang/String; = "CappingManager.IS_DELIVERY_ENABLED"

.field private static final IS_PACING_ENABLED:Ljava/lang/String; = "CappingManager.IS_PACING_ENABLED"

.field private static final MAX_NUMBER_OF_SHOWS:Ljava/lang/String; = "CappingManager.MAX_NUMBER_OF_SHOWS"

.field private static final SECONDS_BETWEEN_SHOWS:Ljava/lang/String; = "CappingManager.SECONDS_BETWEEN_SHOWS"

.field private static final TIME_OF_THE_PREVIOUS_SHOW:Ljava/lang/String; = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    .line 66
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    .line 68
    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    const-string v2, "Banner"

    .line 71
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    .line 72
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    .line 64
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    .line 42
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    .line 44
    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    const-string v2, "Interstitial"

    .line 47
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    .line 48
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    .line 40
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    .line 54
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    .line 56
    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    const-string v2, "Rewarded Video"

    .line 59
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    .line 60
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    .line 52
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method private static addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    .registers 6

    .line 269
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled()Z

    move-result v0

    const-string v1, "CappingManager.IS_DELIVERY_ENABLED"

    .line 270
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v0, :cond_10

    return-void

    .line 278
    :cond_10
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled()Z

    move-result v0

    const-string v1, "CappingManager.IS_CAPPING_ENABLED"

    .line 279
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3d

    .line 283
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getCappingValue()I

    move-result v0

    const-string v1, "CappingManager.MAX_NUMBER_OF_SHOWS"

    .line 284
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 288
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getCappingType()Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v0

    const-string v1, "CappingManager.CAPPING_TYPE"

    .line 289
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3d
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled()Z

    move-result v0

    const-string v1, "CappingManager.IS_PACING_ENABLED"

    .line 295
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_59

    .line 299
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getPacingValue()I

    move-result p3

    const-string v0, "CappingManager.SECONDS_BETWEEN_SHOWS"

    .line 300
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {p0, p1, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_59
    return-void
.end method

.method private static constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized incrementBnShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    .line 121
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Banner"

    .line 122
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 124
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized incrementIsShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "Interstitial"

    .line 107
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 108
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized incrementRvShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "Rewarded Video"

    .line 117
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 118
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p1, :cond_12

    :try_start_5
    const-string v1, "Interstitial"

    .line 102
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0

    .line 104
    :cond_12
    :goto_12
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p1, :cond_12

    :try_start_5
    const-string v1, "Rewarded Video"

    .line 112
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0

    .line 114
    :cond_12
    :goto_12
    monitor-exit v0

    return-void
.end method

.method private static incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "CappingManager.IS_PACING_ENABLED"

    .line 196
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 197
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    .line 201
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {p0, v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1a
    const-string v0, "CappingManager.IS_CAPPING_ENABLED"

    .line 206
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "CappingManager.MAX_NUMBER_OF_SHOWS"

    .line 210
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    const-string v0, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    .line 214
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    if-eqz v4, :cond_75

    const-string v4, "CappingManager.CAPPING_TYPE"

    .line 222
    invoke-static {p1, v4, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    sget-object v5, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 225
    invoke-static {}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->values()[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v6

    array-length v7, v6

    :goto_57
    if-ge v1, v7, :cond_68

    aget-object v8, v6, v1

    .line 226
    iget-object v9, v8, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    move-object v5, v8

    goto :goto_68

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 232
    :cond_68
    :goto_68
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/CappingManager;->initTimeThreshold(Lcom/ironsource/mediationsdk/model/PlacementCappingType;)J

    move-result-wide v4

    const-string v1, "CappingManager.CAPPING_TIME_THRESHOLD"

    .line 235
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_75
    add-int/2addr v2, v3

    .line 243
    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_79
    return-void
.end method

.method private static initTimeThreshold(Lcom/ironsource/mediationsdk/model/PlacementCappingType;)J
    .registers 9

    const-string v0, "UTC"

    .line 248
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 249
    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$1;->$SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xe

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v5, :cond_2f

    const/4 v7, 0x2

    if-eq p0, v7, :cond_22

    goto :goto_3f

    .line 258
    :cond_22
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 259
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 260
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 261
    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_3f

    .line 251
    :cond_2f
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 253
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    .line 255
    invoke-virtual {v0, p0, v5}, Ljava/util/Calendar;->add(II)V

    .line 264
    :goto_3f
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "Banner"

    .line 86
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "Interstitial"

    .line 82
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 75
    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    const-string v1, "Interstitial"

    .line 78
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    monitor-exit v0

    return-object p0

    .line 76
    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 90
    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    const-string v1, "Rewarded Video"

    .line 93
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    monitor-exit v0

    return-object p0

    .line 91
    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 13

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "CappingManager.IS_DELIVERY_ENABLED"

    .line 137
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 138
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    .line 141
    sget-object p0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p0

    :cond_14
    const-string v2, "CappingManager.IS_PACING_ENABLED"

    .line 145
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 146
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_43

    const-string v2, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    .line 149
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {p0, v2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "CappingManager.SECONDS_BETWEEN_SHOWS"

    .line 153
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sub-long v6, v0, v6

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_43

    .line 159
    sget-object p0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p0

    :cond_43
    const-string v2, "CappingManager.IS_CAPPING_ENABLED"

    .line 164
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "CappingManager.MAX_NUMBER_OF_SHOWS"

    .line 168
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v6, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    .line 172
    invoke-static {p1, v6, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "CappingManager.CAPPING_TIME_THRESHOLD"

    .line 176
    invoke-static {p1, v8, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v0, v8

    if-ltz p2, :cond_78

    .line 182
    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 183
    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_7d

    :cond_78
    if-lt v7, v2, :cond_7d

    .line 186
    sget-object p0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p0

    .line 191
    :cond_7d
    :goto_7d
    sget-object p0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p0
.end method

.method public static declared-synchronized isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "Rewarded Video"

    .line 97
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method
