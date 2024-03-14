.class public final Lcom/google/android/gms/internal/ads/zzbdm;
.super Lcom/google/android/gms/internal/ads/zzbde;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbde;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdu;IZLcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzbdv;)Lcom/google/android/gms/internal/ads/zzbdf;
    .registers 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdx;

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v3

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdu;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzt()Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v6

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;)V

    const/4 v1, 0x2

    move/from16 v2, p3

    if-ne v2, v1, :cond_43

    .line 13
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Lcom/google/android/gms/internal/ads/zzbdu;)Z

    move-result v6

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbeb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdx;Lcom/google/android/gms/internal/ads/zzbdu;ZZLcom/google/android/gms/internal/ads/zzbdv;)V

    return-object v8

    .line 16
    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcs;

    .line 17
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Lcom/google/android/gms/internal/ads/zzbdu;)Z

    move-result v12

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbdx;

    .line 18
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v3

    .line 19
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdu;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzt()Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v6

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;)V

    move-object v9, v0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move-object/from16 v13, p6

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzbcs;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbdx;)V

    return-object v0
.end method
