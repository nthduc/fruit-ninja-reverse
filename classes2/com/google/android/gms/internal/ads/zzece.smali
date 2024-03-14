.class public final Lcom/google/android/gms/internal/ads/zzece;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzhvl:Lcom/google/android/gms/internal/ads/zzefw;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzhvm:Lcom/google/android/gms/internal/ads/zzefw;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzhvn:Lcom/google/android/gms/internal/ads/zzefw;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzhwc:Ljava/lang/String;

.field private static final zzhwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecc;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzece;->zzhwc:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecb;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzece;->zzhwd:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefw;->zzbdg()Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzece;->zzhvl:Lcom/google/android/gms/internal/ads/zzefw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefw;->zzbdg()Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzece;->zzhvm:Lcom/google/android/gms/internal/ads/zzefw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefw;->zzbdg()Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzece;->zzhvn:Lcom/google/android/gms/internal/ads/zzefw;

    .line 8
    :try_start_28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeax;->zzazb()V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecb;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzecc;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzeag;Z)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecg;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeaq;)V

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzech;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzech;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeaq;)V
    :try_end_49
    .catch Ljava/security/GeneralSecurityException; {:try_start_28 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
