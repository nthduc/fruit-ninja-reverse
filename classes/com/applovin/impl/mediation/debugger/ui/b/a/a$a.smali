.class public Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/ui/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

.field b:Landroid/text/SpannedString;

.field c:Landroid/text/SpannedString;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Lcom/applovin/impl/mediation/debugger/a/c$b;

.field h:I

.field i:I

.field j:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->e:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->f:I

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    sget-object p1, Lcom/applovin/impl/mediation/debugger/a/c$b;->c:Lcom/applovin/impl/mediation/debugger/a/c$b;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->g:Lcom/applovin/impl/mediation/debugger/a/c$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->j:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->f:I

    return-object p0
.end method

.method public a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c:Landroid/text/SpannedString;

    return-object p0
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/a/c$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->g:Lcom/applovin/impl/mediation/debugger/a/c$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 3

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b:Landroid/text/SpannedString;

    return-object p0
.end method

.method public a(Z)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->j:Z

    return-object p0
.end method

.method public a()Lcom/applovin/impl/mediation/debugger/ui/b/a/a;
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;Lcom/applovin/impl/mediation/debugger/ui/b/a/a$1;)V

    return-object v0
.end method

.method public b(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->h:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 3

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->i:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->d:Ljava/lang/String;

    return-object p0
.end method
