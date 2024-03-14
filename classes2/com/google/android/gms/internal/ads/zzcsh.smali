.class final synthetic Lcom/google/android/gms/internal/ads/zzcsh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# instance fields
.field private final zzeha:Z

.field private final zzgms:Lcom/google/android/gms/internal/ads/zzcsi;

.field private final zzgmt:Ljava/util/ArrayList;

.field private final zzgmu:Lcom/google/android/gms/internal/ads/zzua$zzm;

.field private final zzgmv:Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsi;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzua$zzm;Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgms:Lcom/google/android/gms/internal/ads/zzcsi;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzeha:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgmt:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgmu:Lcom/google/android/gms/internal/ads/zzua$zzm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgmv:Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgms:Lcom/google/android/gms/internal/ads/zzcsi;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzeha:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgmt:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgmu:Lcom/google/android/gms/internal/ads/zzua$zzm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzgmv:Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgmx:Lcom/google/android/gms/internal/ads/zzcsf;

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcsf;->zza(Lcom/google/android/gms/internal/ads/zzcsf;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzua$zzm;Lcom/google/android/gms/internal/ads/zzua$zzo$zzb;)[B

    move-result-object v0

    .line 5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "serialized_proto_data"

    .line 7
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const-string v3, "offline_signal_contents"

    .line 8
    invoke-virtual {p1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v2, 0x1

    .line 11
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "total_requests"

    aput-object v5, v3, v4

    const-string v5, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'%s\'"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v1, :cond_53

    .line 13
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "failed_requests"

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_53
    return-object v0
.end method
