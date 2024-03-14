.class public Lcom/applovin/impl/mediation/debugger/ui/b/a/a;
.super Lcom/applovin/impl/mediation/debugger/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    }
.end annotation


# instance fields
.field final f:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:Z


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;)V
    .registers 3

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->g:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/a/c;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->f:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->b:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->b:Landroid/text/SpannedString;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->c:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->c:Landroid/text/SpannedString;

    iget-object v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->g:Ljava/lang/String;

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->e:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->d:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->f:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->e:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->h:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->h:I

    iget v0, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->i:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->i:I

    iget-boolean p1, p1, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;->j:Z

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;Lcom/applovin/impl/mediation/debugger/ui/b/a/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;)V

    return-void
.end method

.method public static a(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;
    .registers 2

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a$a;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/b$b;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->j:Z

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->h:I

    return v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->i:I

    return v0
.end method

.method public m()Lcom/applovin/impl/mediation/debugger/ui/b/b$b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->f:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkDetailListItemViewModel{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->b:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->b:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
