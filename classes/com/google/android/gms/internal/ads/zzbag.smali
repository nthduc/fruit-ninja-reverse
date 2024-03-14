.class public final Lcom/google/android/gms/internal/ads/zzbag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static zzecm:Lcom/google/android/gms/internal/ads/zzae;

.field private static final zzecn:Ljava/lang/Object;

.field private static final zzeco:Lcom/google/android/gms/internal/ads/zzbak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbak<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbag;->zzecn:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbag;->zzeco:Lcom/google/android/gms/internal/ads/zzbak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    :goto_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbag;->zzbl(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzae;

    return-void
.end method

.method private static zzbl(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzae;
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbag;->zzecn:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzae;

    if-nez v1, :cond_32

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzctg:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_2c

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazz;->zzbk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzae;

    move-result-object p0

    goto :goto_30

    .line 28
    :cond_2c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbk;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzae;

    move-result-object p0

    :goto_30
    sput-object p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzae;

    .line 29
    :cond_32
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzae;

    monitor-exit v0

    return-object p0

    :catchall_36
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public static zzev(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzae;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbam;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzae;->zze(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzaa;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 19
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 9
    new-instance v10, Lcom/google/android/gms/internal/ads/zzban;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Lcom/google/android/gms/internal/ads/zzbaj;)V

    .line 10
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbai;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/internal/ads/zzbai;-><init>(Lcom/google/android/gms/internal/ads/zzbag;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzban;)V

    .line 11
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v13, Lcom/google/android/gms/internal/ads/zzbal;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzbal;-><init>(Lcom/google/android/gms/internal/ads/zzbag;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzal;Lcom/google/android/gms/internal/ads/zzai;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzbbk;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbk;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    :try_start_29
    const-string v1, "GET"

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaa;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaa;->zzg()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_36
    .catch Lcom/google/android/gms/internal/ads/zzl; {:try_start_29 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 17
    :cond_3f
    :goto_3f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbag;->zzecm:Lcom/google/android/gms/internal/ads/zzae;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzae;->zze(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzaa;

    return-object v10
.end method

.method public final zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
