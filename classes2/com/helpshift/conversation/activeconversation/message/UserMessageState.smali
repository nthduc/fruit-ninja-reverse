.class public final enum Lcom/helpshift/conversation/activeconversation/message/UserMessageState;
.super Ljava/lang/Enum;
.source "UserMessageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/UserMessageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

.field public static final enum SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

.field public static final enum SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

.field public static final enum UNSENT_NOT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

.field public static final enum UNSENT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    const/4 v1, 0x0

    const-string v2, "UNSENT_RETRYABLE"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->UNSENT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    .line 12
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    const/4 v2, 0x1

    const-string v3, "UNSENT_NOT_RETRYABLE"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->UNSENT_NOT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    .line 16
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    const/4 v3, 0x2

    const-string v4, "SENDING"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    .line 20
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    const/4 v4, 0x3

    const-string v5, "SENT"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->UNSENT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->UNSENT_NOT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserMessageState;
    .registers 2

    .line 3
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/UserMessageState;
    .registers 1

    .line 3
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    return-object v0
.end method
