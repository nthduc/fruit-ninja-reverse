.class public final enum Lcom/helpshift/conversation/activeconversation/model/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/model/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/model/ActionType;

.field public static final enum CALL:Lcom/helpshift/conversation/activeconversation/model/ActionType;

.field public static final enum LINK:Lcom/helpshift/conversation/activeconversation/model/ActionType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;

    const/4 v1, 0x0

    const-string v2, "CALL"

    const-string v3, "call"

    invoke-direct {v0, v2, v1, v3}, Lcom/helpshift/conversation/activeconversation/model/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;->CALL:Lcom/helpshift/conversation/activeconversation/model/ActionType;

    .line 8
    new-instance v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;

    const/4 v2, 0x1

    const-string v3, "LINK"

    const-string v4, "link"

    invoke-direct {v0, v3, v2, v4}, Lcom/helpshift/conversation/activeconversation/model/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;->LINK:Lcom/helpshift/conversation/activeconversation/model/ActionType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/model/ActionType;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/model/ActionType;->CALL:Lcom/helpshift/conversation/activeconversation/model/ActionType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/model/ActionType;->LINK:Lcom/helpshift/conversation/activeconversation/model/ActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;->$VALUES:[Lcom/helpshift/conversation/activeconversation/model/ActionType;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/model/ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/ActionType;
    .registers 6

    .line 17
    invoke-static {}, Lcom/helpshift/conversation/activeconversation/model/ActionType;->values()[Lcom/helpshift/conversation/activeconversation/model/ActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 18
    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/model/ActionType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/ActionType;
    .registers 2

    .line 6
    const-class v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/model/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/model/ActionType;
    .registers 1

    .line 6
    sget-object v0, Lcom/helpshift/conversation/activeconversation/model/ActionType;->$VALUES:[Lcom/helpshift/conversation/activeconversation/model/ActionType;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/model/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/model/ActionType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
