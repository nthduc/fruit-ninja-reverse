.class public final enum Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;
.super Ljava/lang/Enum;
.source "ConversationSetupDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/domainmodel/ConversationSetupDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationSetupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

.field public static final enum COMPLETED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

.field public static final enum FAILED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

.field public static final enum IN_PROGRESS:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

.field public static final enum NOT_STARTED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 140
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->NOT_STARTED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    .line 141
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    const/4 v2, 0x1

    const-string v3, "IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->IN_PROGRESS:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    .line 142
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    const/4 v3, 0x2

    const-string v4, "COMPLETED"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->COMPLETED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    .line 143
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->FAILED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    const/4 v0, 0x4

    .line 139
    new-array v0, v0, [Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    sget-object v5, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->NOT_STARTED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->IN_PROGRESS:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->COMPLETED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->FAILED:Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->$VALUES:[Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;
    .registers 2

    .line 139
    const-class v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;
    .registers 1

    .line 139
    sget-object v0, Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->$VALUES:[Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/domainmodel/ConversationSetupDM$ConversationSetupState;

    return-object v0
.end method
