.class public final Lcom/google/android/gms/internal/ads/zzcsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private zzgmo:Lcom/google/android/gms/internal/ads/zzcrw;

.field private zzgna:Lcom/google/android/gms/internal/ads/zzts;

.field private zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzcrw;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zzgna:Lcom/google/android/gms/internal/ads/zzts;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zzgmo:Lcom/google/android/gms/internal/ads/zzcrw;

    return-void
.end method


# virtual methods
.method public final zzaqh()V
    .registers 4

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsm;->zzgmo:Lcom/google/android/gms/internal/ads/zzcrw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcsl;-><init>(Lcom/google/android/gms/internal/ads/zzcsm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcrw;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Error in offline signals database startup: "

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcsj;->zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzo;->zzom()Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzvr:Landroid/content/Context;

    .line 15
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzce(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    const/4 v4, 0x0

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzcsj;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 18
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzco(I)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    const/4 v6, 0x1

    .line 20
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcsj;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 21
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzcp(I)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzev(J)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    const/4 v6, 0x2

    .line 23
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcsj;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    .line 24
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;->zzew(J)Lcom/google/android/gms/internal/ads/zzua$zzo$zzc;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzua$zzo;

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v8, 0x0

    move-wide v11, v8

    const/4 v10, 0x0

    :cond_5d
    :goto_5d
    if-ge v10, v7, :cond_7c

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Lcom/google/android/gms/internal/ads/zzua$zzo$zza;

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzua$zzo$zza;->zzoj()Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/internal/ads/zzuk;->zzcbq:Lcom/google/android/gms/internal/ads/zzuk;

    if-ne v14, v15, :cond_5d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzua$zzo$zza;->getTimestamp()J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-lez v16, :cond_5d

    .line 30
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzua$zzo$zza;->getTimestamp()J

    move-result-wide v11

    goto :goto_5d

    :cond_7c
    const-string v2, "offline_signal_statistics"

    const-string v7, "value"

    const/4 v10, 0x0

    cmp-long v13, v11, v8

    if-eqz v13, :cond_96

    .line 34
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 35
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "statistic_name = \'last_successful_request_time\'"

    .line 36
    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    :cond_96
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzgna:Lcom/google/android/gms/internal/ads/zzts;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcso;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzcso;-><init>(Lcom/google/android/gms/internal/ads/zzua$zzo;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztr;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzu;->zzot()Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbbx;->zzeel:I

    .line 39
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzua$zzu$zza;->zzcq(I)Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    .line 40
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzua$zzu$zza;->zzcr(I)Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v3

    .line 41
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzbbx;->zzeen:Z

    if-eqz v8, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v4, 0x2

    :goto_bc
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzua$zzu$zza;->zzcs(I)Lcom/google/android/gms/internal/ads/zzua$zzu$zza;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzua$zzu;

    .line 43
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzgna:Lcom/google/android/gms/internal/ads/zzts;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcsn;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzcsn;-><init>(Lcom/google/android/gms/internal/ads/zzua$zzu;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztr;)V

    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zzgna:Lcom/google/android/gms/internal/ads/zzts;

    sget-object v4, Lcom/google/android/gms/internal/ads/zztu$zza$zzb;->zzbxu:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    const-string v3, "offline_signal_contents"

    .line 46
    invoke-virtual {v1, v3, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 48
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "failed_requests"

    .line 49
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "statistic_name = ?"

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 51
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "total_requests"

    .line 52
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v10
.end method
