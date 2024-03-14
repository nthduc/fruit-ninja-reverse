.class public Lcom/applovin/impl/mediation/debugger/ui/b/b;
.super Lcom/applovin/impl/mediation/debugger/ui/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/b/b$b;,
        Lcom/applovin/impl/mediation/debugger/ui/b/b$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final d:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final e:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final f:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final g:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final h:Lcom/applovin/impl/mediation/debugger/a/c;

.field private i:Landroid/text/SpannedString;

.field private j:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/a/d;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/a;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "INTEGRATIONS"

    invoke-direct {p2, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->c:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p2, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "PERMISSIONS"

    invoke-direct {p2, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->d:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p2, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "CONFIGURATION"

    invoke-direct {p2, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->e:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p2, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "DEPENDENCIES"

    invoke-direct {p2, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->f:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p2, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "TEST ADS"

    invoke-direct {p2, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->g:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p2, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, ""

    invoke-direct {p2, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->h:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object p2

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne p2, v1, :cond_62

    new-instance p2, Landroid/text/SpannableString;

    const-string v0, "Tap for more information"

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->i:Landroid/text/SpannedString;

    goto :goto_69

    :cond_62
    new-instance p2, Landroid/text/SpannedString;

    invoke-direct {p2, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->i:Landroid/text/SpannedString;

    :goto_69
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->c:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Lcom/applovin/impl/mediation/debugger/a/d;)Lcom/applovin/impl/mediation/debugger/a/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Lcom/applovin/impl/mediation/debugger/a/d;)Lcom/applovin/impl/mediation/debugger/a/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->c(Lcom/applovin/impl/mediation/debugger/a/d;)Lcom/applovin/impl/mediation/debugger/a/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->p()Lcom/applovin/impl/mediation/debugger/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Lcom/applovin/impl/mediation/debugger/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->g:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->c()Lcom/applovin/impl/mediation/debugger/a/d$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Lcom/applovin/impl/mediation/debugger/a/d$b;)Lcom/applovin/impl/mediation/debugger/a/c;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->h:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Z)I
    .registers 2

    if-eqz p1, :cond_5

    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark:I

    goto :goto_7

    :cond_5
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    :goto_7
    return p1
.end method

.method private b(Z)I
    .registers 3

    if-eqz p1, :cond_5

    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    goto :goto_7

    :cond_5
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    :goto_7
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/f;->a(ILandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private b(I)Z
    .registers 3

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq p1, v0, :cond_12

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/a/d$b;)Lcom/applovin/impl/mediation/debugger/a/c;
    .registers 5

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->d:Lcom/applovin/impl/mediation/debugger/a/d$b;

    if-ne p1, v0, :cond_7

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_disclosure_arrow:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->e:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/mediation/debugger/a/c$b;->d:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Lcom/applovin/impl/mediation/debugger/a/c$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    const-string v2, "Test Mode"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d$b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_disclosureButtonColor:I

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/f;->a(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/a/d;)Lcom/applovin/impl/mediation/debugger/a/c;
    .registers 4

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/c$b;->c:Lcom/applovin/impl/mediation/debugger/a/c$b;

    goto :goto_23

    :cond_21
    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/c$b;->d:Lcom/applovin/impl/mediation/debugger/a/c$b;

    :goto_23
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Lcom/applovin/impl/mediation/debugger/a/c$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->d()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    :cond_48
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/a/e;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/mediation/debugger/a/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/e;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->e:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->c:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v2

    const-string v3, "Cleartext Traffic"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v2

    if-eqz v1, :cond_25

    const/4 v3, 0x0

    goto :goto_27

    :cond_25
    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->i:Landroid/text/SpannedString;

    :goto_27
    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/f;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_68

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->d:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/debugger/a/f;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/f;->c()Z

    move-result v2

    sget-object v3, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->b:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    if-eqz v2, :cond_3c

    const/4 v4, 0x0

    goto :goto_3e

    :cond_3c
    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->i:Landroid/text/SpannedString;

    :goto_3e
    invoke-virtual {v3, v4}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_68
    return-object v0
.end method

.method protected a(Lcom/applovin/impl/mediation/debugger/a/c;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->j:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    if-eqz v0, :cond_d

    instance-of v1, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    if-eqz v1, :cond_d

    check-cast p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    invoke-interface {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/a/a;)V

    :cond_d
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/ui/b/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->j:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    return-void
.end method

.method public b(Lcom/applovin/impl/mediation/debugger/a/d;)Lcom/applovin/impl/mediation/debugger/a/c;
    .registers 4

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    const-string v1, "Adapter"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/c$b;->c:Lcom/applovin/impl/mediation/debugger/a/c$b;

    goto :goto_23

    :cond_21
    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/c$b;->d:Lcom/applovin/impl/mediation/debugger/a/c$b;

    :goto_23
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Lcom/applovin/impl/mediation/debugger/a/c$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->e()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    :cond_48
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_68

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->f:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/debugger/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/a;->c()Z

    move-result v2

    sget-object v3, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->d:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    if-eqz v2, :cond_3c

    const/4 v4, 0x0

    goto :goto_3e

    :cond_3c
    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->i:Landroid/text/SpannedString;

    :goto_3e
    invoke-virtual {v3, v4}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_68
    return-object v0
.end method

.method public c(Lcom/applovin/impl/mediation/debugger/a/d;)Lcom/applovin/impl/mediation/debugger/a/c;
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->q()Lcom/applovin/impl/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/h;->b()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    const-string v0, "Initialize with Activity Context"

    const-string v2, "Please ensure that you are initializing the AppLovin MAX SDK with an Activity Context."

    move-object p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_23

    :cond_20
    const-string p1, "Adapter Initialized"

    const/4 v2, 0x0

    :goto_23
    sget-object v3, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-static {v3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedNetworkListAdapter{listItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
