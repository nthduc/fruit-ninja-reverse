.class public final Lcom/google/android/gms/internal/ads/zzfx;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzaba:Ljava/lang/Object;

.field private static volatile zzabd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfx;->zzaba:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V
    .registers 14

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V

    return-void
.end method


# virtual methods
.method protected final zzcw()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfx;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfx;->zzabd:Ljava/lang/String;

    if-nez v0, :cond_25

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfx;->zzaba:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfx;->zzabd:Ljava/lang/String;

    if-nez v1, :cond_20

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfx;->zzabm:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfx;->zzabd:Ljava/lang/String;

    .line 8
    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v1

    .line 9
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfx;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v0

    .line 10
    :try_start_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfx;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfx;->zzabd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 11
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1
.end method
