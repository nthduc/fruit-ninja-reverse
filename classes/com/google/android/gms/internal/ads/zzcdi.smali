.class public final Lcom/google/android/gms/internal/ads/zzcdi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzceq;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzeom:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

.field private final zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzfxs:Lorg/json/JSONObject;

.field private final zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

.field private final zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

.field private final zzfxv:Lcom/google/android/gms/internal/ads/zzbuu;

.field private final zzfxw:Lcom/google/android/gms/internal/ads/zzbuc;

.field private final zzfxx:Lcom/google/android/gms/internal/ads/zzbmu;

.field private final zzfxy:Lcom/google/android/gms/internal/ads/zzcfh;

.field private final zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

.field private zzfya:Z

.field private zzfyb:Z

.field private zzfyc:Z

.field private zzfyd:Z

.field private zzfye:Landroid/graphics/Point;

.field private zzfyf:Landroid/graphics/Point;

.field private zzfyg:J

.field private zzfyh:J

.field private zzfyi:Lcom/google/android/gms/internal/ads/zzxz;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcep;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbuc;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzbmu;Lcom/google/android/gms/internal/ads/zzcfh;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcae;Lcom/google/android/gms/internal/ads/zzdst;)V
    .registers 20

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfya:Z

    .line 3
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyc:Z

    .line 4
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyd:Z

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    .line 6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyf:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyg:J

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyh:J

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxv:Lcom/google/android/gms/internal/ads/zzbuu;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxw:Lcom/google/android/gms/internal/ads/zzbuc;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxx:Lcom/google/android/gms/internal/ads/zzbmu;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxy:Lcom/google/android/gms/internal/ads/zzcfh;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcdi;)Lcom/google/android/gms/internal/ads/zzbuu;
    .registers 1

    .line 322
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxv:Lcom/google/android/gms/internal/ads/zzbuu;

    return-object p0
.end method

.method private final zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .registers 15
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    .line 121
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 122
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    .line 123
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    .line 124
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 125
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 126
    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 127
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 128
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 130
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcei;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcep;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_3e

    const/4 p2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p2, 0x0

    .line 131
    :goto_3f
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    .line 132
    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    .line 134
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    .line 135
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    .line 136
    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    .line 138
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzdok;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    if-eqz p6, :cond_73

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzdok;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzadu;->zzbns:Z

    if-eqz p6, :cond_73

    const/4 p6, 0x1

    goto :goto_74

    :cond_73
    const/4 p6, 0x0

    .line 139
    :goto_74
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    .line 141
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzcei;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_8f

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 142
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzcei;->zzamd()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p6

    if-eqz p6, :cond_8f

    const/4 p6, 0x1

    goto :goto_90

    :cond_8f
    const/4 p6, 0x0

    .line 143
    :goto_90
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxy:Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcfh;->zzanj()Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object p5

    if-eqz p5, :cond_aa

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    .line 146
    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_aa

    const-string p5, "custom_one_point_five_click_eligible"

    .line 147
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_aa
    const-string p5, "timestamp"

    .line 148
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyd:Z

    if-eqz p5, :cond_c4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzalo()Z

    move-result p5

    if-eqz p5, :cond_c4

    const-string p5, "custom_click_gesture_eligible"

    .line 151
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_c4
    if-eqz p10, :cond_cb

    const-string p5, "is_custom_click_gesture"

    .line 153
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 154
    :cond_cb
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 155
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzcei;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/ads/zzcep;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object p5

    if-eqz p5, :cond_da

    const/4 p3, 0x1

    .line 156
    :cond_da
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzx(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "click"

    .line 158
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    .line 161
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyg:J

    sub-long p5, p2, p5

    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    .line 162
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyh:J

    sub-long/2addr p2, p5

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 163
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 165
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcil;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 166
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_119} :catch_11a

    return-void

    :catch_11a
    move-exception p1

    const-string p2, "Unable to create click JSON."

    .line 169
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .registers 11
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "recordImpression must be called on the main UI thread."

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 274
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 275
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 276
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 277
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 278
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 279
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 280
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcro:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 282
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 283
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_41

    const-string p1, "view_signals"

    .line 284
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    const-string p1, "policy_validator_enabled"

    .line 285
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    .line 286
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    .line 287
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbau;->zzbm(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 288
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    const-string p2, "/logScionEvent"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdk;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzcdk;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;Lcom/google/android/gms/internal/ads/zzcdh;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 290
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    const-string p2, "/nativeImpression"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-direct {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;Lcom/google/android/gms/internal/ads/zzcdh;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 291
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 292
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 293
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_77} :catch_a2

    .line 298
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfya:Z

    if-nez p1, :cond_a0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdw:Lorg/json/JSONObject;

    if-eqz p1, :cond_a0

    .line 299
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfya:Z

    .line 300
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdw:Lorg/json/JSONObject;

    .line 301
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    .line 302
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzazu;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfya:Z

    :cond_a0
    const/4 p1, 0x1

    return p1

    :catch_a2
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    .line 296
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final zzalo()Z
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcdi;)Lcom/google/android/gms/internal/ads/zzbuc;
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxw:Lcom/google/android/gms/internal/ads/zzbuc;

    return-object p0
.end method

.method private final zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 82
    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcei;->zzama()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_49

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_48

    const/4 p2, 0x6

    if-eq p1, p2, :cond_45

    return-object v0

    :cond_45
    const-string p1, "3099"

    return-object p1

    :cond_48
    return-object v0

    :cond_49
    const-string p1, "2099"

    return-object p1

    :cond_4c
    const-string p1, "1099"

    return-object p1
.end method

.method private final zzfy(Ljava/lang/String;)Z
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 61
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v1
.end method

.method private final zzx(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string v1, "tracking_urls_and_actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    .line 306
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_f
    const-string v1, "click_string"

    .line 307
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzca()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdw;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    const-string v0, "Exception obtaining click signals"

    .line 310
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzy(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    .line 312
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcro:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 313
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 316
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzca()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdw;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    const-string p1, "Exception getting data."

    .line 318
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxy:Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfh;->cancelUnconfirmedClick()V

    return-void
.end method

.method public final destroy()V
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcil;->destroy()V

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 2

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzalo()Z

    move-result v0

    return v0
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxy:Lcom/google/android/gms/internal/ads/zzcfh;

    if-eqz p1, :cond_23

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 216
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbt:Ljava/lang/ref/WeakReference;

    :cond_23
    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    .line 194
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    .line 195
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 198
    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "asset_view_signal"

    .line 199
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 200
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 201
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 202
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_2f} :catch_30

    return-object v1

    :catch_30
    move-exception p1

    const-string p2, "Unable to create native ad view signals JSON."

    .line 205
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    .line 172
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyh:J

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1a

    .line 175
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyg:J

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyf:Landroid/graphics/Point;

    .line 177
    :cond_1a
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 179
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/view/MotionEvent;)V

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 18
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    .line 62
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    move-object/from16 v3, p4

    .line 63
    invoke-static {v2, p3, v3, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbau;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 66
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzcdi;->zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 68
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyf:Landroid/graphics/Point;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    .line 69
    invoke-static {v7, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v8

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcrp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3e

    move-object v1, v0

    goto :goto_3f

    :cond_3e
    move-object v1, v6

    :goto_3f
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    .line 74
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .registers 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 55
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    .line 56
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyf:Landroid/graphics/Point;

    .line 57
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcae;->zzw(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyb:Z

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyf:Landroid/graphics/Point;

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyb:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcae;->zzv(Landroid/view/View;)V

    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyb:Z

    .line 31
    :cond_1a
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 33
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxx:Lcom/google/android/gms/internal/ads/zzbmu;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzo(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzdi(I)Z

    move-result p1

    if-eqz p2, :cond_60

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3a
    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_59

    .line 42
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    :cond_59
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3a

    :cond_60
    if-eqz p3, :cond_8e

    .line 47
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6a
    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_6a

    if-eqz p1, :cond_89

    .line 51
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_89
    const/4 p5, 0x0

    .line 52
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_6a

    :cond_8e
    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 17
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v1, p1

    move-object v0, p2

    .line 101
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyd:Z

    if-nez v2, :cond_d

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzalo()Z

    move-result v2

    if-nez v2, :cond_19

    const-string v0, "Custom click reporting failed. Ad unit id not whitelisted."

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_19
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    move-object v3, p3

    .line 108
    invoke-static {v2, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 111
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    .line 112
    invoke-direct {p0, v6, p2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 113
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyf:Landroid/graphics/Point;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzcdi;->zzfye:Landroid/graphics/Point;

    .line 114
    invoke-static {v6, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p4

    .line 115
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafz;)V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxy:Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfh;->zza(Lcom/google/android/gms/internal/ads/zzafz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxz;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyi:Lcom/google/android/gms/internal/ads/zzxz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyd;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzyd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 227
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyc:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-nez p1, :cond_25

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzamd()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 230
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyc:Z

    .line 231
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamd()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzk;->zzqk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzes(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzalq()V

    return-void

    .line 234
    :cond_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyc:Z

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyd;->zzqk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdst;->zzes(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzalq()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 239
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzalp()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 207
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final zzalq()V
    .registers 3

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyi:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyi:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxz;->onAdMuted()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 247
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzalr()V
    .registers 4

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    .line 258
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 259
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 260
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfxt:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 262
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 263
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    const-string v1, ""

    .line 266
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    .line 250
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 251
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 252
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 253
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzvr:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 254
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzy(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 255
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Lcom/google/android/gms/internal/ads/zzdnv;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    .line 256
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final zzfz(Ljava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 88
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .registers 15
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_8

    const-string p1, "Click data is null. No click is reported."

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "click_reporting"

    .line 93
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzfy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events."

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "click_signal"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const-string v2, "asset_id"

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_28

    :cond_27
    move-object v8, v1

    .line 98
    :goto_28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 99
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_8

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 183
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "touch_reporting"

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzfy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events."

    .line 186
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "x"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 190
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 191
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzca()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdw;->zza(III)V

    return-void
.end method

.method public final zzi(Landroid/os/Bundle;)Z
    .registers 12

    const-string v0, "impression_reporting"

    .line 268
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzfy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p1, "The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events."

    .line 269
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 271
    :cond_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 272
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzcdi;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public final zzsv()V
    .registers 2

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzfyd:Z

    return-void
.end method
