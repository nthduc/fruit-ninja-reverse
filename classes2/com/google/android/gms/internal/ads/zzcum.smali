.class final synthetic Lcom/google/android/gms/internal/ads/zzcum;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzebh:Landroid/net/Uri;

.field private final zzgoa:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgot:Lcom/google/android/gms/internal/ads/zzcuj;

.field private final zzgou:Lcom/google/android/gms/internal/ads/zzdnv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuj;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzgot:Lcom/google/android/gms/internal/ads/zzcuj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzebh:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzgoa:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzgou:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzgot:Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzebh:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzgoa:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcum;->zzgou:Lcom/google/android/gms/internal/ads/zzdnv;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method