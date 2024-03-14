.class public Lcom/applovin/impl/mediation/debugger/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/applovin/impl/mediation/debugger/a/c$b;

.field b:Landroid/text/SpannedString;

.field c:Landroid/text/SpannedString;

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/a/c$a;->d:I

    iput v0, p0, Lcom/applovin/impl/mediation/debugger/a/c$a;->e:I

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/c$a;->a:Lcom/applovin/impl/mediation/debugger/a/c$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/a/c$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/c$a;->c:Landroid/text/SpannedString;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/a/c$a;
    .registers 3

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/c$a;->b:Landroid/text/SpannedString;

    return-object p0
.end method

.method public a()Lcom/applovin/impl/mediation/debugger/a/c;
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/debugger/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/debugger/a/c;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$a;Lcom/applovin/impl/mediation/debugger/a/c$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/a/c$a;
    .registers 3

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/a/c$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/a/c$a;

    move-result-object p1

    return-object p1
.end method
