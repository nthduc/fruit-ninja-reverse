.class public Lcom/moat/analytics/mobile/vng/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Long;

.field private static final b:Lcom/moat/analytics/mobile/vng/l;


# instance fields
.field private c:Landroid/media/AudioManager;

.field private d:D

.field private e:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/vng/l;->a:Ljava/lang/Long;

    new-instance v0, Lcom/moat/analytics/mobile/vng/l;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/l;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/l;->b:Lcom/moat/analytics/mobile/vng/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/l;->d:D

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/l;->c()V

    return-void
.end method

.method public static a()Lcom/moat/analytics/mobile/vng/l;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/l;->b:Lcom/moat/analytics/mobile/vng/l;

    return-object v0
.end method

.method private c()V
    .registers 3

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/l;->c:Landroid/media/AudioManager;

    :cond_10
    return-void
.end method

.method private d()Landroid/media/AudioManager;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/l;->c:Landroid/media/AudioManager;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/l;->c()V

    :cond_7
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/l;->c:Landroid/media/AudioManager;

    return-object v0
.end method

.method private e()V
    .registers 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/l;->e:Ljava/lang/Long;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/l;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Lcom/moat/analytics/mobile/vng/l;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_46

    :cond_21
    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/l;->e:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/l;->d()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_3e

    int-to-double v1, v2

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_3b
    iput-wide v1, p0, Lcom/moat/analytics/mobile/vng/l;->d:D
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/l;->d:D

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method b()D
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/l;->e()V

    iget-wide v0, p0, Lcom/moat/analytics/mobile/vng/l;->d:D
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-wide v0

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
