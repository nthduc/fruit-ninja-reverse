.class public final Lcom/google/android/gms/internal/ads/zzaju;
.super Lcom/google/android/gms/internal/ads/zzakd;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajz;
.implements Lcom/google/android/gms/internal/ads/zzaki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzakd<",
        "Lcom/google/android/gms/internal/ads/zzalp;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzajz;",
        "Lcom/google/android/gms/internal/ads/zzaki;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

.field private zzdgo:Lcom/google/android/gms/internal/ads/zzakh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbgv;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakd;-><init>()V

    .line 2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbim;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaka;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Lcom/google/android/gms/internal/ads/zzaju;Lcom/google/android/gms/internal/ads/zzajy;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbim;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbik;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbim;->setWillNotDraw(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajx;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzajx;-><init>(Lcom/google/android/gms/internal/ads/zzake;Lcom/google/android/gms/internal/ads/zzajy;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbim;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbim;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_35

    .line 10
    invoke-super {p0, p0}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Ljava/lang/Object;)V

    return-void

    :catch_35
    move-exception p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbgv;

    const-string v0, "Init failed."

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbgv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzakh;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgo:Lcom/google/android/gms/internal/ads/zzakh;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzakh;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgo:Lcom/google/android/gms/internal/ads/zzakh;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zzb(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzcz(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzda(Ljava/lang/String;)V

    return-void
.end method

.method public final zzda(Ljava/lang/String;)V
    .registers 4

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajt;-><init>(Lcom/google/android/gms/internal/ads/zzaju;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzdb(Ljava/lang/String;)V
    .registers 4

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Lcom/google/android/gms/internal/ads/zzaju;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzdc(Ljava/lang/String;)V
    .registers 4

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaju;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzdd(Ljava/lang/String;)V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbim;->zzdc(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzde(Ljava/lang/String;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbim;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzdf(Ljava/lang/String;)V
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaju;->zzdgn:Lcom/google/android/gms/internal/ads/zzbim;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbim;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzth()Lcom/google/android/gms/internal/ads/zzals;
    .registers 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalr;-><init>(Lcom/google/android/gms/internal/ads/zzalp;)V

    return-object v0
.end method
