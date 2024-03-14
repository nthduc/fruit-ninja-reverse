.class final synthetic Lcom/google/android/gms/internal/ads/zztl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbvn:Lcom/google/android/gms/internal/ads/zztm;

.field private final zzbvo:Lcom/google/android/gms/internal/ads/zztb;

.field private final zzbvp:Lcom/google/android/gms/internal/ads/zzte;

.field private final zzbvq:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zztb;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvn:Lcom/google/android/gms/internal/ads/zztm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvo:Lcom/google/android/gms/internal/ads/zztb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvp:Lcom/google/android/gms/internal/ads/zzte;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvq:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvn:Lcom/google/android/gms/internal/ads/zztm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvo:Lcom/google/android/gms/internal/ads/zztb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvp:Lcom/google/android/gms/internal/ads/zzte;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztl;->zzbvq:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 2
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztb;->zzmz()Lcom/google/android/gms/internal/ads/zztf;

    move-result-object v1

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zztf;->zza(Lcom/google/android/gms/internal/ads/zzte;)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzmw()Z

    move-result v2

    if-nez v2, :cond_26

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zztk;->zza(Lcom/google/android/gms/internal/ads/zztk;)V

    return-void

    .line 8
    :cond_26
    new-instance v2, Lcom/google/android/gms/internal/ads/zztn;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzmx()Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zztn;-><init>(Lcom/google/android/gms/internal/ads/zztm;Ljava/io/InputStream;I)V

    .line 10
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3e

    .line 13
    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 14
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_3e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_46} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_46} :catch_46

    :catch_46
    move-exception v1

    goto :goto_49

    :catch_48
    move-exception v1

    :goto_49
    const-string v2, "Unable to obtain a cache service instance."

    .line 17
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztk;->zza(Lcom/google/android/gms/internal/ads/zztk;)V

    return-void
.end method
