.class public final Lcom/google/android/gms/internal/ads/zzdcn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzgvr:Lcom/google/android/gms/internal/ads/zzvs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcn;->zzgvr:Lcom/google/android/gms/internal/ads/zzvs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcn;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 5

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcul:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcn;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    if-eqz v1, :cond_21

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    if-lt v1, v0, :cond_21

    const-string v0, "app_open_version"

    const-string v1, "2"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcn;->zzgvr:Lcom/google/android/gms/internal/ads/zzvs;

    if-eqz v0, :cond_3e

    .line 12
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvs;->orientation:I

    const/4 v1, 0x1

    const-string v2, "avo"

    if-ne v0, v1, :cond_32

    const-string v0, "p"

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcn;->zzgvr:Lcom/google/android/gms/internal/ads/zzvs;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvs;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    const-string v0, "l"

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    return-void
.end method
