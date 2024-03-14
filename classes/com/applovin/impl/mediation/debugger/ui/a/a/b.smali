.class public Lcom/applovin/impl/mediation/debugger/ui/a/a/b;
.super Lcom/applovin/impl/mediation/debugger/a/c;


# instance fields
.field private final f:Lcom/applovin/impl/sdk/g$a;

.field private final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/c$b;->d:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/a/c;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;->f:Lcom/applovin/impl/sdk/g$a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;->g:Landroid/content/Context;

    new-instance p2, Landroid/text/SpannedString;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/g$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;->b:Landroid/text/SpannedString;

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()Landroid/text/SpannedString;
    .registers 4

    new-instance v0, Landroid/text/SpannedString;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;->f:Lcom/applovin/impl/sdk/g$a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
