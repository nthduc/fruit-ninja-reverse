.class public final enum Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;
.super Ljava/lang/Enum;
.source "OptionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

.field public static final enum PICKER:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

.field public static final enum PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;


# instance fields
.field private final optionInputType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 72
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    const/4 v1, 0x0

    const-string v2, "PILL"

    const-string v3, "pill"

    invoke-direct {v0, v2, v1, v3}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    .line 73
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    const/4 v2, 0x1

    const-string v3, "PICKER"

    const-string v4, "picker"

    invoke-direct {v0, v3, v2, v4}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PICKER:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    aput-object v3, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PICKER:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->optionInputType:Ljava/lang/String;

    return-void
.end method

.method public static getType(Ljava/lang/String;I)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;
    .registers 3

    const-string v0, "pill"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    sget-object p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    return-object p0

    :cond_b
    const-string v0, "picker"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 94
    sget-object p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PICKER:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    return-object p0

    :cond_16
    const/4 p0, 0x5

    if-gt p1, p0, :cond_1c

    .line 98
    sget-object p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PILL:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    return-object p0

    .line 101
    :cond_1c
    sget-object p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->PICKER:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;
    .registers 2

    .line 71
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;
    .registers 1

    .line 71
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->optionInputType:Ljava/lang/String;

    return-object v0
.end method
