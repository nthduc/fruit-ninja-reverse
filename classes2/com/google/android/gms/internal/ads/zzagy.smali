.class public final Lcom/google/android/gms/internal/ads/zzagy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 11

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    const-string v0, "action"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tick"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v0, "label"

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "start_label"

    .line 7
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "timestamp"

    .line 8
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string p1, "No label given for CSI tick."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string p1, "No timestamp given for CSI tick."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_42
    :try_start_42
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_56} :catch_68

    sub-long/2addr v2, v4

    add-long/2addr v6, v2

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_60

    const-string v1, "native:view_load"

    .line 25
    :cond_60
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzw()Lcom/google/android/gms/internal/ads/zzabp;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzabp;->zzb(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catch_68
    move-exception p1

    const-string p2, "Malformed timestamp for CSI tick."

    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_6f
    const-string v1, "experiment"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    if-eqz v1, :cond_a1

    .line 29
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string p1, "No value given for CSI experiment."

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_8b
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzw()Lcom/google/android/gms/internal/ads/zzabp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object p1

    if-nez p1, :cond_9b

    const-string p1, "No ticker for WebView, dropping experiment ID."

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    :cond_9b
    const-string v0, "e"

    .line 37
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a1
    const-string v1, "extra"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "name"

    .line 41
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c3

    const-string p1, "No value given for CSI extra."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_c3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string p1, "No name given for CSI extra."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_cf
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzw()Lcom/google/android/gms/internal/ads/zzabp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object p1

    if-nez p1, :cond_df

    const-string p1, "No ticker for WebView, dropping extra parameter."

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_df
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    return-void
.end method
