.class public final Lcom/google/android/gms/internal/ads/zzdus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# instance fields
.field private final zzhny:Lcom/google/android/gms/internal/ads/zzgr;

.field private final zzhnz:Ljava/io/File;

.field private final zzhoa:Ljava/io/File;

.field private final zzhob:Ljava/io/File;

.field private zzhoc:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgr;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzgr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhny:Lcom/google/android/gms/internal/ads/zzgr;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhnz:Ljava/io/File;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhoa:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhob:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 6

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhny:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdi()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final zzawv()Lcom/google/android/gms/internal/ads/zzgr;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhny:Lcom/google/android/gms/internal/ads/zzgr;

    return-object v0
.end method

.method public final zzaww()Ljava/io/File;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhnz:Ljava/io/File;

    return-object v0
.end method

.method public final zzawx()Ljava/io/File;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhoa:Ljava/io/File;

    return-object v0
.end method

.method public final zzawy()[B
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhoc:[B

    if-nez v0, :cond_c

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhob:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzduu;->zzf(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhoc:[B

    .line 12
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhoc:[B

    if-nez v0, :cond_12

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_12
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzfg(J)Z
    .registers 7

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhny:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdi()J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
