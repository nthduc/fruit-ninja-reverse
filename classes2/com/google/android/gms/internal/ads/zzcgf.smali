.class public final Lcom/google/android/gms/internal/ads/zzcgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgcm:Lcom/google/android/gms/internal/ads/zzano;

.field private final zzgcn:Lcom/google/android/gms/internal/ads/zzanp;

.field private final zzgco:Lcom/google/android/gms/internal/ads/zzanu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanp;Lcom/google/android/gms/internal/ads/zzano;Lcom/google/android/gms/internal/ads/zzanu;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzgcn:Lcom/google/android/gms/internal/ads/zzanp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzgcm:Lcom/google/android/gms/internal/ads/zzano;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzgco:Lcom/google/android/gms/internal/ads/zzanu;

    return-void
.end method


# virtual methods
.method public final zzanm()Lcom/google/android/gms/internal/ads/zzanp;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzgcn:Lcom/google/android/gms/internal/ads/zzanp;

    return-object v0
.end method

.method public final zzann()Lcom/google/android/gms/internal/ads/zzano;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzgcm:Lcom/google/android/gms/internal/ads/zzano;

    return-object v0
.end method

.method public final zzano()Lcom/google/android/gms/internal/ads/zzanu;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzgco:Lcom/google/android/gms/internal/ads/zzanu;

    return-object v0
.end method
