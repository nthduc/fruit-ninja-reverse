.class public final enum Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

.field public static final enum INVITATION_ACCEPTED:Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

.field private static final synthetic b:[Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    const-string v3, "click"

    invoke-direct {v0, v2, v1, v3}, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    const/4 v2, 0x1

    const-string v3, "INVITATION_ACCEPTED"

    const-string v4, "invitationAccept"

    invoke-direct {v0, v3, v2, v4}, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->INVITATION_ACCEPTED:Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    sget-object v4, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->b:[Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

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

    iput-object p3, p0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;
    .registers 2

    const-class v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->b:[Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->a:Ljava/lang/String;

    return-object v0
.end method