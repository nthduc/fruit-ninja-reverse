.class public final Lcom/google/android/gms/internal/ads/zzdbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the targeting must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 15

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    const-string v2, "slotname"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdbs;->zzgfd:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfh:Lcom/google/android/gms/internal/ads/zzdob;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdob;->zzheo:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v3, :cond_27

    if-eq v1, v2, :cond_21

    goto :goto_2c

    :cond_21
    const-string v1, "is_rewarded_interstitial"

    .line 11
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2c

    :cond_27
    const-string v1, "is_new_rewarded"

    .line 9
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :goto_2c
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyyMMdd"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 13
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_4b

    const/4 v4, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v4, 0x0

    :goto_4c
    const-string v5, "cust_age"

    .line 14
    invoke-static {p1, v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    const-string v4, "extras"

    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_65

    const/4 v4, 0x1

    goto :goto_66

    :cond_65
    const/4 v4, 0x0

    :goto_66
    const-string v6, "cust_gender"

    .line 18
    invoke-static {p1, v6, v1, v4}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const-string v4, "kw"

    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 20
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    if-eq v4, v5, :cond_7e

    const/4 v4, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v4, 0x0

    :goto_7f
    const-string v6, "tag_for_child_directed_treatment"

    .line 22
    invoke-static {p1, v6, v1, v4}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 23
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    if-eqz v1, :cond_8f

    .line 24
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    const-string v4, "test_request"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    :cond_8f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    if-lt v4, v2, :cond_9d

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    if-eqz v4, :cond_9d

    const/4 v4, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v4, 0x0

    :goto_9e
    const-string v6, "d_imp_hdr"

    .line 27
    invoke-static {p1, v6, v1, v4}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    if-lt v4, v2, :cond_b3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b3

    const/4 v2, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v2, 0x0

    :goto_b4
    const-string v4, "ppid"

    .line 30
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    if-eqz v1, :cond_120

    .line 32
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 33
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long v6, v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 35
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v9, 0x416312d000000000L    # 1.0E7

    mul-double v6, v6, v9

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 36
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-long v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 37
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v9, "radius"

    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 39
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v2, "lat"

    invoke-virtual {v7, v2, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v6, "long"

    invoke-virtual {v7, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v4, "time"

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "uule"

    .line 42
    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    :cond_120
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    const-string v2, "neighboring_content_urls"

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 45
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    const-string v2, "custom_targeting"

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    const-string v2, "category_exclusions"

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    const-string v2, "request_agent"

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    const-string v2, "request_pkg"

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_157

    const/4 v2, 0x1

    goto :goto_158

    :cond_157
    const/4 v2, 0x0

    :goto_158
    const-string v4, "is_designed_for_families"

    .line 51
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 52
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_17b

    .line 53
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    if-eq v2, v5, :cond_16e

    goto :goto_16f

    :cond_16e
    const/4 v3, 0x0

    :goto_16f
    const-string v2, "tag_for_under_age_of_consent"

    .line 55
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 56
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    const-string v1, "max_ad_content_rating"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdot;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17b
    return-void
.end method
