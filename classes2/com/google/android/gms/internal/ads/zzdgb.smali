.class final synthetic Lcom/google/android/gms/internal/ads/zzdgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzgxi:Lcom/google/android/gms/internal/ads/zzdfz;

.field private final zzgxk:Ljava/util/List;

.field private final zzgxl:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdfz;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzgxi:Lcom/google/android/gms/internal/ads/zzdfz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzgxk:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzgxl:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzarv()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzgxi:Lcom/google/android/gms/internal/ads/zzdfz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzgxk:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgb;->zzgxl:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdfz;->zza(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
