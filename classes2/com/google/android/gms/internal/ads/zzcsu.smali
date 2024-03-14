.class final synthetic Lcom/google/android/gms/internal/ads/zzcsu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# instance fields
.field private final zzgnm:Lcom/google/android/gms/internal/ads/zzcsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsu;->zzgnm:Lcom/google/android/gms/internal/ads/zzcsv;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsu;->zzgnm:Lcom/google/android/gms/internal/ads/zzcsv;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzcsv;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcsv;->zzdtb:Ljava/lang/String;

    const-string v3, "gws_query_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcsv;->url:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgnn:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "event_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    const-string v2, "offline_buffered_pings"

    .line 7
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-object v0
.end method
