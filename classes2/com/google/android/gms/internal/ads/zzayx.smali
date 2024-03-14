.class final synthetic Lcom/google/android/gms/internal/ads/zzayx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzebg:Lcom/google/android/gms/internal/ads/zzayu;

.field private final zzebh:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayu;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzebg:Lcom/google/android/gms/internal/ads/zzayu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzebh:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzebh:Landroid/net/Uri;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzj(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
