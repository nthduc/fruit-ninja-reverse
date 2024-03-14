.class public final Lcom/google/android/gms/internal/ads/zzckq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzdfz:Ljava/lang/String;

.field public final zzgfv:Lcom/google/android/gms/internal/ads/zzapv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzgfw:Lcom/google/android/gms/internal/ads/zzapv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapv;Lcom/google/android/gms/internal/ads/zzapv;)V
    .registers 4
    .param p2    # Lcom/google/android/gms/internal/ads/zzapv;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzapv;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdfz:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzgfv:Lcom/google/android/gms/internal/ads/zzapv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzgfw:Lcom/google/android/gms/internal/ads/zzapv;

    return-void
.end method
