.class public final enum Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;
.super Ljava/lang/Enum;
.source "AutoRetryFailedEventDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/AutoRetryFailedEventDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum ANALYTICS:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum CLEAR_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum CONFIG:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum CONVERSATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum FAQ:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum MIGRATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum PUSH_TOKEN:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

.field public static final enum SYNC_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 213
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v1, 0x0

    const-string v2, "MIGRATION"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->MIGRATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 214
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v2, 0x1

    const-string v3, "SYNC_USER"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->SYNC_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 215
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v3, 0x2

    const-string v4, "PUSH_TOKEN"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->PUSH_TOKEN:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 216
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v4, 0x3

    const-string v5, "CLEAR_USER"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CLEAR_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 217
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v5, 0x4

    const-string v6, "CONVERSATION"

    invoke-direct {v0, v6, v5}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CONVERSATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 218
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v6, 0x5

    const-string v7, "FAQ"

    invoke-direct {v0, v7, v6}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->FAQ:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 219
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v7, 0x6

    const-string v8, "ANALYTICS"

    invoke-direct {v0, v8, v7}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->ANALYTICS:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 220
    new-instance v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/4 v8, 0x7

    const-string v9, "CONFIG"

    invoke-direct {v0, v9, v8}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CONFIG:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    const/16 v0, 0x8

    .line 212
    new-array v0, v0, [Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    sget-object v9, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->MIGRATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->SYNC_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->PUSH_TOKEN:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CLEAR_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CONVERSATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->FAQ:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->ANALYTICS:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CONFIG:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->$VALUES:[Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;
    .registers 2

    .line 212
    const-class v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;
    .registers 1

    .line 212
    sget-object v0, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->$VALUES:[Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    invoke-virtual {v0}, [Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    return-object v0
.end method
