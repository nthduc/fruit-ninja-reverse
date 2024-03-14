.class public final Lcom/google/android/gms/internal/ads/zzddc;
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
.field private final zzdrh:F

.field private final zzdul:I

.field private final zzdum:Z

.field private final zzdun:Z

.field private final zzduo:I

.field private final zzdup:I

.field private final zzduq:I

.field private final zzgwb:Z


# direct methods
.method public constructor <init>(IZZIIIFZ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdul:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdum:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdun:Z

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzduo:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdup:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzduq:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdrh:F

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzgwb:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 4

    .line 11
    check-cast p1, Landroid/os/Bundle;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdul:I

    const-string v1, "am"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdum:Z

    const-string v1, "ma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdun:Z

    const-string v1, "sp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzduo:I

    const-string v1, "muv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdup:I

    const-string v1, "rm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzduq:I

    const-string v1, "riv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzdrh:F

    const-string v1, "android_app_volume"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zzgwb:Z

    const-string v1, "android_app_muted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
