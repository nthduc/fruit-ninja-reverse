.class final Lcom/google/android/gms/internal/nearby/zzfg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcx:J

.field private final synthetic zzdr:Ljava/io/InputStream;

.field private final synthetic zzds:Ljava/io/OutputStream;

.field private final synthetic zzdt:Ljava/io/OutputStream;

.field private final synthetic zzdu:Lcom/google/android/gms/internal/nearby/zzff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/InputStream;Ljava/io/OutputStream;JLjava/io/OutputStream;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdr:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzds:Ljava/io/OutputStream;

    iput-wide p4, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzcx:J

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdt:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdr:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/InputStream;)Ljava/io/InputStream;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdr:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzds:Ljava/io/OutputStream;

    const/high16 v5, 0x10000

    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_30
    .catchall {:try_start_a .. :try_end_13} :catchall_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdr:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdt:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzcx:J

    invoke-static {v1, v3, v2, v4, v5}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/OutputStream;ZJ)V

    :goto_21
    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzds:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/InputStream;)Ljava/io/InputStream;

    return-void

    :catchall_2c
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_72

    :catch_30
    move-exception v3

    :try_start_31
    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    invoke-static {v4}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;)Z

    move-result v4
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_71

    const-string v5, "NearbyConnections"

    if-nez v4, :cond_4f

    :try_start_3b
    const-string v4, "Exception copying stream for Payload %d"

    new-array v6, v1, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzcx:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    :cond_4f
    const-string v3, "Terminating copying stream for Payload %d due to shutdown of OutgoingPayloadStreamer."

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzcx:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_3b .. :try_end_62} :catchall_71

    :goto_62
    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdr:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdt:Ljava/io/OutputStream;

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzcx:J

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/OutputStream;ZJ)V

    goto :goto_21

    :catchall_71
    move-exception v2

    :goto_72
    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdr:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdt:Ljava/io/OutputStream;

    iget-wide v5, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzcx:J

    invoke-static {v3, v4, v1, v5, v6}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/OutputStream;ZJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzds:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfg;->zzdu:Lcom/google/android/gms/internal/nearby/zzff;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/nearby/zzff;->zza(Lcom/google/android/gms/internal/nearby/zzff;Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v2

    return-void
.end method