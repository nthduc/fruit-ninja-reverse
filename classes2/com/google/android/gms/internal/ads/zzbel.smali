.class final synthetic Lcom/google/android/gms/internal/ads/zzbel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeha:Z

.field private final zzejq:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzekc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzejq:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeha:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzekc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzejq:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeha:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzekc:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzc(ZJ)V

    return-void
.end method
