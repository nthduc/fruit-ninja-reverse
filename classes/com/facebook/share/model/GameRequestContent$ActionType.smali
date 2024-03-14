.class public final enum Lcom/facebook/share/model/GameRequestContent$ActionType;
.super Ljava/lang/Enum;
.source "GameRequestContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/GameRequestContent$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/GameRequestContent$ActionType;

.field public static final enum ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field public static final enum SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field public static final enum TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 31
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    const/4 v1, 0x0

    const-string v2, "SEND"

    invoke-direct {v0, v2, v1}, Lcom/facebook/share/model/GameRequestContent$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 32
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    const/4 v2, 0x1

    const-string v3, "ASKFOR"

    invoke-direct {v0, v3, v2}, Lcom/facebook/share/model/GameRequestContent$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 33
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    const/4 v3, 0x2

    const-string v4, "TURN"

    invoke-direct {v0, v4, v3}, Lcom/facebook/share/model/GameRequestContent$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/facebook/share/model/GameRequestContent$ActionType;

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$ActionType;->TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 2

    .line 30
    const-class v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 1

    .line 30
    sget-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-virtual {v0}, [Lcom/facebook/share/model/GameRequestContent$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object v0
.end method
