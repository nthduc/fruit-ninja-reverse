.class abstract Lcom/moat/analytics/mobile/vng/h;
.super Lcom/moat/analytics/mobile/vng/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/h$a;
    }
.end annotation


# instance fields
.field l:I

.field private m:Lcom/moat/analytics/mobile/vng/h$a;

.field private n:I

.field private o:D

.field private p:I

.field private q:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/c;-><init>(Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/moat/analytics/mobile/vng/h;->p:I

    iput p1, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    iput p1, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    sget-object p1, Lcom/moat/analytics/mobile/vng/h$a;->a:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    return-void
.end method

.method private t()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/h$1;-><init>(Lcom/moat/analytics/mobile/vng/h;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/h;->i:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    goto :goto_1a

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->o()Ljava/lang/Integer;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    iget v0, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_18
    iput-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    :goto_1a
    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_34

    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->d:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    if-ne v1, v2, :cond_3c

    iget v1, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    if-lez v1, :cond_3c

    :cond_34
    iget v0, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    :cond_3c
    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->d:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    if-ne v1, v2, :cond_66

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_5e

    iget v1, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    if-eq v1, v2, :cond_5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/vng/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5e

    :cond_59
    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->e:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    goto :goto_66

    :cond_5e
    :goto_5e
    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->d:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->d:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    :cond_66
    :goto_66
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/vng/c;->a(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/c;->a(Ljava/util/Map;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->p()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/h;->t()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1f

    :catch_10
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "IntervalVideoTracker"

    const-string v1, "Problem with video loop"

    invoke-static {p2, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackVideoAd"

    invoke-virtual {p0, p2, p1}, Lcom/moat/analytics/mobile/vng/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :cond_1f
    :goto_1f
    return p1
.end method

.method abstract n()Z
.end method

.method abstract o()Ljava/lang/Integer;
.end method

.method protected p()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method abstract q()Z
.end method

.method abstract r()Ljava/lang/Integer;
.end method

.method s()Z
    .registers 13
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_e1

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    if-ltz v3, :cond_1f

    if-gez v2, :cond_1f

    return v1

    :cond_1f
    iput v2, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    if-nez v2, :cond_24

    return v0

    :cond_24
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->q()Z

    move-result v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_d4

    int-to-double v5, v3

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    :try_start_37
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->j()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x0

    iget v10, p0, Lcom/moat/analytics/mobile/vng/h;->p:I

    if-le v2, v10, :cond_46

    iput v2, p0, Lcom/moat/analytics/mobile/vng/h;->p:I

    :cond_46
    iget v10, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4e

    iput v3, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    :cond_4e
    if-eqz v4, :cond_90

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v4, Lcom/moat/analytics/mobile/vng/h$a;->a:Lcom/moat/analytics/mobile/vng/h$a;

    if-ne v3, v4, :cond_5d

    sget-object v9, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v3, Lcom/moat/analytics/mobile/vng/h$a;->c:Lcom/moat/analytics/mobile/vng/h$a;

    :goto_5a
    iput-object v3, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    goto :goto_9b

    :cond_5d
    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v4, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    if-ne v3, v4, :cond_68

    sget-object v9, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v3, Lcom/moat/analytics/mobile/vng/h$a;->c:Lcom/moat/analytics/mobile/vng/h$a;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_67} :catch_d4

    goto :goto_5a

    :cond_68
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    :try_start_6d
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v3, v0

    const/4 v4, -0x1

    if-le v3, v4, :cond_9b

    const/4 v4, 0x3

    if-ge v3, v4, :cond_9b

    sget-object v4, Lcom/moat/analytics/mobile/vng/h;->g:[Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    aget-object v3, v4, v3

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/h;->h:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/h;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    goto :goto_9b

    :cond_90
    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v4, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    if-eq v3, v4, :cond_9b

    sget-object v9, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v3, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    goto :goto_5a

    :cond_9b
    :goto_9b
    if-eqz v9, :cond_9f

    const/4 v3, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v3, 0x0

    :goto_a0
    if-nez v3, :cond_bd

    iget-wide v4, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_bd

    iget-wide v4, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    sub-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v6, v4, v10

    if-lez v6, :cond_bd

    sget-object v9, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    const/4 v3, 0x1

    :cond_bd
    if-eqz v3, :cond_cf

    new-instance v3, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->k()Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v9, v2, v4}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v3}, Lcom/moat/analytics/mobile/vng/h;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    :cond_cf
    iput-wide v7, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    iput v1, p0, Lcom/moat/analytics/mobile/vng/h;->q:I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_d3} :catch_d4

    return v0

    :catch_d4
    nop

    iget v2, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_df

    goto :goto_e0

    :cond_df
    const/4 v0, 0x0

    :goto_e0
    return v0

    :cond_e1
    :goto_e1
    return v1
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/vng/c;->setPlayerVolume(Ljava/lang/Double;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->j()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    return-void
.end method

.method public stopTracking()V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/vng/h;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/vng/c;->stopTracking()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method
