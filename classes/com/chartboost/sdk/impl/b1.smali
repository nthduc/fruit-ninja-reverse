.class public Lcom/chartboost/sdk/impl/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/v0;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/v0;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b1;->a:Lcom/chartboost/sdk/impl/v0;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/b1;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)I
    .registers 2

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getConsent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method private d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b1;->a:Lcom/chartboost/sdk/impl/v0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v0;->a()Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/b1;->a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)I

    move-result v0

    goto :goto_11

    .line 5
    :cond_d
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->e()I

    move-result v0

    :goto_11
    return v0
.end method

.method private e()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->i()Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    move-result-object v0

    goto :goto_f

    .line 4
    :cond_b
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->h()Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    move-result-object v0

    .line 6
    :goto_f
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->getValue()I

    move-result v0

    return v0
.end method

.method private f()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b1;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const-string v2, "cbGDPR"

    .line 2
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_d
    return v1
.end method

.method private g()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b1;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    const-string v1, "cbLimitTrack"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private h()Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b1;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_14

    .line 5
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->getValue()I

    move-result v0

    const-string v2, "cbGDPR"

    .line 6
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->valueOf(I)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method private i()Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b1;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    const-string v2, "cbLimitTrack"

    .line 5
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    goto :goto_14

    :cond_12
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    :cond_14
    :goto_14
    return-object v0
.end method

.method private j()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/b1;->d()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/chartboost/sdk/impl/t0;->a(I)V

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/impl/t0;->a()I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/impl/t0;->b()I

    move-result v0

    return v0
.end method
