.class final synthetic Lcom/google/android/gms/internal/ads/zzbfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeha:Z

.field private final zzekc:J

.field private final zzeml:Lcom/google/android/gms/internal/ads/zzbdu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdu;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzeml:Lcom/google/android/gms/internal/ads/zzbdu;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzeha:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzekc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzeml:Lcom/google/android/gms/internal/ads/zzbdu;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzeha:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zzekc:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(ZJ)V

    return-void
.end method
