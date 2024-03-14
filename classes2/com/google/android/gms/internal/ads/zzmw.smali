.class final Lcom/google/android/gms/internal/ads/zzmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznm;


# instance fields
.field private final track:I

.field private final synthetic zzbek:Lcom/google/android/gms/internal/ads/zzmn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmn;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmw;->track:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzmw;)I
    .registers 1

    .line 10
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzmw;->track:I

    return p0
.end method


# virtual methods
.method public final isReady()Z
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmn;->zzbb(I)Z

    move-result v0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzjk;Z)I
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmn;->zza(ILcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzjk;Z)I

    move-result p1

    return p1
.end method

.method public final zzeh(J)V
    .registers 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzmn;->zzd(IJ)V

    return-void
.end method

.method public final zzhs()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmn;->zzhs()V

    return-void
.end method
