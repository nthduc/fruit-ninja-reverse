.class final synthetic Lcom/google/android/gms/internal/ads/zzbeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzebs:I

.field private final zzebt:I

.field private final zzejq:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeg;->zzejq:Lcom/google/android/gms/internal/ads/zzbeb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbeg;->zzebs:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbeg;->zzebt:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeg;->zzejq:Lcom/google/android/gms/internal/ads/zzbeb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbeg;->zzebs:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbeg;->zzebt:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzp(II)V

    return-void
.end method
