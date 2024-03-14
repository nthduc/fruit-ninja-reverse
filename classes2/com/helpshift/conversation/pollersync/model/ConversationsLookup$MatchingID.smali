.class public final enum Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;
.super Ljava/lang/Enum;
.source "ConversationsLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/pollersync/model/ConversationsLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchingID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

.field public static final enum PREISSUE_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

.field public static final enum PREISSUE_REQUEST_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

.field public static final enum SERVER_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 95
    new-instance v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    const/4 v1, 0x0

    const-string v2, "SERVER_ID"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->SERVER_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    .line 96
    new-instance v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    const/4 v2, 0x1

    const-string v3, "PREISSUE_ID"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->PREISSUE_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    .line 97
    new-instance v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    const/4 v3, 0x2

    const-string v4, "PREISSUE_REQUEST_ID"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->PREISSUE_REQUEST_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    const/4 v0, 0x3

    .line 94
    new-array v0, v0, [Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    sget-object v4, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->SERVER_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    aput-object v4, v0, v1

    sget-object v1, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->PREISSUE_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->PREISSUE_REQUEST_ID:Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->$VALUES:[Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;
    .registers 2

    .line 94
    const-class v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;
    .registers 1

    .line 94
    sget-object v0, Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->$VALUES:[Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/pollersync/model/ConversationsLookup$MatchingID;

    return-object v0
.end method
