.class public final Lcom/google/android/gms/internal/ads/zzgc;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzabg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V
    .registers 14

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabg:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final zzcw()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzq(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzr(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabg:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabm:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzex;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabg:Ljava/util/List;

    .line 8
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabg:Ljava/util/List;

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5c

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v0

    .line 10
    :try_start_35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabg:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzq(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgc;->zzabg:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzr(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 12
    monitor-exit v0

    return-void

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_59

    throw v1

    :cond_5c
    return-void
.end method
