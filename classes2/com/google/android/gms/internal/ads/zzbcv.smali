.class final synthetic Lcom/google/android/gms/internal/ads/zzbcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzebs:I

.field private final zzefz:Lcom/google/android/gms/internal/ads/zzbcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcs;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzefz:Lcom/google/android/gms/internal/ads/zzbcs;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzebs:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzefz:Lcom/google/android/gms/internal/ads/zzbcs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzebs:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdk(I)V

    return-void
.end method
