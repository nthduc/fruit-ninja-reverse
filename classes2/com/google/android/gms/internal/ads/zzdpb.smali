.class final synthetic Lcom/google/android/gms/internal/ads/zzdpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhft:Ljava/io/InputStream;

.field private final zzhfu:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhft:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhfu:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhft:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhfu:Landroid/os/ParcelFileDescriptor;

    .line 3
    :try_start_4
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_2b

    .line 4
    :try_start_9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_2b

    .line 5
    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_2b

    if-eqz v0, :cond_14

    .line 7
    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_2b

    :cond_14
    return-void

    :catch_15
    move-exception v1

    .line 6
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2b

    goto :goto_1e

    :catch_1a
    move-exception v2

    :try_start_1b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzehy;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1e
    throw v1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_2b

    :catch_1f
    move-exception v1

    if-eqz v0, :cond_2a

    .line 8
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2b

    goto :goto_2a

    :catch_26
    move-exception v0

    :try_start_27
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzehy;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    throw v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method
