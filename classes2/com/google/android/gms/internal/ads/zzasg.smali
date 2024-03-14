.class final Lcom/google/android/gms/internal/ads/zzasg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic zzdqn:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final synthetic zzdqo:Lcom/google/android/gms/internal/ads/zzasf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasf;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasg;->zzdqo:Lcom/google/android/gms/internal/ads/zzasf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasg;->zzdqn:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasg;->zzdqo:Lcom/google/android/gms/internal/ads/zzasf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzasf;->zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_f
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasg;->zzdqn:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_d
    move-exception v0

    goto :goto_1c

    :catch_f
    :try_start_f
    const-string v0, "AdMob exception reporter failed reporting the exception."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_d

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasg;->zzdqn:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    .line 8
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1b
    return-void

    .line 9
    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasg;->zzdqn:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_23

    .line 10
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 11
    :cond_23
    throw v0
.end method
