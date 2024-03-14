.class public final Lcom/google/android/gms/internal/ads/zzcsy;
.super Lcom/google/android/gms/internal/ads/zzaqs;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

.field private final zzgnp:Lcom/google/android/gms/internal/ads/zzbbu;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcsp;Lcom/google/android/gms/internal/ads/zzbbu;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgnp:Lcom/google/android/gms/internal/ads/zzbbu;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "offline_notification_action"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline_notification_clicked"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "offline_notification_dismissed"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    :cond_17
    const-string v2, "gws_query_id"

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    .line 11
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzvr:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayu;->zzbf(Landroid/content/Context;)Z

    move-result v3

    .line 13
    sget v4, Lcom/google/android/gms/internal/ads/zzcsq;->zzgnh:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    if-eqz v3, :cond_38

    .line 16
    sget v4, Lcom/google/android/gms/internal/ads/zzcsq;->zzgng:I

    .line 17
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzvr:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_52

    .line 20
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_52
    const/high16 p1, 0x10000000

    .line 22
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    :cond_5a
    :try_start_5a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcsp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_60} :catch_81

    .line 28
    sget v0, Lcom/google/android/gms/internal/ads/zzcsq;->zzgng:I

    if-ne v4, v0, :cond_6c

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgnp:Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsp;->zza(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzbbu;Ljava/lang/String;)V

    return-void

    :cond_6c
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "gws_query_id = ? AND event_state = ?"

    const-string v2, "offline_buffered_pings"

    .line 33
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_81
    move-exception p1

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to get writable offline buffering database: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void
.end method
