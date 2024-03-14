.class final synthetic Lcom/google/android/gms/internal/ads/zzcoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzgix:Lcom/google/android/gms/internal/ads/zzcob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcob;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgix:Lcom/google/android/gms/internal/ads/zzcob;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzdgm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgix:Lcom/google/android/gms/internal/ads/zzcob;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzdgm:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcob;->zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/String;)V

    return-void
.end method
