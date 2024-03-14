.class public Lcom/google/android/gms/internal/ads/zzcof;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgiy:Lcom/google/android/gms/internal/ads/zzdpg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpg;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgiy:Lcom/google/android/gms/internal/ads/zzdpg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgiy:Lcom/google/android/gms/internal/ads/zzdpg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 7
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgiy:Lcom/google/android/gms/internal/ads/zzdpg;

    return-void
.end method


# virtual methods
.method public final zzapr()Lcom/google/android/gms/internal/ads/zzdpg;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgiy:Lcom/google/android/gms/internal/ads/zzdpg;

    return-object v0
.end method
