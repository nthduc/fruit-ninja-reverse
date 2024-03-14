.class final Lcom/google/android/gms/internal/ads/zzkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public zzahx:Lcom/google/android/gms/internal/ads/zzho;

.field public zzasr:I

.field public final zzaxa:[Lcom/google/android/gms/internal/ads/zzlq;

.field public zzaxb:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzlq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzaxa:[Lcom/google/android/gms/internal/ads/zzlq;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzaxb:I

    return-void
.end method
