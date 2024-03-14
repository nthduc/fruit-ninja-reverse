.class public final Lcom/google/android/gms/internal/ads/zzdpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static zzf(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aget-object v0, v0, v2

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdpb;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzdpb;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method
