.class public final Lcom/google/android/gms/internal/ads/zzcoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgjd:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgje:Lcom/google/android/gms/internal/ads/zzcpt;

.field private final zzgjf:Lcom/google/android/gms/internal/ads/zzeos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcqv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzeos;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Lcom/google/android/gms/internal/ads/zzcpt;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcqv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgjd:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgje:Lcom/google/android/gms/internal/ads/zzcpt;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzatc;ILcom/google/android/gms/internal/ads/zzcqm;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zzb(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    goto :goto_2c

    .line 12
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgjd:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzcoi;Lcom/google/android/gms/internal/ads/zzatc;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 14
    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcok;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 16
    :goto_2c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 17
    const-class v2, Lcom/google/android/gms/internal/ads/zzcqm;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcoj;-><init>(Lcom/google/android/gms/internal/ads/zzcoi;Lcom/google/android/gms/internal/ads/zzatc;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 18
    invoke-static {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzatc;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->zzgje:Lcom/google/android/gms/internal/ads/zzcpt;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcpt;->zzi(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcvb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzc;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method
