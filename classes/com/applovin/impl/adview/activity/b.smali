.class public Lcom/applovin/impl/adview/activity/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/adview/AppLovinFullscreenActivity;

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/applovin/adview/AppLovinFullscreenActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b;->a:Lcom/applovin/adview/AppLovinFullscreenActivity;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b;->c:I

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/adview/activity/b;->d:Z

    iget p1, p0, Lcom/applovin/impl/adview/activity/b;->c:I

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b;->d:Z

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/activity/b;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/adview/activity/b;->b:I

    return-void
.end method

.method private a(IZ)I
    .registers 9

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_16

    if-nez p1, :cond_d

    return v4

    :cond_d
    if-ne p1, v5, :cond_10

    return v2

    :cond_10
    if-ne p1, v3, :cond_13

    return v0

    :cond_13
    if-ne p1, v1, :cond_22

    return v5

    :cond_16
    if-nez p1, :cond_19

    return v5

    :cond_19
    if-ne p1, v5, :cond_1c

    return v4

    :cond_1c
    if-ne p1, v3, :cond_1f

    return v2

    :cond_1f
    if-ne p1, v1, :cond_22

    return v0

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method private a(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b;->a:Lcom/applovin/adview/AppLovinFullscreenActivity;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinFullscreenActivity;->setRequestedOrientation(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/g$b;IZ)V
    .registers 8

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$b;->b:Lcom/applovin/impl/sdk/ad/g$b;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_22

    const/16 p1, 0x9

    if-eqz p3, :cond_16

    if-eq p2, v3, :cond_10

    if-eq p2, v1, :cond_10

    goto :goto_1a

    :cond_10
    if-ne p2, v3, :cond_1a

    :cond_12
    :goto_12
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b;->a(I)V

    goto :goto_40

    :cond_16
    if-eqz p2, :cond_1e

    if-eq p2, v2, :cond_1e

    :cond_1a
    :goto_1a
    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/activity/b;->a(I)V

    goto :goto_40

    :cond_1e
    if-nez p2, :cond_12

    const/4 p1, 0x1

    goto :goto_12

    :cond_22
    sget-object v0, Lcom/applovin/impl/sdk/ad/g$b;->c:Lcom/applovin/impl/sdk/ad/g$b;

    if-ne p1, v0, :cond_40

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_35

    if-eqz p2, :cond_30

    if-eq p2, v2, :cond_30

    goto :goto_39

    :cond_30
    if-ne p2, v2, :cond_33

    goto :goto_12

    :cond_33
    :goto_33
    const/4 p1, 0x0

    goto :goto_12

    :cond_35
    if-eq p2, v3, :cond_3d

    if-eq p2, v1, :cond_3d

    :goto_39
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b;->a(I)V

    goto :goto_40

    :cond_3d
    if-ne p2, v3, :cond_12

    goto :goto_33

    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 4

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/applovin/impl/adview/activity/b;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b;->a(I)V

    goto :goto_1a

    :cond_f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->o()Lcom/applovin/impl/sdk/ad/g$b;

    move-result-object p1

    iget v0, p0, Lcom/applovin/impl/adview/activity/b;->c:I

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b;->d:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/adview/activity/b;->a(Lcom/applovin/impl/sdk/ad/g$b;IZ)V

    :goto_1a
    return-void
.end method
