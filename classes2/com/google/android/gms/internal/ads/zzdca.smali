.class public final Lcom/google/android/gms/internal/ads/zzdca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdcb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgvf:Lcom/google/android/gms/internal/ads/zzdgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "Lcom/google/android/gms/internal/ads/zzdha;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddp;Lcom/google/android/gms/internal/ads/zzdok;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzddp<",
            "Lcom/google/android/gms/internal/ads/zzdha;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdok;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzayb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzgvf:Lcom/google/android/gms/internal/ads/zzdgx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzvr:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdha;)Lcom/google/android/gms/internal/ads/zzdcb;
    .registers 18

    move-object/from16 v0, p0

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdca;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 15
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzchu:[Lcom/google/android/gms/internal/ads/zzvn;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 16
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzacy:Ljava/lang/String;

    .line 17
    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzchv:Z

    move-object v10, v1

    move v11, v6

    goto :goto_37

    .line 20
    :cond_12
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzchu:[Lcom/google/android/gms/internal/ads/zzvn;

    array-length v6, v1

    move-object v10, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1a
    if-ge v7, v6, :cond_37

    aget-object v12, v1, v7

    .line 21
    iget-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzvn;->zzchv:Z

    if-nez v13, :cond_28

    if-nez v8, :cond_28

    .line 22
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzvn;->zzacy:Ljava/lang/String;

    move-object v10, v8

    const/4 v8, 0x1

    .line 24
    :cond_28
    iget-boolean v12, v12, Lcom/google/android/gms/internal/ads/zzvn;->zzchv:Z

    if-eqz v12, :cond_30

    if-nez v9, :cond_30

    const/4 v9, 0x1

    const/4 v11, 0x1

    :cond_30
    if-eqz v8, :cond_34

    if-nez v9, :cond_37

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 29
    :cond_37
    :goto_37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdca;->zzvr:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 37
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 40
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdca;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzayr;->zzxq()Ljava/lang/String;

    move-result-object v8

    move v9, v1

    move-object v1, v8

    move v8, v7

    move v7, v2

    goto :goto_5e

    :cond_5a
    move-object v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 43
    :goto_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzchu:[Lcom/google/android/gms/internal/ads/zzvn;

    if-eqz v12, :cond_c8

    .line 46
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzvn;->zzchu:[Lcom/google/android/gms/internal/ads/zzvn;

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6c
    const-string v4, "|"

    if-ge v14, v13, :cond_b5

    aget-object v5, v12, v14

    .line 47
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzvn;->zzchv:Z

    if-eqz v6, :cond_79

    const/4 v6, 0x0

    const/4 v15, 0x1

    goto :goto_b2

    .line 49
    :cond_79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_82

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_82
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_92

    const/4 v4, 0x0

    cmpl-float v6, v7, v4

    if-eqz v6, :cond_92

    .line 53
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzvn;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_94

    .line 54
    :cond_92
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    .line 55
    :goto_94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_ac

    const/4 v6, 0x0

    cmpl-float v4, v7, v6

    if-eqz v4, :cond_ad

    .line 59
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzvn;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_af

    :cond_ac
    const/4 v6, 0x0

    .line 60
    :cond_ad
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    .line 61
    :goto_af
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_b2
    add-int/lit8 v14, v14, 0x1

    goto :goto_6c

    :cond_b5
    if-eqz v15, :cond_c8

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_c2

    const/4 v5, 0x0

    .line 65
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c3

    :cond_c2
    const/4 v5, 0x0

    :goto_c3
    const-string v4, "320x50"

    .line 66
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_c8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    new-instance v12, Lcom/google/android/gms/internal/ads/zzdcb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdca;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzgvi:Z

    move-object v2, v12

    move-object v4, v10

    move v5, v11

    move-object v10, v1

    move v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzdcb;-><init>(Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v12
.end method

.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdcb;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzgvf:Lcom/google/android/gms/internal/ads/zzdgx;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdgx;->zzarj()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>(Lcom/google/android/gms/internal/ads/zzdca;)V

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
