.class public final Lcom/google/android/gms/internal/ads/zzchj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdok;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcjt;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfoc:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 5

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdfd:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdfe:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/videoMeta"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdfh:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/delayPageLoaded"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdff:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/instrument"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdey:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdez:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/videoClicked"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhv;->zzay(Z)V

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdeu:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/click"

    invoke-interface {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcrx:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagx;->zzdfk:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/getNativeAdViewSignals"

    invoke-interface {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 29
    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

    if-eqz v0, :cond_75

    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhv;->zzaz(Z)V

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahu;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    goto :goto_7d

    .line 32
    :cond_75
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhv;->zzaz(Z)V

    .line 33
    :goto_7d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahs;

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Landroid/content/Context;)V

    const-string v1, "/logScionEvent"

    .line 36
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    :cond_99
    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpk()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzcjt;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object p3

    .line 49
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbch;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v0

    .line 50
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzchj;->zzk(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

    if-eqz v1, :cond_1f

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzada()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzbhy;)V

    goto :goto_26

    .line 53
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzacz()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzbhy;)V

    .line 55
    :goto_26
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzchq;

    invoke-direct {v2, p0, p3, v0}, Lcom/google/android/gms/internal/ads/zzchq;-><init>(Lcom/google/android/gms/internal/ads/zzchj;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbch;)V

    .line 56
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)V

    const/4 v1, 0x0

    .line 57
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final synthetic zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbgj;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbch;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

    if-eqz v1, :cond_12

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzada()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzbhy;)V

    goto :goto_19

    .line 68
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzacz()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzbhy;)V

    .line 70
    :goto_19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzchp;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzchp;-><init>(Lcom/google/android/gms/internal/ads/zzchj;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbch;)V

    .line 71
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)V

    const-string v1, "google.afma.nativeAds.renderVideo"

    .line 72
    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbch;Z)V
    .registers 5

    if-eqz p3, :cond_1d

    .line 60
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdok;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    if-eqz p3, :cond_19

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzs()Lcom/google/android/gms/internal/ads/zzbhd;

    move-result-object p3

    if-eqz p3, :cond_19

    .line 61
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzs()Lcom/google/android/gms/internal/ads/zzbhd;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdok;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbhd;->zzb(Lcom/google/android/gms/internal/ads/zzaak;)V

    .line 62
    :cond_19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbch;->zzyw()V

    return-void

    .line 63
    :cond_1d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwn;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v0, "Instream video Web View failed to load."

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbch;Z)V
    .registers 4

    .line 74
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdok;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    if-eqz p3, :cond_17

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzs()Lcom/google/android/gms/internal/ads/zzbhd;

    move-result-object p3

    if-eqz p3, :cond_17

    .line 75
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzs()Lcom/google/android/gms/internal/ads/zzbhd;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdok;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbhd;->zzb(Lcom/google/android/gms/internal/ads/zzaak;)V

    .line 76
    :cond_17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbch;->zzyw()V

    return-void
.end method

.method public final zzn(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcho;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcho;-><init>(Lcom/google/android/gms/internal/ads/zzchj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfoc:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzchm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzchm;-><init>(Lcom/google/android/gms/internal/ads/zzchj;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfoc:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchl;-><init>(Lcom/google/android/gms/internal/ads/zzchj;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfoc:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpk()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjt;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbch;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchj;->zzk(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 42
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzchn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzchn;-><init>(Lcom/google/android/gms/internal/ads/zzbch;)V

    .line 43
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhx;)V

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcrw:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method
