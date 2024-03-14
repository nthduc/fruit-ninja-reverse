.class public final Lcom/google/android/gms/internal/ads/zzaab;
.super Lcom/google/android/gms/internal/ads/zzyl;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzclc:Lcom/google/android/gms/ads/OnPaidEventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzclc:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvp;)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzclc:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_13

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvp;->zzadc:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvp;->zzadd:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzvp;->zzade:J

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzclc:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_13
    return-void
.end method
