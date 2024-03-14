.class public final Lcom/google/android/gms/internal/ads/zzdcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final zzcja:Ljava/lang/String;

.field private final zzdqu:Ljava/lang/String;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgvu:Lcom/google/android/gms/internal/ads/zzbsa;

.field private final zzgvv:Lcom/google/android/gms/internal/ads/zzdpj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdcv;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsa;Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzdqu:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzcja:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvu:Lcom/google/android/gms/internal/ads/zzbsa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvv:Lcom/google/android/gms/internal/ads/zzdpj;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcve:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvu:Lcom/google/android/gms/internal/ads/zzbsa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbsa;->zzf(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvv:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpj;->zzatu()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Lcom/google/android/gms/internal/ads/zzdcv;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcve:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "quality_signals"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5a

    .line 19
    :cond_18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdcv;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 23
    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvu:Lcom/google/android/gms/internal/ads/zzbsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsa;->zzf(Lcom/google/android/gms/internal/ads/zzvg;)V

    const-string v0, "quality_signals"

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvv:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpj;->zzatu()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    monitor-exit p1

    goto :goto_5a

    :catchall_43
    move-exception p2

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_43

    throw p2

    .line 26
    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvu:Lcom/google/android/gms/internal/ads/zzbsa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbsa;->zzf(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzgvv:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpj;->zzatu()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "quality_signals"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    :goto_5a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzdqu:Ljava/lang/String;

    const-string v0, "seq_num"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->zzcja:Ljava/lang/String;

    const-string v0, "session_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
