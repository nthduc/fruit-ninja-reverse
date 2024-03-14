.class final Lcom/google/android/gms/internal/ads/zzcsi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgmw:Z

.field final synthetic zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsf;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 9

    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsf;->zza(Lcom/google/android/gms/internal/ads/zzcsf;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsf;->zzb(Lcom/google/android/gms/internal/ads/zzcsf;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;

    move-result-object v6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsf;->zzc(Lcom/google/android/gms/internal/ads/zzcsf;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzua$zzm;

    move-result-object v5

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcsf;->zza(Lcom/google/android/gms/internal/ads/zzcsf;)Lcom/google/android/gms/internal/ads/zzcrw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsh;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmw:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcsh;-><init>(Lcom/google/android/gms/internal/ads/zzcsi;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzua$zzm;Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcrw;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    const-string p1, "Failed to get signals bundle"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void
.end method
