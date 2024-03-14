.class public Lcom/google/android/gms/measurement/module/Analytics;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/module/Analytics$Param;,
        Lcom/google/android/gms/measurement/module/Analytics$Event;
    }
.end annotation


# static fields
.field public static final CRASH_ORIGIN:Ljava/lang/String; = "crash"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final FCM_ORIGIN:Ljava/lang/String; = "fcm"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final FIAM_ORIGIN:Ljava/lang/String; = "fiam"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field private static volatile zza:Lcom/google/android/gms/measurement/module/Analytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzfx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfx;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/module/Analytics;->zzb:Lcom/google/android/gms/measurement/internal/zzfx;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/module/Analytics;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v0, :cond_1c

    .line 2
    const-class v0, Lcom/google/android/gms/measurement/module/Analytics;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzaa;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object p0

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/module/Analytics;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/module/Analytics;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;)V

    sput-object v1, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    .line 8
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0

    .line 9
    :cond_1c
    :goto_1c
    sget-object p0, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    return-object p0
.end method