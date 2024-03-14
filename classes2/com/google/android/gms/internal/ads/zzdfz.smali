.class public final Lcom/google/android/gms/internal/ads/zzdfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdfw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;

.field private zzgup:Ljava/lang/String;

.field private final zzgxj:Lcom/google/android/gms/internal/ads/zzcza;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcza;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzcyy;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgup:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgxj:Lcom/google/android/gms/internal/ads/zzcza;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzvr:Landroid/content/Context;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcyy;->zzgo(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcyy;->zzgp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaph;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 22
    new-instance v8, Lcom/google/android/gms/internal/ads/zzczg;

    invoke-direct {v8, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzczg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaph;Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzvr:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgup:Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    move-object v5, p3

    .line 26
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaph;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzapm;)V

    return-object v0

    .line 21
    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdfw;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdfy;-><init>(Lcom/google/android/gms/internal/ads/zzdfz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarw()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 9

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgxj:Lcom/google/android/gms/internal/ads/zzcza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgup:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcza;->zzt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 36
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v4, :cond_44

    .line 37
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    .line 39
    :goto_45
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdgb;

    invoke-direct {v5, p0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdgb;-><init>(Lcom/google/android/gms/internal/ads/zzdfz;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 40
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabb;->zzcqb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v2

    const-class v4, Ljava/lang/Throwable;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdga;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzdga;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 46
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v2

    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 49
    :cond_7d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdyv;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgd;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdgd;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdyv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
