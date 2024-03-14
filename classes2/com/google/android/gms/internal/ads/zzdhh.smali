.class public final Lcom/google/android/gms/internal/ads/zzdhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdhe;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzvr:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdhe;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdhg;-><init>(Lcom/google/android/gms/internal/ads/zzdhh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzasc()Lcom/google/android/gms/internal/ads/zzdhe;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzvr:Landroid/content/Context;

    const-string v1, "phone"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v4, 0x0

    goto :goto_2e

    .line 13
    :cond_29
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    move v4, v1

    .line 14
    :goto_2e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v0, -0x2

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzvr:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    .line 19
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzayu;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v6, -0x1

    if-eqz v1, :cond_67

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzvr:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 24
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    goto :goto_5f

    :cond_5e
    const/4 v1, -0x1

    .line 27
    :goto_5f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    move v7, v1

    move v3, v6

    move v6, v0

    goto :goto_6a

    :cond_67
    const/4 v3, -0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 28
    :goto_6a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhe;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>(Ljava/lang/String;IIIZI)V

    return-object v0
.end method
