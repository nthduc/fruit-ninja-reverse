.class public final Lcom/google/android/gms/internal/ads/zzcql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgjf:Lcom/google/android/gms/internal/ads/zzeos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcqv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgkw:Lcom/google/android/gms/internal/ads/zzcqc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzcqc;Lcom/google/android/gms/internal/ads/zzeos;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Lcom/google/android/gms/internal/ads/zzcqc;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcqv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgkw:Lcom/google/android/gms/internal/ads/zzcqc;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            "Lcom/google/android/gms/internal/ads/zzcqw<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcqw<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TRetT;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->packageName:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    goto :goto_25

    .line 13
    :cond_17
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzcqw;->zzq(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcqo;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 14
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    .line 15
    :goto_25
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 16
    invoke-virtual {p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zzb(Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p2

    const-class v0, Lcom/google/android/gms/internal/ads/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqn;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzcqn;-><init>(Lcom/google/android/gms/internal/ads/zzcql;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdya;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 17
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdya;Lcom/google/android/gms/internal/ads/zzcqm;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcqw;->zzq(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqq;-><init>(Lcom/google/android/gms/internal/ads/zzatc;)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgkw:Lcom/google/android/gms/internal/ads/zzcqc;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcqp;->zza(Lcom/google/android/gms/internal/ads/zzcqc;)Lcom/google/android/gms/internal/ads/zzcqw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcqs;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcqs;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    .line 22
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcql;->zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfg;->zzas(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfx:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v1, "Pool key missing from removeUrl call."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    .line 25
    :cond_16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcqr;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqu;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcqt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcqt;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcql;->zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdya;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzn(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqv;->zzgn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzo(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgkw:Lcom/google/android/gms/internal/ads/zzcqc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqc;->zzgm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzp(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcqv;->zzc(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
