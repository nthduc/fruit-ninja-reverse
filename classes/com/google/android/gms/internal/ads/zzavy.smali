.class public final Lcom/google/android/gms/internal/ads/zzavy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawl;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static zzdwk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdth:Lcom/google/android/gms/internal/ads/zzawg;

.field private final zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzdwm:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzdwn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzdwo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzdwp:Lcom/google/android/gms/internal/ads/zzawn;

.field private zzdwq:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzdwr:Lcom/google/android/gms/internal/ads/zzawm;

.field private zzdws:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzdwt:Z

.field private zzdwu:Z

.field private zzdwv:Z

.field private final zzvr:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwk:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzawg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawn;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwn:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwo:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdws:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwt:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwu:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwv:Z

    const-string v0, "SafeBrowsing config is not present."

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzvr:Landroid/content/Context;

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwp:Lcom/google/android/gms/internal/ads/zzawn;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawg;->zzdxg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 16
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdws:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 18
    :cond_62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdws:Ljava/util/HashSet;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "cookie"

    invoke-virtual {p5, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb;->zzbjm()Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    move-result-object p1

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zzg;->zziss:Lcom/google/android/gms/internal/ads/zzent$zzb$zzg;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzg;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 22
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzhy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 23
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzhz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzb;->zzbjo()Lcom/google/android/gms/internal/ads/zzent$zzb$zzb$zza;

    move-result-object p3

    .line 25
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzawg;->zzdxc:Ljava/lang/String;

    if-eqz p4, :cond_8f

    .line 26
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzawg;->zzdxc:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzb$zza;->zzic(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzb$zza;

    .line 27
    :cond_8f
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zzb;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzb;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzbkc()Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzvr:Landroid/content/Context;

    .line 29
    invoke-static {p4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;->zzbx(Z)Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;

    move-result-object p3

    .line 30
    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    if-eqz p4, :cond_b5

    .line 31
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;->zzij(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;

    .line 32
    :cond_b5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzvr:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_c9

    .line 34
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;->zzfu(J)Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;

    .line 35
    :cond_c9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 38
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzvr:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzawg;->zzdxj:Ljava/util/List;

    invoke-direct {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzawm;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzavy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwr:Lcom/google/android/gms/internal/ads/zzawm;

    return-void
.end method

.method private final zzed(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 98
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method static final synthetic zzee(Ljava/lang/String;)Ljava/lang/Void;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzvu()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwq:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdxi:Z

    if-nez v0, :cond_1f

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwv:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdxh:Z

    if-nez v0, :cond_1f

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwq:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdxf:Z

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 114
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 115
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_2d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    .line 117
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    goto :goto_37

    .line 119
    :cond_51
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwn:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 120
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwo:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawi;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 123
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 124
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzbjj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sending SB report\n  url: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  clickUrl: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  resources: \n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzbji()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    const-string v6, "    ["

    .line 126
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzbjz()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    .line 128
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 131
    :cond_d6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawi;->zzef(Ljava/lang/String;)V

    .line 132
    :cond_dd
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzent$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeif;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzawg;->zzdxd:Ljava/lang/String;

    .line 133
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbag;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzvr:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzbag;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v5, v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbag;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawi;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 137
    sget-object v2, Lcom/google/android/gms/internal/ads/zzawd;->zzdxa:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 138
    :cond_107
    sget-object v2, Lcom/google/android/gms/internal/ads/zzawc;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    .line 139
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 140
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    .line 141
    monitor-exit v0

    return-object v1

    :catchall_111
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_2d .. :try_end_113} :catchall_111

    throw v1

    return-void
.end method

.method static final synthetic zzvv()V
    .registers 1

    const-string v0, "Pinged SB successfully."

    .line 144
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawi;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzvw()Ljava/util/List;
    .registers 1

    .line 185
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwk:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method final synthetic zza(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeip;->zzbei()Lcom/google/android/gms/internal/ads/zzeiy;

    move-result-object v0

    .line 175
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 178
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzf;->zzbjx()Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;

    move-result-object v2

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiy;->zzbdw()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;->zzaq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;

    move-result-object v0

    const-string v2, "image/png"

    .line 180
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;->zzie(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zzb;->zzisi:Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zzb;

    .line 181
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zzb;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzf$zza;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzf;

    .line 183
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzf;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 184
    monitor-exit p1

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_9

    const/4 v2, 0x1

    .line 60
    :try_start_7
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwv:Z

    .line 61
    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    if-ne p3, v1, :cond_22

    .line 63
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzhw(I)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    .line 64
    :cond_22
    monitor-exit v0

    return-void

    .line 65
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzbka()Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    move-result-object v1

    .line 66
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzhw(I)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    move-result-object p3

    if-eqz p3, :cond_31

    .line 68
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    .line 69
    :cond_31
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzhx(I)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    .line 70
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzih(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;->zzbjs()Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zza;

    move-result-object p3

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdws:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_ab

    if-eqz p2, :cond_ab

    .line 73
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_53
    :goto_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_6e

    :cond_6c
    const-string v3, ""

    .line 75
    :goto_6e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_7d

    :cond_7b
    const-string v2, ""

    .line 76
    :goto_7d
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdws:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzc;->zzbjq()Lcom/google/android/gms/internal/ads/zzent$zzb$zzc$zza;

    move-result-object v4

    .line 79
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzeip;->zzhu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzc$zza;->zzan(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzc$zza;

    move-result-object v3

    .line 80
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeip;->zzhu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzc$zza;->zzao(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzc$zza;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzc;

    .line 82
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzc;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zza;

    goto :goto_53

    .line 84
    :cond_ab
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    return-void

    :catchall_bd
    move-exception p1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_7 .. :try_end_bf} :catchall_bd

    throw p1

    return-void
.end method

.method public final zza([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwr:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawm;->zzb([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final zzea(Ljava/lang/String;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_b

    .line 43
    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzbjk()Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    goto :goto_10

    .line 44
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zzia(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 45
    :goto_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1
.end method

.method final zzeb(Ljava/lang/String;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwn:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method final zzec(Ljava/lang/String;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method final synthetic zzi(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_72

    .line 148
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "matches"

    .line 151
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2c} :catch_8a

    .line 154
    :try_start_2c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 155
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzavy;->zzed(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    move-result-object v5

    if-nez v5, :cond_51

    const-string v2, "Cannot find the corresponding resource object for "

    .line 157
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    :cond_47
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4c
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawi;->zzef(Ljava/lang/String;)V

    .line 158
    monitor-exit v3

    goto :goto_a

    :cond_51
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_53
    if-ge v6, v4, :cond_65

    .line 160
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "threat_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzii(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 162
    :cond_65
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwq:Z

    if-lez v4, :cond_6a

    const/4 v1, 0x1

    :cond_6a
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwq:Z

    .line 163
    monitor-exit v3

    goto :goto_a

    :catchall_6f
    move-exception p1

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_2c .. :try_end_71} :catchall_6f

    :try_start_71
    throw p1

    .line 164
    :cond_72
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwq:Z

    if-eqz p1, :cond_85

    .line 165
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_79} :catch_8a

    .line 166
    :try_start_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwl:Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzg;->zzist:Lcom/google/android/gms/internal/ads/zzent$zzb$zzg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzg;)Lcom/google/android/gms/internal/ads/zzent$zzb$zza;

    .line 167
    monitor-exit p1

    goto :goto_85

    :catchall_82
    move-exception v0

    monitor-exit p1
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_82

    :try_start_84
    throw v0

    .line 168
    :cond_85
    :goto_85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavy;->zzvu()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_89} :catch_8a

    return-object p1

    :catch_8a
    move-exception p1

    .line 171
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadc;->zzdcj:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "Failed to get SafeBrowsing metadata"

    .line 172
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :cond_9e
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Landroid/view/View;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdxe:Z

    if-nez v0, :cond_7

    return-void

    .line 49
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwu:Z

    if-eqz v0, :cond_c

    return-void

    .line 51
    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzn(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1b

    const-string p1, "Failed to capture the webview bitmap."

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawi;->zzef(Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwu:Z

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Lcom/google/android/gms/internal/ads/zzavy;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzvq()Lcom/google/android/gms/internal/ads/zzawg;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    return-object v0
.end method

.method public final zzvr()Z
    .registers 2

    .line 46
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdth:Lcom/google/android/gms/internal/ads/zzawg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdxe:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwu:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final zzvs()V
    .registers 2

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwt:Z

    return-void
.end method

.method public final zzvt()V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwp:Lcom/google/android/gms/internal/ads/zzawn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzvr:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdwm:Ljava/util/LinkedHashMap;

    .line 101
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzawn;->zza(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzawa;-><init>(Lcom/google/android/gms/internal/ads/zzavy;)V

    .line 103
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 104
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    const-wide/16 v2, 0xa

    .line 105
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbbz;->zzees:Ljava/util/concurrent/ScheduledExecutorService;

    .line 106
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v2

    .line 107
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawf;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzawf;-><init>(Lcom/google/android/gms/internal/ads/zzavy;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 108
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 109
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/ads/zzavy;->zzdwk:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method
