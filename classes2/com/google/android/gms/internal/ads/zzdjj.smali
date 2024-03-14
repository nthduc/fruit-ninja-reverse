.class public final Lcom/google/android/gms/internal/ads/zzdjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdgw<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzaxt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdhr;Lcom/google/android/gms/internal/ads/zzdio;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Lcom/google/android/gms/internal/ads/zzeos;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdgw;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaxt;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzdhr;",
            "Lcom/google/android/gms/internal/ads/zzdio;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdhl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdhv;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdhz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdif;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdik;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdit;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdix;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzdjl;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdgw<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdig;

    .line 2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 9
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 13
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_46
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 17
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_61
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 21
    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_7c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfi;

    .line 26
    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdgx;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzabb;->zzcsm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p3

    .line 28
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-direct {p1, p2, p3, p4, p13}, Lcom/google/android/gms/internal/ads/zzdfi;-><init>(Lcom/google/android/gms/internal/ads/zzdgx;JLjava/util/concurrent/ScheduledExecutorService;)V

    .line 29
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_ac
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 33
    invoke-interface {p10}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_c7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvu:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 37
    invoke-interface {p11}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_e2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgw;

    invoke-direct {p1, p12, p0}, Lcom/google/android/gms/internal/ads/zzdgw;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdgw;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
