.class public final Lcom/google/android/gms/internal/ads/zzdhe;
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
.field private final zzdur:Ljava/lang/String;

.field private final zzdus:I

.field private final zzdut:I

.field private final zzduu:I

.field private final zzduv:Z

.field private final zzduw:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZI)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdur:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdus:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdut:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzduu:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzduv:Z

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzduw:I

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 6

    .line 9
    check-cast p1, Landroid/os/Bundle;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdur:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "carrier"

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdus:I

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdus:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    const-string v1, "cnt"

    .line 13
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzdut:I

    const-string v1, "gnt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzduu:I

    const-string v1, "pt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "device"

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "network"

    .line 18
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 19
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzduw:I

    const-string v1, "active_network_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdhe;->zzduv:Z

    const-string v1, "active_network_metered"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
