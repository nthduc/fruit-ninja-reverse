.class public final enum Lcom/helpshift/conversation/states/ConversationCSATState;
.super Ljava/lang/Enum;
.source "ConversationCSATState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/states/ConversationCSATState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/states/ConversationCSATState;

.field public static final enum EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

.field public static final enum NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

.field public static final enum SUBMITTED_NOT_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

.field public static final enum SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 5
    new-instance v0, Lcom/helpshift/conversation/states/ConversationCSATState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/helpshift/conversation/states/ConversationCSATState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 7
    new-instance v0, Lcom/helpshift/conversation/states/ConversationCSATState;

    const/4 v2, 0x1

    const-string v3, "SUBMITTED_NOT_SYNCED"

    invoke-direct {v0, v3, v2, v2}, Lcom/helpshift/conversation/states/ConversationCSATState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_NOT_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 9
    new-instance v0, Lcom/helpshift/conversation/states/ConversationCSATState;

    const/4 v3, 0x2

    const-string v4, "SUBMITTED_SYNCED"

    invoke-direct {v0, v4, v3, v3}, Lcom/helpshift/conversation/states/ConversationCSATState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 11
    new-instance v0, Lcom/helpshift/conversation/states/ConversationCSATState;

    const/4 v4, 0x3

    const-string v5, "EXPIRED"

    invoke-direct {v0, v5, v4, v4}, Lcom/helpshift/conversation/states/ConversationCSATState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v5, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_NOT_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->$VALUES:[Lcom/helpshift/conversation/states/ConversationCSATState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/helpshift/conversation/states/ConversationCSATState;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/helpshift/conversation/states/ConversationCSATState;
    .registers 6

    .line 22
    invoke-static {}, Lcom/helpshift/conversation/states/ConversationCSATState;->values()[Lcom/helpshift/conversation/states/ConversationCSATState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 23
    iget v4, v3, Lcom/helpshift/conversation/states/ConversationCSATState;->value:I

    if-ne v4, p0, :cond_f

    goto :goto_13

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_17

    .line 29
    sget-object v3, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    :cond_17
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/states/ConversationCSATState;
    .registers 2

    .line 3
    const-class v0, Lcom/helpshift/conversation/states/ConversationCSATState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/states/ConversationCSATState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/states/ConversationCSATState;
    .registers 1

    .line 3
    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->$VALUES:[Lcom/helpshift/conversation/states/ConversationCSATState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/states/ConversationCSATState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/states/ConversationCSATState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/helpshift/conversation/states/ConversationCSATState;->value:I

    return v0
.end method
