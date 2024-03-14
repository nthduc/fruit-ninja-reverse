.class public final Lcom/google/android/gms/internal/ads/zzcsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbui;
.implements Lcom/google/android/gms/internal/ads/zzbvs;


# static fields
.field private static final zzgmb:Ljava/lang/Object;

.field private static zzgmc:I


# instance fields
.field private final zzgmd:Lcom/google/android/gms/internal/ads/zzcsf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmb:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmc:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcsf;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmd:Lcom/google/android/gms/internal/ads/zzcsf;

    return-void
.end method

.method private static zzaqb()Z
    .registers 4

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmb:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_3
    sget v1, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmc:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcwl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private final zzbk(Z)V
    .registers 4

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 17
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcsa;->zzaqb()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 19
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmd:Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsf;->zzbk(Z)V

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmb:Ljava/lang/Object;

    monitor-enter p1

    .line 21
    :try_start_22
    sget v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmc:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzcsa;->zzgmc:I

    .line 22
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v0
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 2

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcsa;->zzbk(Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 2

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcsa;->zzbk(Z)V

    return-void
.end method
