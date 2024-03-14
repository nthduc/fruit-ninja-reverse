.class public Lcom/applovin/impl/mediation/debugger/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/a/c$a;,
        Lcom/applovin/impl/mediation/debugger/a/c$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/applovin/impl/mediation/debugger/a/c$b;

.field protected b:Landroid/text/SpannedString;

.field protected c:Landroid/text/SpannedString;

.field protected d:I

.field protected e:I


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/debugger/a/c$a;)V
    .registers 3

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/a/c$a;->a:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/a/c;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/a/c$a;->b:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->b:Landroid/text/SpannedString;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/a/c$a;->c:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->c:Landroid/text/SpannedString;

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/a/c$a;->d:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->d:I

    iget p1, p1, Lcom/applovin/impl/mediation/debugger/a/c$a;->e:I

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/a/c;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/a/c$a;Lcom/applovin/impl/mediation/debugger/a/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/a/c;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->d:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->e:I

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/c;->a:Lcom/applovin/impl/mediation/debugger/a/c$b;

    return-void
.end method

.method public static a()I
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/c$b;->e:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/c$b;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/text/SpannedString;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->b:Landroid/text/SpannedString;

    return-object v0
.end method

.method public d()Landroid/text/SpannedString;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->c:Landroid/text/SpannedString;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->e:I

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->a:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/c$b;->a()I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c;->a:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/c$b;->b()I

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
