.class public final Lcom/google/android/gms/internal/ads/zzdci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdcg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdqu:Ljava/lang/String;

.field private final zzgij:Lcom/google/android/gms/internal/ads/zzcku;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzcku;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzdqu:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzguy:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzdpa;)Landroid/os/Bundle;
    .registers 4

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpa;->zzub()Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v1, "sdk_version"

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpa;->zzub()Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapv;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_5 .. :try_end_18} :catch_18

    .line 19
    :catch_18
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpa;->zzua()Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v1, "adapter_version"

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpa;->zzua()Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapv;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_18 .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    return-object v0
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdcg;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzdqu:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzas(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_2e

    .line 13
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzguy:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdcl;-><init>(Lcom/google/android/gms/internal/ads/zzdci;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 12
    :cond_2e
    :goto_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcg;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcg;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdcj;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarl()Lcom/google/android/gms/internal/ads/zzdcg;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    :try_start_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzcku;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdpa;

    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdci;->zzb(Lcom/google/android/gms/internal/ads/zzdpa;)Landroid/os/Bundle;

    move-result-object v3

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3d
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_2b .. :try_end_3d} :catch_3e

    goto :goto_1f

    :catch_3e
    nop

    goto :goto_1f

    .line 38
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcg;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdcj;)V

    return-object v0
.end method
