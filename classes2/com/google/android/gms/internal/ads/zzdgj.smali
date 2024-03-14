.class public final Lcom/google/android/gms/internal/ads/zzdgj;
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
.field private final zzbre:Ljava/lang/String;

.field private final zzdri:I

.field private final zzdsf:Z

.field private final zzeeo:Z

.field private final zzgxs:Z

.field private final zzgxt:I

.field private final zzgxu:I


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZIII)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgxs:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzeeo:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzbre:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzdsf:Z

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzdri:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgxt:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgxu:I

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 6

    .line 10
    check-cast p1, Landroid/os/Bundle;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzbre:Ljava/lang/String;

    const-string v1, "js"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_nonagon"

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcrs:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    const-string v1, "extra_caps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzdri:I

    const-string v1, "target_api"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgxt:I

    const-string v1, "dv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgxu:I

    const-string v1, "lv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "sdk_env"

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacw;->zzdbr:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "mf"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgxs:Z

    const-string v3, "instant_app"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzeeo:Z

    const-string v3, "lite"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzdsf:Z

    const-string v3, "is_privileged_process"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "build_meta"

    .line 25
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "cl"

    const-string v3, "330794610"

    .line 26
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rapid_rc"

    const-string v3, "dev"

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rapid_rollup"

    const-string v3, "HEAD"

    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
