.class final synthetic Lcom/google/android/gms/internal/ads/zzajv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgl:Lcom/google/android/gms/internal/ads/zzaju;

.field private final zzdgm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaju;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdgl:Lcom/google/android/gms/internal/ads/zzaju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdgm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdgl:Lcom/google/android/gms/internal/ads/zzaju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdgm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaju;->zzdd(Ljava/lang/String;)V

    return-void
.end method
