.class public final enum Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

.field public static final enum CLICK:Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

.field public static final enum INVITATION_ACCEPTED:Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;


# instance fields
.field interactionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    const-string v3, "click"

    invoke-direct {v0, v2, v1, v3}, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->CLICK:Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    const/4 v2, 0x1

    const-string v3, "INVITATION_ACCEPTED"

    const-string v4, "invitationAccept"

    invoke-direct {v0, v3, v2, v4}, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->INVITATION_ACCEPTED:Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    sget-object v3, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->CLICK:Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->INVITATION_ACCEPTED:Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

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

    iput-object p3, p0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->interactionType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;
    .registers 2

    const-class v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;->interactionType:Ljava/lang/String;

    return-object v0
.end method
