.class public final Lcom/google/android/gms/internal/ads/zzcsp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzglx:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdzb;)V
    .registers 6

    const-string v0, "OfflineBufferedPings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcsp;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE IF EXISTS offline_buffered_pings"

    .line 6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method final zza(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzbbu;Ljava/lang/String;)V
    .registers 6

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsr;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzcsr;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcsv;)V
    .registers 4

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsu;-><init>(Lcom/google/android/gms/internal/ads/zzcsv;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcss;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcss;-><init>(Lcom/google/android/gms/internal/ads/zzcsp;)V

    .line 14
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzcst;-><init>(Lcom/google/android/gms/internal/ads/zzcsp;Lcom/google/android/gms/internal/ads/zzdrp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method
