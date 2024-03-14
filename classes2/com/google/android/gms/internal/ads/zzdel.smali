.class final synthetic Lcom/google/android/gms/internal/ads/zzdel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgwv:Lcom/google/android/gms/internal/ads/zzdei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdei;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdel;->zzgwv:Lcom/google/android/gms/internal/ads/zzdei;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdel;->zzgwv:Lcom/google/android/gms/internal/ads/zzdei;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxd()Lcom/google/android/gms/internal/ads/zzrk;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cf

    if-eqz v0, :cond_cf

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzxe()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzxg()Z

    move-result v2

    if-nez v2, :cond_cf

    .line 9
    :cond_32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrk;->zzmm()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrk;->wakeup()V

    .line 11
    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrk;->zzmk()Lcom/google/android/gms/internal/ads/zzre;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzre;->zzlz()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzre;->zzma()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzre;->zzmb()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_5a

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzej(Ljava/lang/String;)V

    :cond_5a
    if-eqz v0, :cond_81

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v4

    .line 22
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzek(Ljava/lang/String;)V

    goto :goto_81

    .line 23
    :cond_68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxf()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxh()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 25
    :cond_81
    :goto_81
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzayr;->zzxg()Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "v_fp_vertical"

    if-eqz v0, :cond_a3

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a3

    .line 29
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    :cond_a3
    const-string v0, "no_hash"

    .line 30
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    if-eqz v2, :cond_c8

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxe()Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "fingerprint"

    .line 33
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "v_fp"

    .line 35
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_c8
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cf

    move-object v1, v4

    .line 40
    :cond_cf
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdej;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdej;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
