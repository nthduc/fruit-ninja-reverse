.class final Lcom/google/android/gms/internal/ads/zzbfr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic zzecs:Ljava/lang/String;

.field private final synthetic zzeln:Ljava/lang/String;

.field private final synthetic zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

.field private final synthetic zzelx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzecs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzeln:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzelx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbfr;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheCanceled"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzecs:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzeln:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzeln:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzelx:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzelx:Ljava/lang/String;

    const-string v2, "reason"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->val$message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->val$message:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
