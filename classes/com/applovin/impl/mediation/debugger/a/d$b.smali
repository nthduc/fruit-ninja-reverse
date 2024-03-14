.class public final enum Lcom/applovin/impl/mediation/debugger/a/d$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/mediation/debugger/a/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/mediation/debugger/a/d$b;

.field public static final enum b:Lcom/applovin/impl/mediation/debugger/a/d$b;

.field public static final enum c:Lcom/applovin/impl/mediation/debugger/a/d$b;

.field public static final enum d:Lcom/applovin/impl/mediation/debugger/a/d$b;

.field private static final synthetic h:[Lcom/applovin/impl/mediation/debugger/a/d$b;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/applovin/impl/mediation/debugger/a/d$b;

    const-string v1, "INVALID_INTEGRATION"

    const/4 v2, 0x0

    const-string v3, "Invalid Integration"

    const/high16 v4, -0x10000

    const-string v5, "Please address all the integration issue(s) marked in red above."

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/debugger/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/applovin/impl/mediation/debugger/a/d$b;->a:Lcom/applovin/impl/mediation/debugger/a/d$b;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/a/d$b;

    const-string v8, "NOT_INITIALIZED"

    const/4 v9, 0x1

    const-string v10, "Not Initialized"

    const/high16 v11, -0x10000

    const-string v12, "Please configure this network in your MAX dashboard."

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/applovin/impl/mediation/debugger/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->b:Lcom/applovin/impl/mediation/debugger/a/d$b;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/a/d$b;

    const-string v2, "DISABLED"

    const/4 v3, 0x2

    const-string v4, "Enable"

    const v5, -0xffff01

    const-string v6, "Please re-launch the app to enable test ads."

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/mediation/debugger/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->c:Lcom/applovin/impl/mediation/debugger/a/d$b;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/a/d$b;

    const-string v8, "READY"

    const/4 v9, 0x3

    const-string v10, ""

    const v11, -0xffff01

    const-string v12, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/applovin/impl/mediation/debugger/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->d:Lcom/applovin/impl/mediation/debugger/a/d$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/applovin/impl/mediation/debugger/a/d$b;

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$b;->a:Lcom/applovin/impl/mediation/debugger/a/d$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$b;->b:Lcom/applovin/impl/mediation/debugger/a/d$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$b;->c:Lcom/applovin/impl/mediation/debugger/a/d$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$b;->d:Lcom/applovin/impl/mediation/debugger/a/d$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->h:[Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/a/d$b;->e:Ljava/lang/String;

    iput p4, p0, Lcom/applovin/impl/mediation/debugger/a/d$b;->f:I

    iput-object p5, p0, Lcom/applovin/impl/mediation/debugger/a/d$b;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/a/d$b;
    .registers 2

    const-class v0, Lcom/applovin/impl/mediation/debugger/a/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/mediation/debugger/a/d$b;
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/d$b;->h:[Lcom/applovin/impl/mediation/debugger/a/d$b;

    invoke-virtual {v0}, [Lcom/applovin/impl/mediation/debugger/a/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/mediation/debugger/a/d$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/a/d$b;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/d$b;->g:Ljava/lang/String;

    return-object v0
.end method
