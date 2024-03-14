.class public final Lcom/google/android/gms/internal/ads/zzcwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzfst:Lcom/google/android/gms/internal/ads/zzctd;

.field private final zzgpx:Lcom/google/android/gms/internal/ads/zzcwl;

.field private final zzgpy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgpz:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcwl;Lcom/google/android/gms/internal/ads/zzctd;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpy:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpx:Lcom/google/android/gms/internal/ads/zzcwl;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpz:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzfst:Lcom/google/android/gms/internal/ads/zzctd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcwj;)Lcom/google/android/gms/common/util/Clock;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcwj;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 6

    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzcwj;->zza(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;IJLjava/lang/String;)V
    .registers 8

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4f

    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpy:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcwj;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpz:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcwj;)Lcom/google/android/gms/internal/ads/zzcwl;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpx:Lcom/google/android/gms/internal/ads/zzcwl;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcwj;)Lcom/google/android/gms/internal/ads/zzctd;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzfst:Lcom/google/android/gms/internal/ads/zzctd;

    return-object p0
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdnw;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdnw;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 11
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzdjo:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwm;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcwm;-><init>(Lcom/google/android/gms/internal/ads/zzcwj;JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    :cond_18
    return-object p3
.end method

.method public final zzaqm()Ljava/lang/String;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgpy:Ljava/util/List;

    const-string v1, "_"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
