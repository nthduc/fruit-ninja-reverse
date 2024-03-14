.class public final Lcom/google/android/gms/internal/ads/zzabf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzbre:Ljava/lang/String;

.field private zzcyu:Ljava/lang/String;

.field private zzcyv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzvr:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbre:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzvr:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbre:Ljava/lang/String;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzacp;->zzdao:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyu:Ljava/lang/String;

    .line 7
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    const-string v0, "s"

    const-string v1, "gmob_sdk"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    const-string v0, "v"

    const-string v1, "3"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "api_v"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 16
    :cond_60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_64
    const-string v1, "app"

    .line 17
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzaz(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_77

    const-string p1, "1"

    goto :goto_79

    :cond_77
    const-string p1, "0"

    :goto_79
    const-string v0, "is_lite_sdk"

    .line 20
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlc()Lcom/google/android/gms/internal/ads/zzatn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzvr:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzatn;->zzy(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 22
    :try_start_88
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    const-string v0, "network_coarse"

    .line 23
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzatl;->zzdus:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    const-string v0, "network_fine"

    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatl;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdut:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ae} :catch_af

    return-void

    :catch_af
    move-exception p1

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p2

    const-string v0, "CsiConfiguration.CsiConfiguration"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzvr:Landroid/content/Context;

    return-object v0
.end method

.method final zzlu()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzbre:Ljava/lang/String;

    return-object v0
.end method

.method final zzrk()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyu:Ljava/lang/String;

    return-object v0
.end method

.method final zzrl()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Ljava/util/Map;

    return-object v0
.end method
