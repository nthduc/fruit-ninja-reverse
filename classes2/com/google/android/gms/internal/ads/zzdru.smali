.class public abstract Lcom/google/android/gms/internal/ads/zzdru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzhka:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzhkb:Lcom/google/android/gms/internal/ads/zzdsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdsg<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdru;->zzhka:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdsg<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdru;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdru;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdru;->zzhkb:Lcom/google/android/gms/internal/ads/zzdsg;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdru;)Lcom/google/android/gms/internal/ads/zzdzb;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdru;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    return-object p0
.end method

.method static synthetic zzavr()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdru;->zzhka:Lcom/google/android/gms/internal/ads/zzdzc;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdru;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdru;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdru;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdru;->zzhkb:Lcom/google/android/gms/internal/ads/zzdsg;

    return-object p0
.end method


# virtual methods
.method public final varargs zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdrw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzdrw;"
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdrw;-><init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdsa;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TI;>;)",
            "Lcom/google/android/gms/internal/ads/zzdsa<",
            "TI;>;"
        }
    .end annotation

    .line 7
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdsa;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsa;-><init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-object v8
.end method

.method public final zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdry;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdry;-><init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-object v0
.end method

.method protected abstract zzv(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
