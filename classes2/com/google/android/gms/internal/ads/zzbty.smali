.class public final Lcom/google/android/gms/internal/ads/zzbty;
.super Lcom/google/android/gms/internal/ads/zzym;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzadu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzful:Ljava/lang/String;

.field private final zzfum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzctd;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzym;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    move-object v1, v0

    goto :goto_a

    .line 2
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzfum:Ljava/lang/String;

    :goto_a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbty;->zzfum:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    if-eqz v1, :cond_27

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbty;->zzc(Lcom/google/android/gms/internal/ads/zzdnv;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_27
    move-object p1, v0

    :goto_28
    if-nez p1, :cond_2b

    move-object p1, p2

    .line 7
    :cond_2b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbty;->zzful:Ljava/lang/String;

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzctd;->getAdapterResponses()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbty;->zzadu:Ljava/util/List;

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzdnv;)Ljava/lang/String;
    .registers 2

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    const-string v0, "class_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getAdapterResponses()Ljava/util/List;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvr;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcyp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbty;->zzadu:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbty;->zzful:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseId()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbty;->zzfum:Ljava/lang/String;

    return-object v0
.end method
