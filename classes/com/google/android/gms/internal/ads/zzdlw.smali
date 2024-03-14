.class public final Lcom/google/android/gms/internal/ads/zzdlw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzhce:Lcom/google/android/gms/internal/ads/zzatc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlu;)V
    .registers 3

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdlw;-><init>(Lcom/google/android/gms/internal/ads/zzdlu;Lcom/google/android/gms/internal/ads/zzatc;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlu;Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 3
    .param p2    # Lcom/google/android/gms/internal/ads/zzatc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzhce:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method
