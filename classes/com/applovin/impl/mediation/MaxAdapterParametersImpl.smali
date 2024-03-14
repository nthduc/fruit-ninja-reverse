.class public Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;
.implements Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;
.implements Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/applovin/mediation/MaxAdFormat;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/applovin/impl/mediation/a/a;Landroid/content/Context;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
    .registers 3

    invoke-static {p0, p1}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lcom/applovin/impl/mediation/a/e;Landroid/content/Context;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->d()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->g:Ljava/lang/String;

    return-object p1
.end method

.method static a(Lcom/applovin/impl/mediation/a/e;Landroid/content/Context;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
    .registers 4

    new-instance v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/e;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->b:Z

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/e;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->c:Z

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/e;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->d:Z

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/e;->I()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/e;->G()Z

    move-result p0

    iput-boolean p0, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->e:Z

    return-object v0
.end method

.method static a(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/mediation/MaxAdFormat;Landroid/content/Context;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
    .registers 3

    invoke-static {p0, p2}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lcom/applovin/impl/mediation/a/e;Landroid/content/Context;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    move-result-object p0

    iput-object p1, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->h:Lcom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method


# virtual methods
.method public getAdFormat()Lcom/applovin/mediation/MaxAdFormat;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->h:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public getBidResponse()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public getThirdPartyAdPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserConsent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->b:Z

    return v0
.end method

.method public isAgeRestrictedUser()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->c:Z

    return v0
.end method

.method public isDoNotSell()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->d:Z

    return v0
.end method

.method public isTesting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->e:Z

    return v0
.end method
