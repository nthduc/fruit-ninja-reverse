.class public final enum Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLAPSED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

.field public static final enum EXPANDED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

.field public static final enum FULLSCREEN:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

.field public static final enum MINIMIZED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

.field public static final enum NORMAL:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

.field private static final synthetic b:[Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    const/4 v1, 0x0

    const-string v2, "MINIMIZED"

    const-string v3, "minimized"

    invoke-direct {v0, v2, v1, v3}, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->MINIMIZED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    const/4 v2, 0x1

    const-string v3, "COLLAPSED"

    const-string v4, "collapsed"

    invoke-direct {v0, v3, v2, v4}, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->COLLAPSED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    const-string v5, "normal"

    invoke-direct {v0, v4, v3, v5}, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    const/4 v4, 0x3

    const-string v5, "EXPANDED"

    const-string v6, "expanded"

    invoke-direct {v0, v5, v4, v6}, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->EXPANDED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    const/4 v5, 0x4

    const-string v6, "FULLSCREEN"

    const-string v7, "fullscreen"

    invoke-direct {v0, v6, v5, v7}, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    sget-object v7, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->MINIMIZED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    aput-object v7, v6, v1

    sget-object v1, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->COLLAPSED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    aput-object v1, v6, v2

    sget-object v1, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    aput-object v1, v6, v3

    sget-object v1, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->EXPANDED:Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->b:[Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;
    .registers 2

    const-class v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->b:[Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    invoke-virtual {v0}, [Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/media/PlayerState;->a:Ljava/lang/String;

    return-object v0
.end method
