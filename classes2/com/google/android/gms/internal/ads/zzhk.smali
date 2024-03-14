.class final Lcom/google/android/gms/internal/ads/zzhk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final index:I

.field private final zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzaeq:Lcom/google/android/gms/internal/ads/zzog;

.field public final zzafm:Lcom/google/android/gms/internal/ads/zzmx;

.field public final zzafn:Ljava/lang/Object;

.field public final zzafo:[Lcom/google/android/gms/internal/ads/zznm;

.field private final zzafp:[Z

.field public final zzafq:J

.field public zzafr:I

.field public zzafs:J

.field public zzaft:Z

.field public zzafu:Z

.field public zzafv:Z

.field public zzafw:Lcom/google/android/gms/internal/ads/zzhk;

.field public zzafx:Lcom/google/android/gms/internal/ads/zzoi;

.field private final zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

.field private final zzafz:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzaga:Lcom/google/android/gms/internal/ads/zzmz;

.field private zzagb:Lcom/google/android/gms/internal/ads/zzoi;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhx;[Lcom/google/android/gms/internal/ads/zzhw;JLcom/google/android/gms/internal/ads/zzog;Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzmz;Ljava/lang/Object;IIZJ)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafq:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    .line 8
    invoke-static {p8}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafn:Ljava/lang/Object;

    .line 9
    iput p9, p0, Lcom/google/android/gms/internal/ads/zzhk;->index:I

    .line 10
    iput p10, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    .line 12
    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    .line 13
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    .line 14
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafp:[Z

    .line 15
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzhs;->zzfd()Lcom/google/android/gms/internal/ads/zzok;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/zzmz;->zza(ILcom/google/android/gms/internal/ads/zzok;)Lcom/google/android/gms/internal/ads/zzmx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 4

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(Lcom/google/android/gms/internal/ads/zzmx;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zza(JZ[Z)J
    .registers 18

    move-object v0, p0

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_7
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzod;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_21

    .line 42
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafp:[Z

    if-nez p3, :cond_1b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzagb:Lcom/google/android/gms/internal/ads/zzoi;

    .line 43
    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzoi;->zza(Lcom/google/android/gms/internal/ads/zzoi;I)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    :goto_1c
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 45
    :cond_21
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzod;->zzim()[Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafp:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzmx;->zza([Lcom/google/android/gms/internal/ads/zzob;[Z[Lcom/google/android/gms/internal/ads/zznm;[ZJ)J

    move-result-wide v3

    .line 46
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzagb:Lcom/google/android/gms/internal/ads/zzoi;

    .line 47
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafv:Z

    const/4 v6, 0x0

    .line 48
    :goto_39
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    array-length v8, v7

    if-ge v6, v8, :cond_60

    .line 49
    aget-object v7, v7, v6

    if-eqz v7, :cond_51

    .line 50
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v7

    if-eqz v7, :cond_4a

    const/4 v7, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v7, 0x0

    :goto_4b
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 51
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafv:Z

    goto :goto_5d

    .line 52
    :cond_51
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v7

    if-nez v7, :cond_59

    const/4 v7, 0x1

    goto :goto_5a

    :cond_59
    const/4 v7, 0x0

    :goto_5a
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 54
    :cond_60
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoi;->zzbhw:Lcom/google/android/gms/internal/ads/zznp;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzhs;->zza([Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zznp;Lcom/google/android/gms/internal/ads/zzod;)V

    return-wide v3
.end method

.method public final zzb(JZ)J
    .registers 5

    .line 39
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length p3, p3

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhk;->zza(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzc(IZ)V
    .registers 3

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    .line 19
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    return-void
.end method

.method public final zzep()J
    .registers 5

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzeq()Z
    .registers 6

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafv:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmx;->zzhr()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzer()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzmx;->zzho()Lcom/google/android/gms/internal/ads/zznp;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzog;->zza([Lcom/google/android/gms/internal/ads/zzhw;Lcom/google/android/gms/internal/ads/zznp;)Lcom/google/android/gms/internal/ads/zzoi;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzagb:Lcom/google/android/gms/internal/ads/zzoi;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    :goto_14
    const/4 v1, 0x0

    goto :goto_28

    :cond_16
    const/4 v4, 0x0

    .line 30
    :goto_17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzod;->length:I

    if-ge v4, v5, :cond_27

    .line 31
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzoi;->zza(Lcom/google/android/gms/internal/ads/zzoi;I)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_14

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_27
    const/4 v1, 0x1

    :goto_28
    if-eqz v1, :cond_2b

    return v3

    .line 37
    :cond_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    return v2
.end method
