.class final Lcom/google/android/gms/measurement/internal/zzab;
.super Lcom/google/android/gms/measurement/internal/zzkd;
.source "com.google.android.gms:play-services-measurement@@17.4.1"


# static fields
.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;

.field private static final zzd:[Ljava/lang/String;

.field private static final zze:[Ljava/lang/String;

.field private static final zzf:[Ljava/lang/String;

.field private static final zzg:[Ljava/lang/String;

.field private static final zzh:[Ljava/lang/String;

.field private static final zzi:[Ljava/lang/String;


# instance fields
.field private final zzj:Lcom/google/android/gms/measurement/internal/zzag;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzjz;


# direct methods
.method static constructor <clinit>()V
    .registers 53

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    .line 1565
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    .line 1566
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    .line 1567
    filled-new-array/range {v1 .. v52}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzd:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    .line 1568
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:[Ljava/lang/String;

    const-string v0, "has_realtime"

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    const-string v2, "retry_count"

    const-string v3, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    .line 1569
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzf:[Ljava/lang/String;

    const-string v0, "session_scoped"

    const-string v1, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 1570
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzab;->zzg:[Ljava/lang/String;

    const-string v1, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 1571
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzh:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    .line 1572
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzi:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkg;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjz;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab;->zzk:Lcom/google/android/gms/measurement/internal/zzjz;

    .line 5
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Lcom/google/android/gms/measurement/internal/zzab;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab;->zzj:Lcom/google/android/gms/measurement/internal/zzag;

    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x0

    .line 36
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_22
    .catchall {:try_start_5 .. :try_end_14} :catchall_20

    if-eqz v1, :cond_19

    .line 38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide p1

    :cond_1a
    if-eqz v1, :cond_1f

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1f
    return-wide p3

    :catchall_20
    move-exception p1

    goto :goto_31

    :catch_22
    move-exception p2

    .line 45
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    throw p2
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_20

    :goto_31
    if-eqz v1, :cond_36

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_36
    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzab;)Lcom/google/android/gms/measurement/internal/zzjz;
    .registers 1

    .line 1556
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzab;->zzk:Lcom/google/android/gms/measurement/internal/zzjz;

    return-object p0
.end method

.method private final zza(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1201
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 p1, 0x4

    if-eq v0, p1, :cond_25

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Loaded invalid unknown value type, ignoring it"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1209
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-object v1

    .line 1208
    :cond_33
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1207
    :cond_38
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1206
    :cond_41
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1204
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-object v1
.end method

.method private static zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1191
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1194
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1195
    :cond_10
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 1196
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 1197
    :cond_1a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_24

    .line 1198
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 1199
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbo$zzb;)Z
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 890
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 891
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 892
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 893
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 895
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 897
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 898
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 899
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 900
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 902
    :cond_40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v0

    .line 903
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    .line 904
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v4, "audience_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_67

    :cond_66
    move-object p2, v2

    :goto_67
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzc()Ljava/lang/String;

    move-result-object p2

    const-string v4, "event_name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzj()Z

    move-result p2

    if-eqz p2, :cond_84

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzk()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_85

    :cond_84
    move-object p2, v2

    :goto_85
    const-string p3, "session_scoped"

    .line 910
    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "data"

    .line 911
    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 912
    :try_start_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "event_filters"

    const/4 v0, 0x5

    .line 914
    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_b1

    .line 916
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 917
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    .line 918
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_b1} :catch_b3

    :cond_b1
    const/4 p1, 0x1

    return p1

    :catch_b3
    move-exception p2

    .line 921
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    .line 922
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    .line 923
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing event filter. appId"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbo$zze;)Z
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 926
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 927
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 928
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 929
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 931
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 933
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 934
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 935
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zza()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 936
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 938
    :cond_40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v0

    .line 939
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    .line 940
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v4, "audience_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zza()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzb()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_67

    :cond_66
    move-object p2, v2

    :goto_67
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzc()Ljava/lang/String;

    move-result-object p2

    const-string v4, "property_name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzg()Z

    move-result p2

    if-eqz p2, :cond_84

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzh()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_85

    :cond_84
    move-object p2, v2

    :goto_85
    const-string p3, "session_scoped"

    .line 946
    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "data"

    .line 947
    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 948
    :try_start_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "property_filters"

    const/4 v0, 0x5

    .line 950
    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_b2

    .line 952
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 953
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    .line 954
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_b1} :catch_b4

    return v1

    :cond_b2
    const/4 p1, 0x1

    return p1

    :catch_b4
    move-exception p2

    .line 958
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    .line 959
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    .line 960
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing property filter. appId"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic zzab()[Ljava/lang/String;
    .registers 1

    .line 1557
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzb:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzac()[Ljava/lang/String;
    .registers 1

    .line 1558
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzc:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzad()[Ljava/lang/String;
    .registers 1

    .line 1559
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzd:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzae()[Ljava/lang/String;
    .registers 1

    .line 1560
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzf:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzaf()[Ljava/lang/String;
    .registers 1

    .line 1561
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zze:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzag()[Ljava/lang/String;
    .registers 1

    .line 1562
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzg:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzah()[Ljava/lang/String;
    .registers 1

    .line 1563
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzh:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzai()[Ljava/lang/String;
    .registers 1

    .line 1564
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->zzi:[Ljava/lang/String;

    return-object v0
.end method

.method private final zzam()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1553
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    .line 1555
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private final zzb(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x0

    .line 21
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_24
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    if-eqz v1, :cond_19

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide p1

    .line 25
    :cond_1a
    :try_start_1a
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_22} :catch_24
    .catchall {:try_start_1a .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    goto :goto_33

    :catch_24
    move-exception p2

    .line 27
    :try_start_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    throw p2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_22

    :goto_33
    if-eqz v1, :cond_38

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_38
    throw p1
.end method

.method private final zzb(Ljava/lang/String;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1120
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_e
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    const/4 v3, 0x1

    .line 1124
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 1125
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_19} :catch_b5

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 1133
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzae:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v2

    const/16 v6, 0x7d0

    .line 1134
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1135
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v6, v2

    cmp-long v8, v4, v6

    if-gtz v8, :cond_33

    return v1

    .line 1139
    :cond_33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 1140
    :goto_39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5b

    .line 1141
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5a

    .line 1142
    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_4c

    goto :goto_5a

    .line 1144
    :cond_4c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_5a
    :goto_5a
    return v1

    :cond_5b
    const-string p2, ","

    .line 1146
    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1147
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 1148
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "audience_filter_values"

    .line 1149
    invoke-virtual {v0, p1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_b4

    return v3

    :cond_b4
    return v1

    :catch_b5
    move-exception p2

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 1130
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Database error querying filters. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final b_()V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method final c_()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 51
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzab;->zzj:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    throw v0
.end method

.method public final d_()Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 774
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_b} :catch_29
    .catchall {:try_start_5 .. :try_end_b} :catchall_24

    .line 775
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    .line 776
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_16} :catch_22
    .catchall {:try_start_b .. :try_end_16} :catchall_3e

    if-eqz v0, :cond_1b

    .line 778
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-object v1

    :cond_1c
    if-eqz v0, :cond_21

    .line 782
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_21
    return-object v1

    :catch_22
    move-exception v2

    goto :goto_2b

    :catchall_24
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3f

    :catch_29
    move-exception v2

    move-object v0, v1

    .line 785
    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3e

    if-eqz v0, :cond_3d

    .line 787
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception v1

    :goto_3f
    if-eqz v0, :cond_44

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_44
    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1260
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1262
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1264
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([B)J

    move-result-wide v1

    .line 1266
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1267
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "metadata_fingerprint"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "metadata"

    .line 1269
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1270
    :try_start_38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 1271
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_43} :catch_44

    return-wide v1

    :catch_44
    move-exception v0

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1275
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 1276
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing raw event metadata. appId"

    .line 1277
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1278
    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzc;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v0, 0x0

    .line 1334
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    .line 1335
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1336
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 1337
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_1e} :catch_7c
    .catchall {:try_start_7 .. :try_end_1e} :catchall_79

    .line 1338
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_37

    .line 1339
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_31} :catch_77
    .catchall {:try_start_1e .. :try_end_31} :catchall_91

    if-eqz v1, :cond_36

    .line 1341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v0

    .line 1343
    :cond_37
    :try_start_37
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1344
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_43} :catch_77
    .catchall {:try_start_37 .. :try_end_43} :catchall_91

    .line 1345
    :try_start_43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zzc;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_55} :catch_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_55} :catch_77
    .catchall {:try_start_43 .. :try_end_55} :catchall_91

    .line 1355
    :try_start_55
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_59} :catch_77
    .catchall {:try_start_55 .. :try_end_59} :catchall_91

    if-eqz v1, :cond_5e

    .line 1357
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    return-object p1

    :catch_5f
    move-exception v2

    .line 1348
    :try_start_60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 1349
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    .line 1350
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1351
    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_71} :catch_77
    .catchall {:try_start_60 .. :try_end_71} :catchall_91

    if-eqz v1, :cond_76

    .line 1353
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    return-object v0

    :catch_77
    move-exception p1

    goto :goto_7e

    :catchall_79
    move-exception p1

    move-object v1, v0

    goto :goto_92

    :catch_7c
    move-exception p1

    move-object v1, v0

    .line 1360
    :goto_7e
    :try_start_7e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_91

    if-eqz v1, :cond_90

    .line 1362
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_90
    return-object v0

    :catchall_91
    move-exception p1

    :goto_92
    if-eqz v1, :cond_97

    .line 1364
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1365
    :cond_97
    throw p1
.end method

.method public final zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;
    .registers 25
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 636
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v0, 0x1

    .line 639
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 640
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzae;-><init>()V

    const/4 v4, 0x0

    .line 642
    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v6, "apps"

    const-string v7, "day"

    const-string v8, "daily_events_count"

    const-string v9, "daily_public_events_count"

    const-string v10, "daily_conversions_count"

    const-string v11, "daily_error_events_count"

    const-string v12, "daily_realtime_events_count"

    .line 643
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_id=?"

    new-array v9, v0, [Ljava/lang/String;

    aput-object p3, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    .line 644
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 645
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_56

    .line 646
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Not updating daily counts, app is not known. appId"

    .line 648
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_50} :catch_fc
    .catchall {:try_start_15 .. :try_end_50} :catchall_fa

    if-eqz v4, :cond_55

    .line 651
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_55
    return-object v3

    .line 653
    :cond_56
    :try_start_56
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v2, v5, p1

    if-nez v2, :cond_80

    .line 655
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    const/4 v0, 0x2

    .line 656
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    const/4 v0, 0x3

    .line 657
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzc:J

    const/4 v0, 0x4

    .line 658
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    const/4 v0, 0x5

    .line 659
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    :cond_80
    if-eqz p6, :cond_88

    .line 661
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    :cond_88
    if-eqz p7, :cond_90

    .line 663
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    :cond_90
    if-eqz p8, :cond_98

    .line 665
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzc:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzc:J

    :cond_98
    if-eqz p9, :cond_a0

    .line 667
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    :cond_a0
    if-eqz p10, :cond_a8

    .line 669
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    .line 670
    :cond_a8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "day"

    .line 671
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_public_events_count"

    .line 672
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_events_count"

    .line 673
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_conversions_count"

    .line 674
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzc:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_error_events_count"

    .line 675
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_realtime_events_count"

    .line 676
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "apps"

    const-string v5, "app_id=?"

    .line 677
    invoke-virtual {v13, v2, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_f4} :catch_fc
    .catchall {:try_start_56 .. :try_end_f4} :catchall_fa

    if-eqz v4, :cond_f9

    .line 680
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f9
    return-object v3

    :catchall_fa
    move-exception v0

    goto :goto_114

    :catch_fc
    move-exception v0

    .line 683
    :try_start_fd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error updating daily counts. appId"

    .line 685
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10e
    .catchall {:try_start_fd .. :try_end_10e} :catchall_fa

    if-eqz v4, :cond_113

    .line 688
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_113
    return-object v3

    :goto_114
    if-eqz v4, :cond_119

    .line 691
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_119
    throw v0
.end method

.method public final zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;
    .registers 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    .line 635
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzab;->zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;
    .registers 28
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v15, p2

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "lifetime_count"

    const-string v2, "current_bundle_count"

    const-string v3, "last_fire_timestamp"

    const-string v4, "last_bundled_timestamp"

    const-string v5, "last_bundled_day"

    const-string v6, "last_sampled_complex_event_id"

    const-string v7, "last_sampling_rate"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "current_session_count"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v18, 0x0

    .line 62
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const/4 v9, 0x0

    .line 63
    new-array v3, v9, [Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const-string v4, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v9

    const/4 v10, 0x1

    aput-object v15, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 65
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_50} :catch_120
    .catchall {:try_start_2f .. :try_end_50} :catchall_11c

    .line 66
    :try_start_50
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_54} :catch_118
    .catchall {:try_start_50 .. :try_end_54} :catchall_114

    if-nez v1, :cond_5c

    if-eqz v14, :cond_5b

    .line 69
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5b
    return-object v18

    .line 71
    :cond_5c
    :try_start_5c
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 72
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 73
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x3

    .line 74
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_74

    move-wide/from16 v16, v2

    goto :goto_7a

    :cond_74
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide/from16 v16, v0

    :goto_7a
    const/4 v0, 0x4

    .line 75
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_84

    move-object/from16 v0, v18

    goto :goto_8c

    :cond_84
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_8c
    const/4 v1, 0x5

    .line 76
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_96

    move-object/from16 v19, v18

    goto :goto_a0

    :cond_96
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_a0
    const/4 v1, 0x6

    .line 77
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_aa

    move-object/from16 v20, v18

    goto :goto_b4

    :cond_aa
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_b4
    const/4 v1, 0x7

    .line 79
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_cd

    .line 80
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x1

    cmp-long v1, v21, v23

    if-nez v1, :cond_c6

    const/4 v9, 0x1

    :cond_c6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_cf

    :cond_cd
    move-object/from16 v21, v18

    :goto_cf
    const/16 v1, 0x8

    .line 81
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_d9

    move-wide v8, v2

    goto :goto_de

    :cond_d9
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v8, v1

    .line 82
    :goto_de
    new-instance v22, Lcom/google/android/gms/measurement/internal/zzam;
    :try_end_e0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_e0} :catch_118
    .catchall {:try_start_5c .. :try_end_e0} :catchall_114

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v10, v11

    move-wide/from16 v12, v16

    move-object/from16 v23, v14

    move-object v14, v0

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    :try_start_f2
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 83
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Got multiple records for event aggregates, expected one. appId"

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f2 .. :try_end_10c} :catch_112
    .catchall {:try_start_f2 .. :try_end_10c} :catchall_144

    :cond_10c
    if-eqz v23, :cond_111

    .line 90
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_111
    return-object v22

    :catch_112
    move-exception v0

    goto :goto_123

    :catchall_114
    move-exception v0

    move-object/from16 v23, v14

    goto :goto_145

    :catch_118
    move-exception v0

    move-object/from16 v23, v14

    goto :goto_123

    :catchall_11c
    move-exception v0

    move-object/from16 v23, v18

    goto :goto_145

    :catch_120
    move-exception v0

    move-object/from16 v23, v18

    .line 93
    :goto_123
    :try_start_123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error querying events. appId"

    .line 95
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13e
    .catchall {:try_start_123 .. :try_end_13e} :catchall_144

    if-eqz v23, :cond_143

    .line 99
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_143
    return-object v18

    :catchall_144
    move-exception v0

    :goto_145
    if-eqz v23, :cond_14a

    .line 102
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_14a
    throw v0
.end method

.method public final zza(J)Ljava/lang/String;
    .registers 7

    .line 1287
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v0, 0x0

    .line 1290
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    .line 1291
    new-array v3, v3, [Ljava/lang/String;

    .line 1292
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    .line 1293
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_1b} :catch_43
    .catchall {:try_start_7 .. :try_end_1b} :catchall_40

    .line 1294
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_34

    .line 1295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2e} :catch_3e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_58

    if-eqz p1, :cond_33

    .line 1297
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v0

    .line 1299
    :cond_34
    :try_start_34
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_38} :catch_3e
    .catchall {:try_start_34 .. :try_end_38} :catchall_58

    if-eqz p1, :cond_3d

    .line 1301
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object p2

    :catch_3e
    move-exception p2

    goto :goto_45

    :catchall_40
    move-exception p2

    move-object p1, v0

    goto :goto_59

    :catch_43
    move-exception p2

    move-object p1, v0

    .line 1304
    :goto_45
    :try_start_45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_58

    if-eqz p1, :cond_57

    .line 1306
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_57
    return-object v0

    :catchall_58
    move-exception p2

    :goto_59
    if-eqz p1, :cond_5e

    .line 1308
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1309
    :cond_5e
    throw p2
.end method

.method public final zza(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkp;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 231
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const-string v4, "name"

    const-string v5, "origin"

    const-string v6, "set_timestamp"

    const-string v7, "value"

    .line 232
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=?"

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1000"

    .line 234
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_33} :catch_85
    .catchall {:try_start_f .. :try_end_33} :catchall_82

    .line 235
    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_37} :catch_80
    .catchall {:try_start_33 .. :try_end_37} :catchall_9e

    if-nez v3, :cond_3f

    if-eqz v2, :cond_3e

    .line 238
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3e
    return-object v0

    .line 240
    :cond_3f
    :try_start_3f
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    const-string v3, ""

    :cond_4b
    move-object v6, v3

    const/4 v3, 0x2

    .line 244
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x3

    .line 245
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6a

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Read invalid user property value, ignoring it. appId"

    .line 249
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 250
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_74

    .line 251
    :cond_6a
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkp;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 252
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_74
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_78} :catch_80
    .catchall {:try_start_3f .. :try_end_78} :catchall_9e

    if-nez v3, :cond_3f

    if-eqz v2, :cond_7f

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7f
    return-object v0

    :catch_80
    move-exception v0

    goto :goto_87

    :catchall_82
    move-exception p1

    move-object v2, v1

    goto :goto_9f

    :catch_85
    move-exception v0

    move-object v2, v1

    .line 259
    :goto_87
    :try_start_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Error querying user properties. appId"

    .line 261
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_9e

    if-eqz v2, :cond_9d

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9d
    return-object v1

    :catchall_9e
    move-exception p1

    :goto_9f
    if-eqz v2, :cond_a4

    .line 266
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_a4
    throw p1

    return-void
.end method

.method public final zza(Ljava/lang/String;II)Ljava/util/List;
    .registers 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzg;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 796
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 797
    :goto_d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez p3, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 798
    :goto_15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 799
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 801
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "queue"

    const-string v5, "rowid"

    const-string v6, "data"

    const-string v7, "retry_count"

    .line 802
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "rowid"

    .line 803
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 804
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 805
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_4e

    .line 806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_48} :catch_d1
    .catchall {:try_start_1c .. :try_end_48} :catchall_cf

    if-eqz v2, :cond_4d

    .line 808
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4d
    return-object p1

    .line 810
    :cond_4e
    :try_start_4e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 812
    :cond_54
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_58} :catch_d1
    .catchall {:try_start_4e .. :try_end_58} :catchall_cf

    .line 813
    :try_start_58
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 814
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zzb([B)[B

    move-result-object v6
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_64} :catch_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_64} :catch_d1
    .catchall {:try_start_58 .. :try_end_64} :catchall_cf

    .line 821
    :try_start_64
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6e

    array-length v7, v6
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_6b} :catch_d1
    .catchall {:try_start_64 .. :try_end_6b} :catchall_cf

    add-int/2addr v7, v3

    if-gt v7, p3, :cond_c9

    .line 822
    :cond_6e
    :try_start_6e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_78} :catch_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_78} :catch_d1
    .catchall {:try_start_6e .. :try_end_78} :catchall_cf

    const/4 v8, 0x2

    .line 829
    :try_start_79
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_86

    .line 830
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzi(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 831
    :cond_86
    array-length v6, v6

    add-int/2addr v3, v6

    .line 832
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    :catch_9c
    move-exception v4

    .line 825
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 826
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Failed to merge queued bundle. appId"

    .line 827
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c1

    :catch_af
    move-exception v4

    .line 817
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 818
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Failed to unzip queued bundle. appId"

    .line 819
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 833
    :goto_c1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_c5} :catch_d1
    .catchall {:try_start_79 .. :try_end_c5} :catchall_cf

    if-eqz v4, :cond_c9

    if-le v3, p3, :cond_54

    :cond_c9
    if-eqz v2, :cond_ce

    .line 836
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ce
    return-object p2

    :catchall_cf
    move-exception p1

    goto :goto_ed

    :catch_d1
    move-exception p2

    .line 839
    :try_start_d2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    const-string v0, "Error querying bundles. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_e7
    .catchall {:try_start_d2 .. :try_end_e7} :catchall_cf

    if-eqz v2, :cond_ec

    .line 842
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ec
    return-object p1

    :goto_ed
    if-eqz v2, :cond_f2

    .line 845
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_f2
    throw p1

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 25
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkp;",
            ">;"
        }
    .end annotation

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 273
    :try_start_f
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_15} :catch_104
    .catchall {:try_start_f .. :try_end_15} :catchall_100

    move-object/from16 v11, p1

    .line 274
    :try_start_17
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_id=?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_25} :catch_fc
    .catchall {:try_start_17 .. :try_end_25} :catchall_100

    if-nez v5, :cond_32

    move-object/from16 v5, p2

    .line 277
    :try_start_29
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and origin=?"

    .line 278
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_32
    move-object/from16 v5, p2

    .line 279
    :goto_34
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 280
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " and name glob ?"

    .line 281
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_4c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "user_attributes"

    const-string v2, "name"

    const-string v6, "set_timestamp"

    const-string v7, "value"

    const-string v8, "origin"

    .line 284
    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v14

    .line 285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "1001"

    .line 287
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_7c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_7c} :catch_f8
    .catchall {:try_start_29 .. :try_end_7c} :catchall_100

    .line 288
    :try_start_7c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_80} :catch_f4
    .catchall {:try_start_7c .. :try_end_80} :catchall_f0

    if-nez v4, :cond_88

    if-eqz v2, :cond_87

    .line 291
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_87
    return-object v0

    .line 293
    :cond_88
    :goto_88
    :try_start_88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_a4

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 296
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 297
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v12, p0

    goto :goto_e3

    :cond_a4
    const/4 v4, 0x0

    .line 299
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    .line 300
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_ae} :catch_f4
    .catchall {:try_start_88 .. :try_end_ae} :catchall_f0

    const/4 v4, 0x2

    move-object/from16 v12, p0

    .line 301
    :try_start_b1
    invoke-direct {v12, v2, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    .line 302
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_b9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b1 .. :try_end_b9} :catch_ee
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_123

    if-nez v10, :cond_cf

    .line 304
    :try_start_bb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 305
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "(2)Read invalid user property value, ignoring it"

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v14, p3

    .line 307
    invoke-virtual {v4, v5, v6, v13, v14}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_dd

    :cond_cf
    move-object/from16 v14, p3

    .line 308
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkp;

    move-object v4, v15

    move-object/from16 v5, p1

    move-object v6, v13

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 309
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_dd
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_e1} :catch_eb
    .catchall {:try_start_bb .. :try_end_e1} :catchall_123

    if-nez v4, :cond_e9

    :goto_e3
    if-eqz v2, :cond_e8

    .line 313
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e8
    return-object v0

    :cond_e9
    move-object v5, v13

    goto :goto_88

    :catch_eb
    move-exception v0

    move-object v5, v13

    goto :goto_10c

    :catch_ee
    move-exception v0

    goto :goto_10c

    :catchall_f0
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_124

    :catch_f4
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_10c

    :catch_f8
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_10b

    :catch_fc
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_109

    :catchall_100
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_125

    :catch_104
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    :goto_109
    move-object/from16 v5, p2

    :goto_10b
    move-object v2, v1

    .line 316
    :goto_10c
    :try_start_10c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "(2)Error querying user properties"

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11d
    .catchall {:try_start_10c .. :try_end_11d} :catchall_123

    if-eqz v2, :cond_122

    .line 320
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_122
    return-object v1

    :catchall_123
    move-exception v0

    :goto_124
    move-object v1, v2

    :goto_125
    if-eqz v1, :cond_12a

    .line 323
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_12a
    throw v0

    return-void
.end method

.method public final zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzy;",
            ">;"
        }
    .end annotation

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 447
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const-string v4, "app_id"

    const-string v5, "origin"

    const-string v6, "name"

    const-string v7, "value"

    const-string v8, "active"

    const-string v9, "trigger_event_name"

    const-string v10, "trigger_timeout"

    const-string v11, "timed_out_event"

    const-string v12, "creation_timestamp"

    const-string v13, "triggered_event"

    const-string v14, "triggered_timestamp"

    const-string v15, "time_to_live"

    const-string v16, "expired_event"

    .line 448
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1001"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 450
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 451
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_42} :catch_10a
    .catchall {:try_start_c .. :try_end_42} :catchall_108

    if-nez v2, :cond_4a

    if-eqz v1, :cond_49

    .line 454
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_49
    return-object v0

    .line 456
    :cond_4a
    :try_start_4a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_65

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v4, "Read more than the max allowed conditional properties, ignoring extra"

    .line 459
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_102

    :cond_65
    const/4 v2, 0x0

    .line 462
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    .line 463
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x2

    .line 464
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x3

    move-object/from16 v15, p0

    .line 465
    invoke-direct {v15, v1, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    const/4 v5, 0x4

    .line 466
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_83

    const/4 v2, 0x1

    :cond_83
    const/4 v3, 0x5

    .line 467
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x6

    .line 468
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    const/4 v5, 0x7

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/gms/measurement/internal/zzaq;

    const/16 v3, 0x8

    .line 471
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    const/16 v5, 0x9

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/gms/measurement/internal/zzaq;

    const/16 v3, 0xa

    .line 474
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v3, 0xb

    .line 475
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    const/16 v5, 0xc

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 478
    new-instance v23, Lcom/google/android/gms/measurement/internal/zzkn;

    move-object/from16 v5, v23

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzy;

    move-object v3, v10

    move-object v5, v11

    move-object/from16 v6, v23

    move-wide/from16 v7, v17

    move v9, v2

    move-object v2, v10

    move-object v10, v12

    move-object/from16 v11, v16

    move-wide v12, v13

    move-object/from16 v14, v19

    move-wide/from16 v15, v20

    move-object/from16 v17, v22

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkn;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;)V

    .line 480
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_100
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a .. :try_end_100} :catch_10a
    .catchall {:try_start_4a .. :try_end_100} :catchall_108

    if-nez v2, :cond_4a

    :goto_102
    if-eqz v1, :cond_107

    .line 484
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_107
    return-object v0

    :catchall_108
    move-exception v0

    goto :goto_122

    :catch_10a
    move-exception v0

    .line 487
    :try_start_10b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_11c
    .catchall {:try_start_10b .. :try_end_11c} :catchall_108

    if-eqz v1, :cond_121

    .line 490
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_121
    return-object v0

    :goto_122
    if-eqz v1, :cond_127

    .line 493
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_127
    throw v0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzam;)V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zza:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzb:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lifetime_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bundle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzf:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_fire_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzg:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_bundled_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzh:Ljava/lang/Long;

    const-string v2, "last_bundled_day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Ljava/lang/Long;

    const-string v2, "last_sampled_complex_event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    const-string v2, "last_sampling_rate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zze:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_7c

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-wide/16 v3, 0x1

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_7d

    :cond_7c
    move-object v1, v2

    :goto_7d
    const-string v3, "last_exempt_from_sampling"

    .line 121
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    :try_start_82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const/4 v4, 0x5

    .line 124
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a6

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzam;->zza:Ljava/lang/String;

    .line 128
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_a6} :catch_a7

    :cond_a6
    return-void

    :catch_a7
    move-exception v0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzam;->zza:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing event aggregates. appId"

    .line 135
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "apps"

    .line 559
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 561
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 562
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 563
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_instance_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gmp_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resettable_device_id_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_index"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_start_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_end_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_store"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gmp_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dev_cert_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "measurement_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 575
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_public_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_conversions_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "config_fetched_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "failed_config_fetch_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "app_version_int"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "firebase_instance_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzab()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_error_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 584
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_realtime_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v2

    const-string v3, "health_monitor_sample"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "android_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 587
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "adid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 588
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ssaid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "admob_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dynamite_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_189

    .line 592
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_17a

    .line 593
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 594
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 595
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_189

    .line 597
    :cond_17a
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "safelisted_events"

    .line 598
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_189
    :goto_189
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1a8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 600
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ga_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_1a8
    :try_start_1a8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    .line 602
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 603
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e4

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 606
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e4

    .line 608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    .line 610
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 611
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a8 .. :try_end_1e4} :catch_1e5

    :cond_1e4
    return-void

    :catch_1e5
    move-exception v0

    .line 614
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 616
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing app. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/util/List;)V
    .registers 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zza;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "app_id=? and audience_id=?"

    const-string v4, "event_filters"

    const-string v5, "app_id=?"

    const-string v6, "property_filters"

    .line 1431
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1432
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_db

    .line 1433
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    .line 1434
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v9

    .line 1435
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;

    .line 1436
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zzb()I

    move-result v11

    if-eqz v11, :cond_9e

    move-object v11, v9

    const/4 v9, 0x0

    .line 1438
    :goto_2e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zzb()I

    move-result v12

    if-ge v9, v12, :cond_9d

    .line 1439
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    move-result-object v12

    .line 1440
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v12

    .line 1441
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    .line 1442
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzds;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    .line 1444
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzgw;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_57

    .line 1446
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    const/4 v14, 0x1

    goto :goto_58

    :cond_57
    const/4 v14, 0x0

    :goto_58
    move v15, v14

    const/4 v14, 0x0

    .line 1448
    :goto_5a
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;->zzb()I

    move-result v7

    if-ge v14, v7, :cond_89

    .line 1449
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbo$zzc;

    move-result-object v7

    .line 1450
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzh()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_86

    .line 1453
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v7

    .line 1454
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbo$zzc$zza;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbo$zzc$zza;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbo$zzc;

    .line 1455
    invoke-virtual {v13, v14, v7}, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbo$zzc;)Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    const/4 v15, 0x1

    :cond_86
    add-int/lit8 v14, v14, 0x1

    goto :goto_5a

    :cond_89
    if-eqz v15, :cond_9a

    .line 1459
    invoke-virtual {v11, v9, v13}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbo$zzb$zza;)Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;

    move-result-object v11

    .line 1460
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    invoke-interface {v2, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_9d
    move-object v9, v11

    .line 1462
    :cond_9e
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zza()I

    move-result v7

    if-eqz v7, :cond_d7

    const/4 v7, 0x0

    .line 1464
    :goto_a5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zza()I

    move-result v10

    if-ge v7, v10, :cond_d7

    .line 1465
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbo$zze;

    move-result-object v10

    .line 1467
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzc()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d4

    .line 1470
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v10

    .line 1471
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbo$zze$zza;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzbo$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbo$zze$zza;

    move-result-object v10

    .line 1472
    invoke-virtual {v9, v7, v10}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbo$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;

    move-result-object v9

    .line 1473
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    invoke-interface {v2, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_a5

    :cond_d7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    .line 1477
    :cond_db
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1479
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1482
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1484
    :try_start_ee
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1486
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x1

    .line 1488
    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v6, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1489
    new-array v10, v9, [Ljava/lang/String;

    aput-object v0, v10, v11

    invoke-virtual {v8, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1490
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_212

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1494
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1495
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zza()Z

    move-result v9

    if-nez v9, :cond_13f

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    const-string v9, "Audience with no ID. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10f

    .line 1499
    :cond_13f
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzb()I

    move-result v9

    .line 1500
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_173

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    .line 1501
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v11

    if-nez v11, :cond_14b

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 1503
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    const-string v10, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1504
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1505
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1506
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10f

    .line 1509
    :cond_173
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzc()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbo$zze;

    .line 1510
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zza()Z

    move-result v11

    if-nez v11, :cond_17b

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 1512
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    const-string v10, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1513
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1514
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1515
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_10f

    .line 1519
    :cond_1a4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1ac
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    .line 1520
    invoke-direct {v1, v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbo$zzb;)Z

    move-result v11

    if-nez v11, :cond_1ac

    const/4 v10, 0x0

    goto :goto_1c1

    :cond_1c0
    const/4 v10, 0x1

    :goto_1c1
    if-eqz v10, :cond_1de

    .line 1525
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzc()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1cb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1de

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbo$zze;

    .line 1526
    invoke-direct {v1, v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbo$zze;)Z

    move-result v11

    if-nez v11, :cond_1cb

    const/4 v10, 0x0

    :cond_1de
    if-nez v10, :cond_20e

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1534
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v10, 0x2

    .line 1536
    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    .line 1537
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 1538
    invoke-virtual {v8, v6, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1539
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 1540
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v10, v12

    .line 1541
    invoke-virtual {v8, v4, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_10f

    :cond_20e
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_10f

    .line 1543
    :cond_212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    .line 1545
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zza()Z

    move-result v5

    if-eqz v5, :cond_236

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_237

    :cond_236
    const/4 v4, 0x0

    :goto_237
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21b

    .line 1547
    :cond_23b
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Ljava/util/List;)Z

    .line 1548
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_241
    .catchall {:try_start_ee .. :try_end_241} :catchall_245

    .line 1549
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_245
    move-exception v0

    .line 1551
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1552
    throw v0

    return-void
.end method

.method final zza(Ljava/util/List;)V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 873
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 874
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(I)I

    .line 876
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzab;->zzam()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    const-string v0, ","

    .line 879
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 880
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_75

    .line 881
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 883
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 884
    :cond_75
    :try_start_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 885
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_9c} :catch_9d

    return-void

    :catch_9d
    move-exception p1

    .line 888
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;Z)Z
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 726
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 727
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 729
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzk()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->zzv()V

    .line 731
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 732
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzl()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zzk()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3d

    .line 733
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzl()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zzk()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5e

    .line 734
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 735
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 736
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 737
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 738
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 739
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 740
    :cond_5e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 741
    :try_start_63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzc([B)[B

    move-result-object v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_f9

    .line 749
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving bundle, size"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 751
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "bundle_end_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data"

    .line 753
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 754
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "has_realtime"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaz()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 756
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzba()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "retry_count"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    :cond_b9
    :try_start_b9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "queue"

    const/4 v3, 0x0

    .line 758
    invoke-virtual {p2, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-nez p2, :cond_e0

    .line 760
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 761
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v0, "Failed to insert bundle (got -1). appId"

    .line 762
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b9 .. :try_end_df} :catch_e2

    return v1

    :cond_e0
    const/4 p1, 0x1

    return p1

    :catch_e2
    move-exception p2

    .line 766
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 768
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_f9
    move-exception p2

    .line 744
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 746
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    .line 747
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaj;JZ)Z
    .registers 10

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1400
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zzd:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    move-result-object v0

    .line 1403
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zze:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1404
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v3

    .line 1405
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zze:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1406
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;Ljava/lang/Object;)V

    .line 1407
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    goto :goto_1e

    .line 1409
    :cond_43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v0

    .line 1410
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1411
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1414
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "metadata_fingerprint"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "data"

    .line 1415
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1416
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "realtime"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 1417
    :try_start_85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "raw_events"

    const/4 v0, 0x0

    .line 1418
    invoke-virtual {p3, p4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_aa

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    .line 1421
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    const-string p4, "Failed to insert raw event (got -1). appId"

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    .line 1422
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_a9} :catch_ac

    return p2

    :cond_aa
    const/4 p1, 0x1

    return p1

    :catch_ac
    move-exception p3

    .line 1426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p4

    .line 1427
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    .line 1428
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing raw event. appId"

    invoke-virtual {p4, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzkp;)Z
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 152
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 155
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_5b

    .line 157
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 158
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v3, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 159
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zzc(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5b

    return v2

    .line 163
    :cond_39
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    const-string v3, "_npa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x2

    .line 164
    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 165
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x19

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5b

    return v2

    .line 168
    :cond_5b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Ljava/lang/String;

    const-string v3, "origin"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "set_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    :try_start_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 176
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_c1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    .line 180
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87 .. :try_end_ac} :catch_ad

    goto :goto_c1

    :catch_ad
    move-exception v0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkp;->zza:Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing user property. appId"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c1
    :goto_c1
    return v1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzy;)Z
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 325
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 328
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 330
    new-array v0, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 331
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2a

    return v3

    .line 334
    :cond_2a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 335
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    const-string v3, "origin"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 340
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/String;

    const-string v3, "trigger_event_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "timed_out_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 343
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "triggered_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 345
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "expired_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 348
    :try_start_bb
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 350
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_f5

    .line 352
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 354
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_e0} :catch_e1

    goto :goto_f5

    :catch_e1
    move-exception v0

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 360
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing conditional user property"

    .line 361
    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f5
    :goto_f5
    return v1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzbw$zzc;)Z
    .registers 10

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1369
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object p5

    .line 1373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 1375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p5

    .line 1376
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Saving complex main event, appId, data size"

    .line 1377
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1378
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 1379
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_id"

    .line 1380
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "children_to_process"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    .line 1382
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    .line 1383
    :try_start_4b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "main_event_params"

    const/4 p5, 0x0

    const/4 v1, 0x5

    .line 1385
    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-nez p5, :cond_6f

    .line 1387
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    .line 1388
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    const-string p4, "Failed to insert complex main event (got -1). appId"

    .line 1389
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_6e} :catch_71

    return p2

    :cond_6f
    const/4 p1, 0x1

    return p1

    :catch_71
    move-exception p3

    .line 1393
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p4

    .line 1394
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p4

    .line 1395
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "Error storing complex main event. appId"

    invoke-virtual {p4, p5, p1, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final zzaa()J
    .registers 7

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1312
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    .line 1313
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1314
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_11} :catch_26
    .catchall {:try_start_3 .. :try_end_11} :catchall_24

    if-nez v3, :cond_19

    if-eqz v2, :cond_18

    .line 1317
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_18
    return-wide v0

    :cond_19
    const/4 v3, 0x0

    .line 1319
    :try_start_1a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1e} :catch_26
    .catchall {:try_start_1a .. :try_end_1e} :catchall_24

    if-eqz v2, :cond_23

    .line 1321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_23
    return-wide v0

    :catchall_24
    move-exception v0

    goto :goto_3a

    :catch_26
    move-exception v3

    .line 1324
    :try_start_27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_24

    if-eqz v2, :cond_39

    .line 1326
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_39
    return-wide v0

    :goto_3a
    if-eqz v2, :cond_3f

    .line 1328
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1329
    :cond_3f
    throw v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 36
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    .line 495
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v2, 0x0

    .line 499
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "apps"

    const-string v5, "app_instance_id"

    const-string v6, "gmp_app_id"

    const-string v7, "resettable_device_id_hash"

    const-string v8, "last_bundle_index"

    const-string v9, "last_bundle_start_timestamp"

    const-string v10, "last_bundle_end_timestamp"

    const-string v11, "app_version"

    const-string v12, "app_store"

    const-string v13, "gmp_version"

    const-string v14, "dev_cert_hash"

    const-string v15, "measurement_enabled"

    const-string v16, "day"

    const-string v17, "daily_public_events_count"

    const-string v18, "daily_events_count"

    const-string v19, "daily_conversions_count"

    const-string v20, "config_fetched_time"

    const-string v21, "failed_config_fetch_time"

    const-string v22, "app_version_int"

    const-string v23, "firebase_instance_id"

    const-string v24, "daily_error_events_count"

    const-string v25, "daily_realtime_events_count"

    const-string v26, "health_monitor_sample"

    const-string v27, "android_id"

    const-string v28, "adid_reporting_enabled"

    const-string v29, "ssaid_reporting_enabled"

    const-string v30, "admob_app_id"

    const-string v31, "dynamite_version"

    const-string v32, "safelisted_events"

    const-string v33, "ga_app_id"

    .line 500
    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 501
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_5f} :catch_20f
    .catchall {:try_start_c .. :try_end_5f} :catchall_20a

    .line 502
    :try_start_5f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_63} :catch_206
    .catchall {:try_start_5f .. :try_end_63} :catchall_202

    if-nez v4, :cond_6b

    if-eqz v3, :cond_6a

    .line 505
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6a
    return-object v2

    .line 507
    :cond_6b
    :try_start_6b
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzg;
    :try_end_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_6d} :catch_206
    .catchall {:try_start_6b .. :try_end_6d} :catchall_202

    move-object/from16 v5, p0

    :try_start_6f
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzab;->zza:Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkg;->zzs()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;Ljava/lang/String;)V

    .line 508
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 509
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 510
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 511
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(J)V

    const/4 v6, 0x4

    .line 512
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    const/4 v6, 0x5

    .line 513
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    const/4 v6, 0x6

    .line 514
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    const/4 v6, 0x7

    .line 515
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 516
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    const/16 v6, 0x9

    .line 517
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    const/16 v6, 0xa

    .line 518
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_d9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_d7

    goto :goto_d9

    :cond_d7
    const/4 v6, 0x0

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v6, 0x1

    :goto_da
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    const/16 v6, 0xb

    .line 519
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzj(J)V

    const/16 v6, 0xc

    .line 520
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(J)V

    const/16 v6, 0xd

    .line 521
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl(J)V

    const/16 v6, 0xe

    .line 522
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(J)V

    const/16 v6, 0xf

    .line 523
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(J)V

    const/16 v6, 0x10

    .line 524
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(J)V

    const/16 v6, 0x11

    .line 525
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11f

    const-wide/32 v6, -0x80000000

    goto :goto_124

    :cond_11f
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    :goto_124
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    const/16 v6, 0x12

    .line 526
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    const/16 v6, 0x13

    .line 527
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(J)V

    const/16 v6, 0x14

    .line 528
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzn(J)V

    const/16 v6, 0x15

    .line 529
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzcm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_16a

    const/16 v6, 0x16

    .line 531
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_163

    move-wide v9, v7

    goto :goto_167

    :cond_163
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :goto_167
    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    :cond_16a
    const/16 v6, 0x17

    .line 532
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_17b

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_179

    goto :goto_17b

    :cond_179
    const/4 v6, 0x0

    goto :goto_17c

    :cond_17b
    :goto_17b
    const/4 v6, 0x1

    :goto_17c
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    const/16 v6, 0x18

    .line 533
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_18f

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_18e

    goto :goto_18f

    :cond_18e
    const/4 v0, 0x0

    :cond_18f
    :goto_18f
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    const/16 v0, 0x19

    .line 534
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    const/16 v0, 0x1a

    .line 535
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1a4

    goto :goto_1a8

    :cond_1a4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :goto_1a8
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    const/16 v0, 0x1b

    .line 536
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1c5

    .line 538
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/util/List;)V

    .line 540
    :cond_1c5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1e0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    const/16 v0, 0x1c

    .line 541
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    .line 542
    :cond_1e0
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    .line 543
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 546
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_1fa} :catch_200
    .catchall {:try_start_6f .. :try_end_1fa} :catchall_22a

    :cond_1fa
    if-eqz v3, :cond_1ff

    .line 549
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1ff
    return-object v4

    :catch_200
    move-exception v0

    goto :goto_213

    :catchall_202
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_22b

    :catch_206
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_213

    :catchall_20a
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    goto :goto_22b

    :catch_20f
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    .line 552
    :goto_213
    :try_start_213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_224
    .catchall {:try_start_213 .. :try_end_224} :catchall_22a

    if-eqz v3, :cond_229

    .line 554
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_229
    return-object v2

    :catchall_22a
    move-exception v0

    :goto_22b
    if-eqz v3, :cond_230

    .line 557
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_230
    throw v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzy;",
            ">;"
        }
    .end annotation

    .line 429
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 436
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    .line 437
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 439
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    .line 440
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 137
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 141
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    .line 142
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Error deleting user property. appId"

    .line 150
    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)J
    .registers 8

    .line 618
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 621
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    .line 623
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v1

    const v2, 0xf4240

    .line 624
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 625
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 626
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "raw_events"

    const-string v4, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v5, 0x2

    .line 627
    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 628
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_37} :catch_39

    int-to-long v0, p1

    return-wide v0

    :catch_39
    move-exception v0

    .line 631
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 633
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error deleting over the limit events. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;
    .registers 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v8, p2

    .line 188
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v9, 0x0

    .line 193
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "user_attributes"

    const-string v0, "set_timestamp"

    const-string v1, "value"

    const-string v2, "origin"

    .line 194
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v14, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v14, v1

    const/4 v2, 0x1

    aput-object v8, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 195
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_33} :catch_83
    .catchall {:try_start_f .. :try_end_33} :catchall_7e

    .line 196
    :try_start_33
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_37} :catch_7a
    .catchall {:try_start_33 .. :try_end_37} :catchall_76

    if-nez v3, :cond_3f

    if-eqz v10, :cond_3e

    .line 199
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3e
    return-object v9

    .line 201
    :cond_3f
    :try_start_3f
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_43} :catch_7a
    .catchall {:try_start_3f .. :try_end_43} :catchall_76

    move-object/from16 v11, p0

    .line 202
    :try_start_45
    invoke-direct {v11, v10, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 203
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkp;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 205
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 209
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_6e} :catch_74
    .catchall {:try_start_45 .. :try_end_6e} :catchall_a6

    :cond_6e
    if-eqz v10, :cond_73

    .line 212
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_73
    return-object v0

    :catch_74
    move-exception v0

    goto :goto_87

    :catchall_76
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_a7

    :catch_7a
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_87

    :catchall_7e
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    goto :goto_a7

    :catch_83
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    .line 215
    :goto_87
    :try_start_87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error querying user property. appId"

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_87 .. :try_end_a0} :catchall_a6

    if-eqz v10, :cond_a5

    .line 221
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a5
    return-object v9

    :catchall_a6
    move-exception v0

    :goto_a7
    if-eqz v10, :cond_ac

    .line 224
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_ac
    throw v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzy;
    .registers 32
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p2

    .line 363
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v8, 0x0

    .line 368
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "conditional_properties"

    const-string v11, "origin"

    const-string v12, "value"

    const-string v13, "active"

    const-string v14, "trigger_event_name"

    const-string v15, "trigger_timeout"

    const-string v16, "timed_out_event"

    const-string v17, "creation_timestamp"

    const-string v18, "triggered_event"

    const-string v19, "triggered_timestamp"

    const-string v20, "time_to_live"

    const-string v21, "expired_event"

    .line 369
    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v13, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v13, v1

    const/4 v2, 0x1

    aput-object v7, v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 370
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_42} :catch_ff
    .catchall {:try_start_f .. :try_end_42} :catchall_fa

    .line 371
    :try_start_42
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_46} :catch_f6
    .catchall {:try_start_42 .. :try_end_46} :catchall_f2

    if-nez v3, :cond_4e

    if-eqz v9, :cond_4d

    .line 374
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4d
    return-object v8

    .line 376
    :cond_4e
    :try_start_4e
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_52} :catch_f6
    .catchall {:try_start_4e .. :try_end_52} :catchall_f2

    move-object/from16 v10, p0

    .line 377
    :try_start_54
    invoke-direct {v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    .line 378
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_61

    const/16 v20, 0x1

    goto :goto_63

    :cond_61
    const/16 v20, 0x0

    :goto_63
    const/4 v0, 0x3

    .line 379
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v0, 0x4

    .line 380
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/google/android/gms/measurement/internal/zzaq;

    const/4 v0, 0x6

    .line 383
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/google/android/gms/measurement/internal/zzaq;

    const/16 v0, 0x8

    .line 386
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v0, 0x9

    .line 387
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 390
    new-instance v17, Lcom/google/android/gms/measurement/internal/zzkn;

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzy;

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v28}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkn;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;)V

    .line 392
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Got multiple records for conditional property, expected one"

    .line 395
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_ea} :catch_f0
    .catchall {:try_start_54 .. :try_end_ea} :catchall_122

    :cond_ea
    if-eqz v9, :cond_ef

    .line 400
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_ef
    return-object v0

    :catch_f0
    move-exception v0

    goto :goto_103

    :catchall_f2
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_123

    :catch_f6
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_103

    :catchall_fa
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    goto :goto_123

    :catch_ff
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    .line 403
    :goto_103
    :try_start_103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error querying conditional property"

    .line 405
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11c
    .catchall {:try_start_103 .. :try_end_11c} :catchall_122

    if-eqz v9, :cond_121

    .line 409
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_121
    return-object v8

    :catchall_122
    move-exception v0

    :goto_123
    if-eqz v9, :cond_128

    .line 412
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_128
    throw v0
.end method

.method public final zzd(Ljava/lang/String;)[B
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 693
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 695
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v0, 0x0

    .line 697
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "remote_config"

    .line 698
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 699
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_25} :catch_57
    .catchall {:try_start_a .. :try_end_25} :catchall_54

    .line 700
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_29} :catch_52
    .catchall {:try_start_25 .. :try_end_29} :catchall_70

    if-nez v2, :cond_31

    if-eqz v1, :cond_30

    .line 703
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_30
    return-object v0

    .line 705
    :cond_31
    :try_start_31
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 706
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 707
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Got multiple records for app config, expected one. appId"

    .line 709
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 710
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_4c} :catch_52
    .catchall {:try_start_31 .. :try_end_4c} :catchall_70

    :cond_4c
    if-eqz v1, :cond_51

    .line 713
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_51
    return-object v2

    :catch_52
    move-exception v2

    goto :goto_59

    :catchall_54
    move-exception p1

    move-object v1, v0

    goto :goto_71

    :catch_57
    move-exception v2

    move-object v1, v0

    .line 716
    :goto_59
    :try_start_59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 717
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    .line 718
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_70

    if-eqz v1, :cond_6f

    .line 720
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6f
    return-object v0

    :catchall_70
    move-exception p1

    :goto_71
    if-eqz v1, :cond_76

    .line 723
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 724
    :cond_76
    throw p1
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 414
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v0, 0x0

    .line 418
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    .line 419
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 420
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_21} :catch_22

    return p1

    :catch_22
    move-exception v1

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 425
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Error deleting conditional property"

    .line 427
    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method final zze(Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zzb;",
            ">;>;"
        }
    .end annotation

    .line 1005
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_d
    const-string v2, "event_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1009
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1010
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1011
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1012
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_30} :catch_92
    .catchall {:try_start_d .. :try_end_30} :catchall_90

    if-eqz v9, :cond_35

    .line 1014
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_35
    return-object p1

    .line 1016
    :cond_36
    :try_start_36
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_3a} :catch_92
    .catchall {:try_start_36 .. :try_end_3a} :catchall_90

    .line 1017
    :try_start_3a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzl()Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zzb;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_4c} :catch_92
    .catchall {:try_start_3a .. :try_end_4c} :catchall_90

    .line 1024
    :try_start_4c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzf()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1025
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1026
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_6e

    .line 1028
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_6e
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :catch_72
    move-exception v1

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 1022
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1031
    :cond_84
    :goto_84
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_88
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_88} :catch_92
    .catchall {:try_start_4c .. :try_end_88} :catchall_90

    if-nez v1, :cond_36

    if-eqz v9, :cond_8f

    .line 1033
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8f
    return-object v0

    :catchall_90
    move-exception p1

    goto :goto_ae

    :catch_92
    move-exception v0

    .line 1035
    :try_start_93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1036
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1037
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1038
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_a8
    .catchall {:try_start_93 .. :try_end_a8} :catchall_90

    if-eqz v9, :cond_ad

    .line 1040
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_ad
    return-object p1

    :goto_ae
    if-eqz v9, :cond_b3

    .line 1043
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_b3
    throw p1

    return-void
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzf(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1088
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1090
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_13
    const-string v3, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    const/4 v4, 0x2

    .line 1092
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v6, 0x1

    aput-object p1, v4, v6

    .line 1093
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_22} :catch_6a
    .catchall {:try_start_13 .. :try_end_22} :catchall_67

    .line 1094
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1095
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_2c} :catch_65
    .catchall {:try_start_22 .. :try_end_2c} :catchall_83

    if-eqz v1, :cond_31

    .line 1097
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_31
    return-object p1

    .line 1099
    :cond_32
    :try_start_32
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4e

    .line 1102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_4e
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_5d} :catch_65
    .catchall {:try_start_32 .. :try_end_5d} :catchall_83

    if-nez v3, :cond_32

    if-eqz v1, :cond_64

    .line 1108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_64
    return-object v0

    :catch_65
    move-exception v0

    goto :goto_6c

    :catchall_67
    move-exception p1

    move-object v1, v2

    goto :goto_84

    :catch_6a
    move-exception v0

    move-object v1, v2

    .line 1110
    :goto_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 1111
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Database error querying scoped filters. appId"

    .line 1112
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_83

    if-eqz v1, :cond_82

    .line 1114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    return-object v2

    :catchall_83
    move-exception p1

    :goto_84
    if-eqz v1, :cond_89

    .line 1117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1118
    :cond_89
    throw p1

    return-void
.end method

.method final zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zzb;",
            ">;>;"
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 964
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 965
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 967
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 968
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_16
    const-string v2, "event_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 970
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND event_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 971
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_32} :catch_9b
    .catchall {:try_start_16 .. :try_end_32} :catchall_98

    .line 972
    :try_start_32
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_42

    .line 973
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_3c} :catch_96
    .catchall {:try_start_32 .. :try_end_3c} :catchall_b4

    if-eqz p2, :cond_41

    .line 975
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_41
    return-object p1

    .line 977
    :cond_42
    :try_start_42
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_46} :catch_96
    .catchall {:try_start_42 .. :try_end_46} :catchall_b4

    .line 978
    :try_start_46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzl()Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zzb$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zzb;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_58} :catch_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_58} :catch_96
    .catchall {:try_start_46 .. :try_end_58} :catchall_b4

    .line 985
    :try_start_58
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 986
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_74

    .line 988
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 989
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_74
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :catch_78
    move-exception v1

    .line 981
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 982
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 983
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 991
    :goto_8a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_8e} :catch_96
    .catchall {:try_start_58 .. :try_end_8e} :catchall_b4

    if-nez v1, :cond_42

    if-eqz p2, :cond_95

    .line 993
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_95
    return-object v0

    :catch_96
    move-exception v0

    goto :goto_9d

    :catchall_98
    move-exception p1

    move-object p2, v9

    goto :goto_b5

    :catch_9b
    move-exception v0

    move-object p2, v9

    .line 995
    :goto_9d
    :try_start_9d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 996
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 997
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_9d .. :try_end_ae} :catchall_b4

    if-eqz p2, :cond_b3

    .line 999
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_b3
    return-object v9

    :catchall_b4
    move-exception p1

    :goto_b5
    if-eqz p2, :cond_ba

    .line 1002
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1003
    :cond_ba
    throw p1

    return-void
.end method

.method public final zzf()V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method final zzg(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzi;",
            ">;"
        }
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1153
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_e
    const-string v1, "audience_filter_values"

    const-string v2, "audience_id"

    const-string v3, "current_results"

    .line 1156
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id=?"

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1157
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_27} :catch_81
    .catchall {:try_start_e .. :try_end_27} :catchall_7e

    .line 1158
    :try_start_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2b} :catch_7c
    .catchall {:try_start_27 .. :try_end_2b} :catchall_9a

    if-nez v1, :cond_33

    if-eqz v0, :cond_32

    .line 1161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_32
    return-object v8

    .line 1163
    :cond_33
    :try_start_33
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1164
    :cond_38
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1165
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_40} :catch_7c
    .catchall {:try_start_33 .. :try_end_40} :catchall_9a

    .line 1166
    :try_start_40
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzi()Lcom/google/android/gms/internal/measurement/zzbw$zzi$zza;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbw$zzi$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbw$zzi;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_52} :catch_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_52} :catch_7c
    .catchall {:try_start_40 .. :try_end_52} :catchall_9a

    .line 1175
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :catch_5a
    move-exception v3

    .line 1169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 1170
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    .line 1171
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1173
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1176
    :goto_70
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_74} :catch_7c
    .catchall {:try_start_52 .. :try_end_74} :catchall_9a

    if-nez v2, :cond_38

    if-eqz v0, :cond_7b

    .line 1179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7b
    return-object v1

    :catch_7c
    move-exception v1

    goto :goto_83

    :catchall_7e
    move-exception p1

    move-object v0, v8

    goto :goto_9b

    :catch_81
    move-exception v1

    move-object v0, v8

    .line 1182
    :goto_83
    :try_start_83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1183
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    .line 1184
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_83 .. :try_end_94} :catchall_9a

    if-eqz v0, :cond_99

    .line 1186
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_99
    return-object v8

    :catchall_9a
    move-exception p1

    :goto_9b
    if-eqz v0, :cond_a0

    .line 1189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1190
    :cond_a0
    throw p1

    return-void
.end method

.method final zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zze;",
            ">;>;"
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1047
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1048
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_16
    const-string v2, "property_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1053
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND property_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1054
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_32} :catch_9b
    .catchall {:try_start_16 .. :try_end_32} :catchall_98

    .line 1055
    :try_start_32
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1056
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_3c} :catch_96
    .catchall {:try_start_32 .. :try_end_3c} :catchall_b4

    if-eqz p2, :cond_41

    .line 1058
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_41
    return-object p1

    .line 1060
    :cond_42
    :try_start_42
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_46} :catch_96
    .catchall {:try_start_42 .. :try_end_46} :catchall_b4

    .line 1061
    :try_start_46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzi()Lcom/google/android/gms/internal/measurement/zzbo$zze$zza;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zze$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zze;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_58} :catch_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_58} :catch_96
    .catchall {:try_start_46 .. :try_end_58} :catchall_b4

    .line 1066
    :try_start_58
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1067
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_74

    .line 1069
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    :cond_74
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :catch_78
    move-exception v1

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1072
    :goto_8a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_8e} :catch_96
    .catchall {:try_start_58 .. :try_end_8e} :catchall_b4

    if-nez v1, :cond_42

    if-eqz p2, :cond_95

    .line 1074
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_95
    return-object v0

    :catch_96
    move-exception v0

    goto :goto_9d

    :catchall_98
    move-exception p1

    move-object p2, v9

    goto :goto_b5

    :catch_9b
    move-exception v0

    move-object p2, v9

    .line 1076
    :goto_9d
    :try_start_9d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1077
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1078
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_9d .. :try_end_ae} :catchall_b4

    if-eqz p2, :cond_b3

    .line 1080
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_b3
    return-object v9

    :catchall_b4
    move-exception p1

    :goto_b5
    if-eqz p2, :cond_ba

    .line 1083
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1084
    :cond_ba
    throw p1

    return-void
.end method

.method public final zzh(Ljava/lang/String;)J
    .registers 5

    .line 1285
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 1286
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final zzh(Ljava/lang/String;Ljava/lang/String;)J
    .registers 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1214
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1220
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v4, 0x0

    .line 1221
    :try_start_19
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "select "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from app2 where app_id=?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3f} :catch_ce
    .catchall {:try_start_19 .. :try_end_3f} :catchall_ca

    const-wide/16 v9, -0x1

    move-object/from16 v11, p0

    .line 1222
    :try_start_43
    invoke-direct {v11, v0, v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v12
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_47} :catch_c8
    .catchall {:try_start_43 .. :try_end_47} :catchall_e7

    const-string v0, "app2"

    const-string v7, "app_id"

    cmp-long v14, v12, v9

    if-nez v14, :cond_89

    .line 1225
    :try_start_4f
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    invoke-virtual {v12, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "first_open_count"

    .line 1227
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "previous_install_count"

    .line 1228
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    const/4 v14, 0x5

    .line 1230
    invoke-virtual {v3, v0, v13, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-nez v14, :cond_88

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v6, "Failed to insert column (got -1). appId"

    .line 1234
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_84} :catch_c8
    .catchall {:try_start_4f .. :try_end_84} :catchall_e7

    .line 1235
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    :cond_88
    move-wide v12, v4

    .line 1237
    :cond_89
    :try_start_89
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1238
    invoke-virtual {v14, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v15, 0x1

    add-long/2addr v15, v12

    .line 1239
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "app_id = ?"

    .line 1240
    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-virtual {v3, v0, v14, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-nez v0, :cond_bf

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v4, "Failed to update column (got 0). appId"

    .line 1244
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_bb} :catch_c6
    .catchall {:try_start_89 .. :try_end_bb} :catchall_e7

    .line 1245
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    .line 1247
    :cond_bf
    :try_start_bf
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_c2} :catch_c6
    .catchall {:try_start_bf .. :try_end_c2} :catchall_e7

    .line 1248
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_e6

    :catch_c6
    move-exception v0

    goto :goto_d2

    :catch_c8
    move-exception v0

    goto :goto_d1

    :catchall_ca
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_e8

    :catch_ce
    move-exception v0

    move-object/from16 v11, p0

    :goto_d1
    move-wide v12, v4

    .line 1251
    :goto_d2
    :try_start_d2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 1252
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "Error inserting column. appId"

    .line 1253
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_e7

    .line 1254
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_e6
    return-wide v12

    :catchall_e7
    move-exception v0

    .line 1256
    :goto_e8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1257
    throw v0
.end method

.method public final zzh()V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final zzk()Z
    .registers 6

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    .line 793
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method final zzv()V
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 848
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 849
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzab;->zzam()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 851
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzf:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v0

    .line 852
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 853
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 854
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzx:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v5, 0x0

    .line 855
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 856
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_87

    .line 858
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzf:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 860
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 861
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 862
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzab;->zzam()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 863
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    .line 864
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 866
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zzk()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 868
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_87

    .line 870
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_87
    return-void
.end method

.method public final zzw()J
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1213
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx()J
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1259
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzy()Z
    .registers 6

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    .line 1280
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzz()Z
    .registers 6

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    .line 1283
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
